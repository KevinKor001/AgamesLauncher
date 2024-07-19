extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	$".".text = "Verify"
	$"../../../../../../../../../../PopUp".popup()
	pass # Replace with function body.




func _on_pop_up_confirmed():
	$".".text = "Downloading"
	$".".disabled = true
	pass # Replace with function body.
