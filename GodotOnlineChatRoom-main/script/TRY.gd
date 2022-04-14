extends Node2D


func _ready() -> void:
	get_tree().connect("connection_failed", self, "connected_fail")


func _on_btnHost_pressed() -> void:
	Network.create_server()
	#put our username and ID in the dictionary
	Network.user_list[str(get_tree().get_network_unique_id())] = Network.user_name

func _on_btnJoin_pressed() -> void:
	#Create a  client that will connect to the server
	var client : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
	client.create_client("127.0.0.1",9999)
	get_tree().set_network_peer(client)



func _on_giris_pressed():
	Network.create_server()
	#put our username and ID in the dictionary
	Network.user_list[str(get_tree().get_network_unique_id())] = Network.user_name

func _on_cikis_pressed():
	#Create a  client that will connect to the server
	var client : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
	client.create_client("127.0.0.1",9999)
	get_tree().set_network_peer(client)
