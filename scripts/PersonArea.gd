extends Area2D

func _ready():
	pass

func _on_PersonArea_body_entered(body):
	if body.get_name() == "Player":
		get_node("Message1").popup()
		get_node("Message1/CanvasLayer/DiagBox").show()
		get_node("Message1/CanvasLayer/DiagBox/Timer").start()


func _on_PersonArea_body_exited(body):
	if body.get_name() == "Player":
		get_node("Message1").hide()
		get_node("Message1/CanvasLayer/DiagBox").hide()
