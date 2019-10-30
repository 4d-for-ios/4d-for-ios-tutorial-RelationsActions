//%attributes = {}
C_OBJECT:C1216($0)
C_OBJECT:C1216($1)

C_OBJECT:C1216($dataClass;$entity;$in;$out;$status;$selection)

$in:=$1
$out:=New object:C1471

$selection:=ds:C1482[$in.dataClass].query("ID = :1";String:C10($in.ID))

If ($selection.length=1)
	
	$entity:=$selection[0]
	
	$completion:=$entity.Completion
	$time:=$entity.Time
	$entity.Completion:=$completion+$in.addCompletion
	$entity.Time:=$time+$in.addTime
	
	
	$entity.save()  //save the entity
	
	$out.success:=True:C214  // notify App that action success
	$out.dataSynchro:=True:C214  // notify App to refresh the selection
	$out.statusText:="Time updated"
	$out.close:=True:C214
	
Else 
	
	$out.errors:=New collection:C1472("No Selection")
	
End if 

$0:=$out