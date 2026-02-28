extends Node2D



func _ready() -> void:
	_setup_level()
	
	
	
func _process(delta: float) -> void:
	pass

func _setup_level() -> void:
	
		

	var enemies = $LevelRoot.get_node_or_null("enemies")
	if enemies:
		for enemy in enemies.get_children():
			enemy.player_died.connect(_on_player_died)

		


func _on_player_died(body):
	body.die()
	print("player killed")
	
	
