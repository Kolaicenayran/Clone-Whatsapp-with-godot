extends Node

signal update_user_list

var user_name : String = "Default"
var user_color : String = "red"
var channel_profile



var user_list : Dictionary

func _ready() -> void:
	get_tree().connect("connected_to_server",self,"connected")
	get_tree().connect("server_disconnected",self,"server_disconnected")

#If we successful connect to the server, go into the chatroom
func connected():
	print("connected to server")
	var compile_data : Array = [str(get_tree().get_network_unique_id()),user_name]
	rpc_unreliable_id(1,"update_user",compile_data)
	enter_chat_room()
	
#Only run on the server
remote func update_user(user):
	user_list[str(user[0])] = user[1]
	emit_signal("update_user_list")
	rpc_unreliable("client_update",user_list)
	pass
	
remote func client_update(update_user_list):
	user_list = update_user_list
	emit_signal("update_user_list")

func create_server():
	var server : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
	server.create_server(9999,32)
	get_tree().set_network_peer(server)
	enter_chat_room()
	
func enter_chat_room():
	if channel_profile == 1:
		get_tree().change_scene("res://users_example/Elizabeth.tscn")
	if channel_profile == 2:
		get_tree().change_scene("res://users_example/jhonson Daniel.tscn")
	if channel_profile == 3:
		get_tree().change_scene("res://users_example/Rose.tscn")
	if channel_profile == 4:
		get_tree().change_scene("res://users_example/messga channels.tscn")
	if channel_profile == 5:
		get_tree().change_scene("res://users_example/Myke.tscn")
	if channel_profile == 6:
		get_tree().change_scene("res://users_example/Elizabeth.tscn")
	if channel_profile == 7:
		get_tree().change_scene("res://users_example/jhonson Daniel.tscn")
	if channel_profile == 8:
		get_tree().change_scene("res://users_example/Elizabeth.tscn")
	if channel_profile == 9:
		get_tree().change_scene("res://users_example/messga channels.tscn")
	if channel_profile == 10:
		get_tree().change_scene("res://users_example/Elizabeth.tscn")
	if channel_profile == 11:
		get_tree().change_scene("res://users_example/Elizabeth.tscn")


