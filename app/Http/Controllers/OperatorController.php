<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Operator;
use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

class OperatorController extends Controller {
    public function index(Request $request) {
		$orderBy = 'id';
    	if ($request->has('orderBy')) {
    		$orderBy = $request->input('orderBy');
    	}

    	$searchKey = '';
    	if ($request->has('searchKey')) {
    		$searchKey = $request->input('searchKey');
    	}

    	$data = Operator::orderBy($orderBy, 'asc');

    	if ($request->has('searchKey')) {
	    	$data = $data->where('name', 'like', '%'.$searchKey.'%')
	    		->orWhere('phone', 'like', '%'.$searchKey.'%')
	    		->orWhere('address', 'like', '%'.$searchKey.'%');
    	}

        return $data->paginate(10)->toJson();
    }

    public function show($operator) {
        return Operator::findOrFail($operator)->toJson();
    }

    public function update($operator, Request $request) {
    	$data['status'] = false;
    	$updated = Operator::findOrFail($operator)->update($request->all());
    	if ($updated) {
    		$data['status'] = true;
    	}
    	return response()->json($data);
    }

    public function destroy($operator) {
		$data['status'] = false;
    	$deleted = Operator::findOrFail($operator)->delete();
    	if ($deleted) {
    		$data['status'] = true;
    	}
    	return response()->json($data);
    }

    public function create(Request $request) {
    	$data['status'] = false;
    	$createdId = Operator::insertGetId($request->all());
    	if (is_integer($createdId)) {
    		$data['status'] = true;
    		$data['operator'] = Operator::findOrFail($createdId)->toArray();
    	}
    	return response()->json($data);
    }
}
