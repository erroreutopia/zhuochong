extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().root.borderless=true
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	animation_player.play("idle")
	if event is InputEventMouseMotion:
		if event.button_mask ==MOUSE_BUTTON_MASK_LEFT:
			get_tree().root.position = DisplayServer.mouse_get_position()
	
func _process(_delta): 
	if Input.is_action_pressed("but"): 
		get_tree().quit() 
	if Input.is_action_pressed("gui"):
		animation_player.play("hi")
	if Input.is_action_pressed("jump"):
		animation_player.play("jump")
	if Input.is_action_pressed("running"):
		animation_player.play("running")

	
