<?php

namespace Modules\StartUps\Interfaces;

use Illuminate\Http\Request;

interface StartupDetailsInterface
{
    public function tableHeader();

    public function membersTableHeader();

    public function updateHighlights($request, $id);

    public function updateProblem($request, $id);

    public function updateSolution($request, $id);

    public function updateHowItWorks($request, $id);

    public function updateTraction($request, $id);


    public function addImpact($request, $id);

    public function deleteImpact($startup_id, $impact_id);


    public function addPartnership($request, $id);
   
    public function deletePartnership($startup_id, $id);


    public function addTeamMember($request, $id);

    public function deleteTeamMember($startup_id, $id);
    

    public function addAdvisor($request, $id);

    public function deleteAdvisor($startup_id, $id);
}
