extends Sprite

var timer

func _ready():
	timer = Timer.new()
	timer.connect("timeout", self, "tick")
	add_child(timer)
	timer.wait_time = 0.2
	timer.start()
	
func tick():
	if self.frame == 1:
		self.frame = 0
	else:
		self.frame = 1