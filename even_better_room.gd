extends Spatial

onready var nigga = $nigga

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

#func _process(delta):
#	if nigga != null and nigga.is_queued_for_deletion() == false:
#		print(nigga)
#		nigga.translation.z += 0.01
