//%attributes = {}
C_OBJECT:C1216($0)
C_OBJECT:C1216($1)

C_OBJECT:C1216($dataClass;$entity;$in;$out;$status;$selection)

$in:=$1
$out:=New object:C1471

$selection:=ds:C1482[$in.dataClass].query("ID = :1";String:C10($in.ID))

If ($selection.length=1)
	
	$entity:=$selection[0]
	
	For each ($key;$in.parameters)
		
		$entity[$key]:=$in.parameters[$key]
		
	End for each 
	
	$status:=$entity.save()
	
	If ($status.success)
		
		$out.success:=True:C214  // notify App that action success
		$out.dataSynchro:=True:C214  // notify App to refresh this entity
		$out.statusText:="Task edited"
		
	Else 
		
		$out:=$status  // return status to the App
		
	End if 
	
Else 
	
	$out.success:=False:C215  // notify App that action failed
	
End if 

$0:=$out
