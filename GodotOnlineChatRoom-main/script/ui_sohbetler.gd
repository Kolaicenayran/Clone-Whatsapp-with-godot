extends Control




func connectt():
	var client : NetworkedMultiplayerENet = NetworkedMultiplayerENet.new()
	client.create_client("127.0.0.1",9999)
	get_tree().set_network_peer(client)
	print("sohbete gidiyorsun")
	Network.create_server()
	#put our username and ID in the dictionary
	Network.user_list[str(get_tree().get_network_unique_id())] = Network.user_name


func _on_chatboton1_pressed():
	Network.channel_profile = 1
	connectt()

func _on_chatboton2_pressed():
	Network.channel_profile = 2
	connectt()


func _on_chatboton3_pressed():
	Network.channel_profile = 3
	connectt()


func _on_chatboton4_pressed():
	Network.channel_profile = 4
	connectt()


func _on_chatboton5_pressed():
	Network.channel_profile = 5
	connectt()


func _on_chatboton6_pressed():
	Network.channel_profile = 1
	connectt()


func _on_chatboton7_pressed():
	Network.channel_profile = 2
	connectt()


func _on_chatboton8_pressed():
	Network.channel_profile = 1
	connectt()


func _on_chatboton9_pressed():
	Network.channel_profile = 4
	connectt()


func _on_chatboton10_pressed():
	Network.channel_profile = 1
	connectt()


func _on_chatboton11_pressed():
	Network.channel_profile = 3
	connectt()
