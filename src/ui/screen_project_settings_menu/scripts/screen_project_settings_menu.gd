extends Control


func _ready():
	set_current_values()


func _input(event: InputEvent):
	if event.is_action_pressed("ui_cancel"):
		_on_close_button_pressed()


func _on_close_button_pressed():
	ScreenMain.instance.close_screen()


func set_current_values() -> void:
	# General settings
	%ProjectTitleLineEdit.text = ProjectManager.get_title()
	
	# Quality settings
	var resolution := ProjectManager.get_resolution()
	%ResolutionXSpinBox.value = resolution.x
	%ResolutionYSpinBox.value = resolution.y
	%FramerateSpinBox.value = ProjectManager.get_framerate()


###############################################################
#region GENERAL SETTING SETTERS  ############################## 
###############################################################

func _on_project_title_line_edit_text_submitted(new_title):
	ProjectManager.set_title(new_title)

#endregion
###############################################################
#region QUALITY SETTING SETTERS  ############################## 
###############################################################

func _on_framerate_spin_box_value_changed(new_value):
	ProjectManager.set_framerate(new_value)


func _on_resolution_x_spin_box_value_changed(new_value):
	var resolution := ProjectManager.get_resolution()
	resolution.x = new_value
	ProjectManager.set_resolution(resolution)


func _on_resolution_y_spin_box_value_changed(new_value):
	var resolution := ProjectManager.get_resolution()
	resolution.y = new_value
	ProjectManager.set_resolution(resolution)


#endregion
###############################################################
