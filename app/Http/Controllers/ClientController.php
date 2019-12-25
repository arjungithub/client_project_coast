<?php

namespace App\Http\Controllers;

use App\Client;
use Illuminate\Http\Request;

class ClientController extends Controller
{
    /**
     * API intial function
     */
    public function index(){
        // $clients = Client::with('Projects.Projectcost.Cost_type')->get();
        $clients = Client::with('Breakdown.Breakdown.Cost_type')->get(); // fetch all required data from the database
        $result = $this->parseClients($clients);
        return json_encode($result, true);
    }

    /**
     * Description : Looping through Every project and calculate the amount &
     *  function for parsing the client object and it will convert the result in prper format
     * Params: Client  object
     */
    public function parseClients($clients){
        foreach ($clients as $key => $client) { // looping through the clients object
            $result = $this->parseProjects($client->breakdown); // passing the project object the parse Project function
            $clients[$key]->amount = $result['amount'];
            $clients[$key]->breakdown = $result['projects'];
        }
        return $clients;
    }

    /**
     * Description : Looping through Every costs and calculate the amount &
     *  function for parsing the project object and it will convert the result in prper format
     * Params: Project object
     */
    public function parseProjects($projects){
        $amount = 0;
        foreach ($projects as $key => $project) {
            $result = $this->costs($project->breakdown);

            $projects[$key]['amount'] =$result['amount'];
            unset($projects[$key]->breakdown);
            $projects[$key]->breakdown = $result['costs'];
            $amount += $result['amount'];
        }
        return array(
            'projects' => $projects,
            'amount' => $amount
        );
    }

    /**
     * Description : Looping through Every cost line items and calculate the amount &
     *  function for parsing the costs object and it will convert the result in prper format
     * Params: Costs object
     */
    public function costs($costs){
        $amount = 0;

        foreach ($costs as $key => $cost) {
            $costs[$key]->name = $cost->cost_type->name;
            $costs[$key]->parent_id = $cost->cost_type->parent_id;
            $cost_array[$cost->cost_type->id] = $costs[$key];
            if($costs[$key]->parent_id == null){
                $amount += $cost->amount;
            }
        }
        unset($costs);
        $result_array = $this->makeNestedCosts($cost_array);

        return array(
            'amount' => $amount,
            'costs' => $result_array
        );
    }

    /**
     * Description : function will generated the nested  array
     * Params: costs and cost_type object
     */
    public function makeNestedCosts($costs) {
        $result = array();

        foreach ( $costs as &$s ) {
            if ( is_null($s->cost_type->parent_id) ) {
                // If no parent_id so we put it in the root of the array
                $result[] = &$s;
            }
            else {
                $pid = $s->cost_type->parent_id;
                if ( isset($costs[$pid]) ) {
                    // If the parent ID exists in the costs array
                    // we add it to the 'children' array of the parent after initializing it.

                    if ( !isset($costs[$pid]->breakdown) ) {
                        $costs[$pid]->breakdown = array();
                    }

                    $temp = $costs[$pid]->breakdown;
                    $temp[] =  &$s;
                    $costs[$pid]->breakdown = $temp;
                }
            }
        }
        return $result;
    }
}
