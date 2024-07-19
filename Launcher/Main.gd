extends Control
var Download

# Called when the node enters the scene tree for the first time.
func _ready():
	
#	print("Staring LSE")
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Refreshing Repository"
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 10
#	await get_tree().create_timer(0.5).timeout
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Updating Local (e)cache"
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 25
#	await get_tree().create_timer(1).timeout
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 38
#	await get_tree().create_timer(0.3).timeout
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Fetching Blocks"
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 56
#	await get_tree().create_timer(0.5).timeout	
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Logging In User"
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 57
#	await get_tree().create_timer(0.2).timeout
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Restricting File Access"
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 78
#	await get_tree().create_timer(0.2).timeout
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Refreshing Repository"
#	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 84
	await get_tree().create_timer(1).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Update Complete!"
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 100

	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func DownloadContainer(Game):
	$Panel/VBoxContainer/Panel2/VBoxContainer/Control.remove_all()
	print("Download trigger")

	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Downloading Install Script..."
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 10
	await get_tree().create_timer(0.1).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 46
	await get_tree().create_timer(0.1).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 87
	await get_tree().create_timer(0.1).timeout
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar.value = 100
	$Panel/VBoxContainer/Panel/HBoxContainer/ProgressBar/ProgressLog.text = "Executing : res://downloads/container/" + str(Game) + ".lco > install.Dscript"
	await get_tree().create_timer(0.1).timeout
	$Panel/VBoxContainer/Panel2.visible = true
	AddDownloaditem(Game, Color.CADET_BLUE)
	pass
	
func AddDownloaditem(DownloadName,ItemColor):
	var DownloadItem
	DownloadItem = $Panel/VBoxContainer/Panel2/VBoxContainer/Control.add_plot_item(DownloadName, ItemColor, 2.5)
	var Downloadpercent = 1
	var DownloadSpeed = 6
	DownloadItem.add_point(Vector2(Downloadpercent,DownloadSpeed))
	DownloadSpeed = 3
	Downloadpercent += 5.1
	DownloadItem.add_point(Vector2(Downloadpercent,DownloadSpeed))
	print("Added download item")


func _on_pop_up_confirmed():
	DownloadContainer("BattleLux")
	pass # Replace with function body.
