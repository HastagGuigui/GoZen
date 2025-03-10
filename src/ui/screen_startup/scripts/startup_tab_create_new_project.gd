extends MarginContainer


func _on_return_button_pressed():
	get_parent().current_tab = 0


func _on_create_project_button_pressed():
	if %TitleLineEdit.text == "" or %PathLineEdit.text == "":
		return
	ProjectManager.new_project(
		%TitleLineEdit.text, # title
		%PathLineEdit.text,  # path
		Vector2i(%XSpinBox.value, %YSpinBox.value), # resolution
		%FramerateSpinBox.value) # framerate
	ScreenMain.instance.close_screen()
