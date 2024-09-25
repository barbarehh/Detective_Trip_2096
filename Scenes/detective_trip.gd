extends CharacterBody2D

@export var MAX_SPEED = 300
@export var ACCELERATION = 1500
@export var FRTICTION = 1200

@onready var axis = Vector2.ZERO
@onready var actionable_finder: Area2D = $Direction/ActionableFinder

@onready var sprite_2d: AnimatedSprite2D = $Sprite2D


func _physics_process(delta):
	move(delta)
	
	var isLeft=velocity.x <0 
	sprite_2d.flip_h=isLeft
	
	
func _unhandled_input(event: InputEvent) -> void:
	
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://dialogue/intro.dialogue"))
	#if Input.is_action_just_pressed("ui_accept"):
	var actionable=actionable_finder.get_overlapping_areas()
	if actionable.size() >0:
		actionable[0].action()
		return
			
			
			
			
		
	
func get_input_axis():
	axis.x=int(Input.is_action_pressed("move_right"))-int(Input.is_action_pressed("move_left"))
	axis.y=int(Input.is_action_pressed("move_down")) -int(Input.is_action_pressed("move_up"))
	
	return axis.normalized()
	
	
func move(delta):
	axis=get_input_axis()
	
	if axis==Vector2.ZERO:
		apply_friction(FRTICTION*delta)
	else:
		apply_movement(axis*ACCELERATION*delta)
	
	move_and_slide()
	
	
func apply_friction(amount):
	if velocity.length()>amount:
		velocity-=velocity.normalized()*amount
	else:
		velocity=Vector2.ZERO
		
		
func apply_movement(accel):
	velocity+=accel
	velocity=velocity.limit_length(MAX_SPEED)
	

		
		
		
		
