extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Staring LSE")
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Refreshing Repository"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 10
	await get_tree().create_timer(0.5).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Updating Local (e)cache"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 25
	await get_tree().create_timer(1).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Downloading Stream Data"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 38
	await get_tree().create_timer(0.3).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Fetching Blocks"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 56
	await get_tree().create_timer(0.5).timeout	
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Logging In User"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 57
	await get_tree().create_timer(0.2).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Restricting File Access"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 78
	await get_tree().create_timer(0.2).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Refreshing Repository"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 84
	await get_tree().create_timer(1).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Update Complete!"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 100

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
