extends Node

onready var controller_input = get_node("ControllerInput")
onready var panel_message = get_node("PanelMessage")
onready var menu_actions

onready var trainer_0
onready var trainer_1
onready var trainer_2
onready var trainer_3

func _ready():
	panel_message._initialize(controller_input)
	pass

func _physics_process(delta):

	pass
