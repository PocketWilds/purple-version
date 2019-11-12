extends Panel

var initialized
var timer_debug
var test_message = "this is a test message"

var is_active

var queue_message

onready var message_text = get_node("MessageText") 
var controller_input

func _initialize(controller_input):
	self.controller_input = controller_input
	self.initialized = true

func _ready():
	self.initialized = false
	self.controller_input = null
	self.queue_message = []
	self._deactivate()
	
	
	#_activate()
	#enqueue_message(self.test_message)
	#self.display_message()
	#self.timer_debug = 0
	pass

func _activate():
	self.is_active = true
	self.pause_mode = Node.PAUSE_MODE_INHERIT
	self.visible = true
	pass
	
func _deactivate():
	is_active = false
	self.pause_mode = Node.PAUSE_MODE_STOP
	queue_message = []
	self.visible = false
	pass

# TODO: this ought to be written to edit incoming strings so that they fit inside the box without issues.
func parse_text(to_parse):
	queue_message.append(to_parse)

func update_text(text_new):
	message_text.text = text_new
	
func enqueue_message(to_display):
	if(!is_active):
		_activate()
	parse_text(to_display)

func display_message():
	update_text(queue_message[0])
	pass

func next_message():
	message_text.text = ""
	queue_message.remove(0)

func _physics_process(delta):
	if(is_active):
		if(queue_message.size() > 0):
			display_message()		
			if(controller_input.confirm_press):
				next_message()
		else:
			self._deactivate()