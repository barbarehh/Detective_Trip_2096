extends Node


#var det = get_node("DetectiveTrip")
var action = false
func _on_quiz_1_pressed() -> void:
	DialogueManager.show_dialogue_balloon(load("res://dialogue/qvizi_1.dialogue"))
	action = true
	
func _unhandled_input(event: InputEvent) -> void:
	if action==true:
		#if Input.is_action_just_pressed("leave"):
			get_tree().change_scene_to_file("res://Scenes/trip_home.tscn")
			#position = Vector2(x, y)
		
