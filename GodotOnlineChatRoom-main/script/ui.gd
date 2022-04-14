extends Control

onready var anim_sohbet = get_parent().get_node("ui_sohbetler/anim_sohbet")
onready var anim_aramalar = get_parent().get_node("ui_aramalar/anim_aramalar")
onready var anim_durum = get_parent().get_node("ui_durum/anim_durum")
var last_scene = "sohbetler"


#func _on_sohbetler_mouse_entered():
##
#	print("sohbetler")
#	$text_ui/sohbetler.add_color_override("font_color", Color(0,0.66,0.52))
#	$text_ui/durum.add_color_override("font_color", Color(0.52,0.59,0.63))
#	$text_ui/aramalar.add_color_override("font_color", Color(0.52,0.59,0.63))
#	$dedected.rect_position.x = 109
#	$dedected.rect_size.x = 215
#	if !last_scene == "sohbetler":
#		print("animasyon ile sohbete geçiyor")
#		anim_sohbet.play("New Anim (copy)")
#		last_scene = "sohbetler"
#
#
#
#func _on_durum_mouse_entered():
#	print("durumdayım şuan",last_scene)
#	print("durum")
#	$text_ui/durum.add_color_override("font_color", Color(0,0.66,0.52))
#	$text_ui/sohbetler.add_color_override("font_color", Color(0.52,0.59,0.63))
#	$text_ui/aramalar.add_color_override("font_color", Color(0.52,0.59,0.63))
#	$dedected.rect_position.x = 324
#	$dedected.rect_size.x = 138
#	if !last_scene =="durum":
#		if last_scene == "sohbetler":
#			print("animasyon ile duruma geçiyor")
#			anim_durum.play("New Anim") 
#			last_scene = "durum"
#		if last_scene == "aramalar":
#			anim_durum.play("New Anim (copy)")
#			last_scene = "durum"
#
#
#func _on_aramalar_mouse_entered():
#	$text_ui/aramalar.add_color_override("font_color", Color(0,0.66,0.52))
#	$text_ui/sohbetler.add_color_override("font_color", Color(0.52,0.59,0.63))
#	$text_ui/durum.add_color_override("font_color", Color(0.52,0.59,0.63))
#	print("aramlar")
#	$dedected.rect_position.x = 468
#	$dedected.rect_size.x = 190
#	if !last_scene =="aramalar":
#		print("animasyon ile saramalara  geçiyor")
#		anim_aramalar.play("New Anim")
#		last_scene = "aramalar"
#
#
#
#
#func _on_Label_mouse_entered():
#	print("okey")
