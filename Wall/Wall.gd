extends StaticBody2D

var decay = .01

func _ready():
	pass

func _physics_process(_delta):
	if $Highlight.modulate.a > 0:
		$Highlight.modulate.a -= decay

func hit(_ball):
	$Highlight.modulate.a = 1.0
	var camera = get_node_or_null("/root/Game/Camera")
	if camera != null:
		camera.add_trauma(3.0)
	pass
	var wall_sound = get_node_or_null("/root/Game/Wall_Sound")
	if wall_sound != null:
		wall_sound.play()
