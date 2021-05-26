extends Spatial

onready var animation = $AnimationPlayer

var is_attacking = true

#func _ready():
#	rotate_y(1)

func _physics_process(delta):
	if is_attacking:
		translate(Vector3(0.3,0,0))
		animation.play("gangstawalk")

func take_hit():
	queue_free()

func attack():
	is_attacking = true

func start(xform):
	scale.x = 0.15
	scale.y = 0.15
	scale.z = 0.15
	transform = xform
