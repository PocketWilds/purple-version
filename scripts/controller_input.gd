extends Node

var confirm_press
var confirm_hold
var cancel_press
var cancel_hold

var start_press

var up_press
var down_press
var left_press
var right_press

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	confirm_press = Input.is_action_just_pressed("ui_accept")
	confirm_hold = Input.is_action_pressed("ui_accept")
	cancel_press = Input.is_action_just_pressed("ui_cancel")
	cancel_hold = Input.is_action_pressed("ui_cancel")
	start_press = Input.is_action_just_pressed("ui_select")
	up_press = Input.is_action_just_pressed("ui_up")
	down_press = Input.is_action_just_pressed("ui_down")
	left_press = Input.is_action_just_pressed("ui_left")
	right_press = Input.is_action_just_pressed("ui_right")
	pass
