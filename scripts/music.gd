extends Node
var musicplayer: AudioStreamPlayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	musicplayer = AudioStreamPlayer.new()
	add_child(musicplayer)
	var music = load("res://assets/Five Nights at Freddy's_ Sister Location OST - MVP (Purple GuyEnnard Minigame Theme).mp3")
	musicplayer.stream=music
	musicplayer.autoplay= true
	musicplayer.play()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
