C_OBJECT:C1216($0;$response)
C_OBJECT:C1216($1;$request)

C_OBJECT:C1216($o;$context;$request;$result;$parameters)

$request:=$1  // Informations provided by mobile application

$context:=$request.context
$parameters:=$request.parameters

Case of 
		
	: ($request.action="addProjects")
		
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"parameters";$parameters)
		$result:=addProject ($o)
		
	: ($request.action="editProjects")
		
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"ID";$context.entity.primaryKey;\
			"parameters";$parameters)
		$result:=editProject ($o)
		
	: ($request.action="deleteProjects")
		
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"ID";$context.entity.primaryKey)
		$result:=deleteProject ($o)
		
	: ($request.action="addTime")
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"ID";$context.entity.primaryKey;\
			"parameters";$parameters)
		$result:=addTime ($o)
		
	: ($request.action="addEmployees")
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"parameters";$parameters)
		$result:=addEmployee ($o)
		
	: ($request.action="editEmployees")
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"ID";$context.entity.primaryKey;\
			"parameters";$parameters)
		$result:=editEmployee ($o)
		
	: ($request.action="deleteEmployees")
		$o:=New object:C1471(\
			"dataClass";$context.dataClass;\
			"ID";$context.entity.primaryKey)
		$result:=deleteProject ($o)
		
	Else 
		
		  // Unknown action
		
End case 

$0:=$result
