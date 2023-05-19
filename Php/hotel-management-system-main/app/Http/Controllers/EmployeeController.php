<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;


class EmployeeController extends Controller
{
    public function employee()
    {
        $employees = Employee::all();
        return view('employee.employee', compact('employees'));
    }

    public function registerEmployee()
    {
        return view('employee.employee');
    }

    public function storeEmployee(Request $request)
    {
        $employee = new Employee();
        $employee->employee_name = $request->input('employee_name');
        $employee->employee_bday = $request->input('employee_bday');
        $employee->employee_email = $request->input('employee_email');
        $employee->employee_number = $request->input('employee_number');
        $employee->employee_role = $request->input('employee_role');

        $employee->save();

        return redirect('/admin/employee')->with('success', 'Employee registered successfully!');
    }
    public function editEmployee($id)
    {
        $employee = Employee::findOrFail($id);
        $employees = Employee::all();
        return view('employee.employee', compact('employee', 'employees'));
    }
    public function updateEmployee(Request $request, $id)
    {
        $employee = Employee::findOrFail($id);
        $employee->employee_name = $request->input('employee_name');
        $employee->employee_bday = $request->input('employee_bday');
        $employee->employee_email = $request->input('employee_email');
        $employee->employee_number = $request->input('employee_number');
        $employee->employee_role = $request->input('employee_role');
        $employee->save();

        return redirect('/admin/employee')->with('success', 'Employee account updated successfully!');
    }
    public function removeEmployee($id)
    {
        $employee = Employee::findOrFail($id);
        $employee->delete();

        return redirect('/admin/employee')->with('success', 'Employee account removed successfully!');
    }
}
