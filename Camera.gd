extends Camera

const FOV_SPEED := 0.5
const HEIGHT_SPEED := 0.1

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			# zoom in
			if event.button_index == BUTTON_WHEEL_UP:
				fov -= FOV_SPEED
			# zoom out
			if event.button_index == BUTTON_WHEEL_DOWN:
				fov += FOV_SPEED
			print ("fov: " + str(fov))
			
	if event is InputEventKey:
		if event.is_pressed():
			print (str(event.scancode))
			if event.scancode == KEY_D:
				translation.y -= HEIGHT_SPEED
			
			if event.scancode == KEY_E:
				translation.y += HEIGHT_SPEED
