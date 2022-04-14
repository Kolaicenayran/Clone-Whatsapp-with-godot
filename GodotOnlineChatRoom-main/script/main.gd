extends Node2D
var change_number
func _process(delta):
	
	$main_ui.get_node("ui/dedected").rect_position.x = $ScrollContainer.scroll_horizontal /4.5 + 110

func _on_ScrollContainer_scroll_ended():
	OS.get_virtual_keyboard_height()
	if $ScrollContainer.scroll_horizontal >0 and $ScrollContainer.scroll_horizontal <450:
		print("1 sayfaya git")
		change_number = 1
		$ScrollContainer/screen_resize.start()
	if $ScrollContainer.scroll_horizontal >450 and $ScrollContainer.scroll_horizontal <1100:
		$main_ui.get_node("ui/dedected").rect_size.x = 150
		$main_ui.get_node("ui/dedected").rect_position.x += 1000
#		print("2 sayfaya git")
		change_number = 2
		$ScrollContainer/screen_resize.start()
	if $ScrollContainer.scroll_horizontal >1100:
		$ScrollContainer/screen_resize.start()
		print("3 sayfaya git")
		change_number = 3


func _on_screen_resize_timeout():
	if change_number == 1:
		if ! $ScrollContainer.scroll_horizontal == 0:
			$ScrollContainer.scroll_horizontal -=12
		else:
			$ScrollContainer/screen_resize.stop()
	if change_number == 2:
		if  ! $ScrollContainer.scroll_horizontal ==720:
			if $ScrollContainer.scroll_horizontal > 720:
				$ScrollContainer.scroll_horizontal -=6

			if $ScrollContainer.scroll_horizontal < 720:

				$ScrollContainer.scroll_horizontal +=6


		if $ScrollContainer.scroll_horizontal > 699 and  $ScrollContainer.scroll_horizontal < 730 :
			$ScrollContainer/screen_resize.stop()
	if change_number == 3:
		if  ! $ScrollContainer.scroll_horizontal ==1440:
			if $ScrollContainer.scroll_horizontal > 1440:
				$ScrollContainer.scroll_horizontal -=6

			if $ScrollContainer.scroll_horizontal < 1440:

				$ScrollContainer.scroll_horizontal +=6


		if $ScrollContainer.scroll_horizontal > 1400 and  $ScrollContainer.scroll_horizontal < 1460 :
			$ScrollContainer/screen_resize.stop()
