function scrInArea(object, area, precise){
	if(object.x <= area[0] + precise &&
		object.x >= area[0] - precise &&
		object.y <= area[1] + precise &&
		object.y >= area[1] - precise)
		return true
	else
		return false
}