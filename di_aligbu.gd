extends Node2D
@export var szoveg : String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CanvasLayer/Panel/Label.text = szoveg




func _on_area_2d_body_entered(body: Node2D) -> void:
	$CanvasLayer/Panel.visible = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	$CanvasLayer/Panel.visible = false
