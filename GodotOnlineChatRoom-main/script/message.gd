extends Panel
#
#
func _ready():
	print($Label.rect_position)
	print(rect_size.x)
	var time = OS.get_time()
	var hour = time.hour
	var minute = time.minute
	$time.text = str(hour, ":" ,minute)
