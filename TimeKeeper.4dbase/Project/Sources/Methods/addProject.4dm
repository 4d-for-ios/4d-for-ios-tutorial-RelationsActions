//%attributes = {}
C_OBJECT:C1216($0)
C_OBJECT:C1216($1)

C_OBJECT:C1216($entity;$in;$out)

$in:=$1
$out:=New object:C1471("success";False:C215)

If ($in.dataClass#Null:C1517)
	
	$entity:=ds:C1482[$in.dataClass].new()  //Create a reference
	
	For each ($key;$in.parameters)
		
		$entity[$key]:=$in.parameters[$key]
		
	End for each 
	
	$primaryKey:=$in.parent.primaryKey  //Get parent primary key
	
	$inverseRelationName:=$in.entity.relationName  //Get parent relation name
	
	$parent:=ds:C1482[$in.parent.dataClass].get($in.parent.primaryKey)
	
	$entity[$inverseRelationName]:=$parent
	
	$status:=$entity.save()  //save the entity
	
	$status:=$parent.save()  //save the parent
	
	$out.success:=True:C214  // notify App that action success
	
	$out.dataSynchro:=True:C214  // notify App to refresh the selection
	
	$out.statusText:="Task added"
	
	$out.close:=True:C214
	
Else 
	
	$out.errors:=New collection:C1472("No Selection")
	
End if 

$0:=$out