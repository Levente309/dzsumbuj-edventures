extends Node2D

@onready var player = $player  # Vagy a pontos út, pl. $World/Player ha a Player nem közvetlen gyerek

@onready var start_button = $"main menu/button manager/Start" # A gomb a levelen belül, ha van

func _ready():
	# Kapcsoljuk a gombhoz a jelzőt
	start_button.pressed.connect(_on_start_button_pressed)
	# Player induláskor ne mozogjon
	player.can_move = false

func _on_start_button_pressed():
	player.can_move = true
	start_button.queue_free()  # opcionális: eltűnteti a gombot
