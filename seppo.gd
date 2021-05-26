extends Spatial

onready var camera = $pivot/Camera
onready var shotgun_sound = $pivot/Camera/ShotgunSound
onready var raycast = $pivot/Camera/RayCast

var mouse_sensitivity = 0.002

#func _process(delta):
#	rotate_y(delta)

func _physics_process(delta):
	if Input.is_action_just_pressed("shoot"):
		shotgun_sound.play()
		var direct_state = get_world().direct_space_state
		var collision = direct_state.intersect_ray(transform.origin, Vector3(0,0,-200))

		if collision:
			print(collision.position)
		
		if raycast.is_colliding():
			print("Bullet hit")
			var target = raycast.get_collider()

			if target.has_method("take_hit"):
				target.take_hit()

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * mouse_sensitivity)
		$pivot.rotate_x(-event.relative.y * mouse_sensitivity)

