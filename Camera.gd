extends Camera

func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		$ShotgunSound.play()
