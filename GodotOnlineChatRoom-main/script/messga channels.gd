extends Control

onready var history = $vbxChatRoomContainer/HBoxContainer/txtChatHistory
onready var profile_picture = $ui/CanvasLayer/profile_picture
onready var user_name  = $ui/CanvasLayer/username
var scroll_time= true
var corner_radius = 20
onready var dynamic_font = DynamicFont.new()
var chat_ballon_size = 20
onready var style_box = StyleBoxFlat.new()

func _ready() -> void:
	print(Network.channel_profile)
	Network.connect("update_user_list",self,"update_user_list")
	get_tree().connect("network_peer_disconnected",self,"user_left")

func _process(delta):
	if scroll_time ==true:
		$message_list/ScrollContainer.scroll_vertical +=100
	if(Input.is_action_just_pressed("enter")):
		if !$text_create/CanvasLayer/TextEdit.text == "":
			rpc_unreliable("send_chat",create_message())
			local_create()

remote func send_chat(txt):
	var message = preload("res://scene/send_messge.tscn").instance()
	message.get_node("Label").text = txt
	var length = txt.length()
	message.rect_min_size.x = length * chat_ballon_size +60
	$message_list/ScrollContainer/VBoxContainer.add_child(message)
	if message.is_inside_tree():
		print("evert sahnede")
		$message_list/ScrollContainer.scroll_vertical +=300
	$text_create/CanvasLayer/TextEdit.text = ""
	print("scrooltim ",scroll_time)
	print("vertic",$message_list/ScrollContainer.scroll_vertical)
	$Save.save()



func create_message():
	return $text_create/CanvasLayer/TextEdit.text

func local_create():
	scroll_time = true
	var message = preload("res://scene/message.tscn").instance()
	message.get_node("Label").text = " " + $text_create/CanvasLayer/TextEdit.text
	var length = $text_create/CanvasLayer/TextEdit.text.length()
	message.rect_min_size.x = length * chat_ballon_size +60
	$message_list/ScrollContainer/VBoxContainer.add_child(message)
	if message.is_inside_tree():
		$message_list/ScrollContainer.scroll_vertical +=300
	$text_create/CanvasLayer/TextEdit.text = ""
	$Save.save()


func _on_ScrollContainer_scroll_started():
	print("ok")
	scroll_time = false

func _on_TouchScreenButton_pressed():
	scroll_time = false
	print("bastın" )

func _on_goback_pressed():
	get_tree().change_scene("res://scene/main.tscn")






