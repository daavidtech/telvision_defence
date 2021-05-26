extends Spatial

var Nigga = preload("res://nigga2.tscn")
onready var spawn_timer = get_node("spawn_timer")

onready var spawn = $spawn_point
onready var spawn2 = $spawn_point2

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$SpawnTimer.start()

func _on_SpawnTimer_timeout():
	print("spawn nigga")
	var new_nigga = Nigga.instance()
	new_nigga.start(spawn.global_transform)
	new_nigga.attack()
	add_child(new_nigga)
	
	var new_nigga2 = Nigga.instance()
	new_nigga.start(spawn2.global_transform)
	new_nigga.attack()
	add_child(new_nigga2)
	
	

