#DialogBox.gd
extends RichTextLabel

var dialog = ["8:00 A.M., Saturday\n\n(The doors have unlocked...time to head in!)"]
var page = 0




func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event):
	if Input.is_key_pressed(KEY_ENTER):
		#if page
		if get_visible_characters() > get_total_character_count():
				if page < dialog.size()-1:
					page += 1
					set_bbcode(dialog[page])
					set_visible_characters(0)
				else:
					pass
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)


func _on_Timer2_timeout():
	pass # replace with function body
