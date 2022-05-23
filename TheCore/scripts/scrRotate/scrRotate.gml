function Rotate(_x, _y, _length, _direction, _xx, _yy, __direction_xx, __direction_yy){
	var coordinates = [];
	__x = _x + lengthdir_x(_length, _direction);
	__y = _y + lengthdir_y(_length, _direction);
	coordinates[0] = __x + lengthdir_x(_yy, __direction_yy) 
		+ lengthdir_x(_xx, __direction_xx);
	coordinates[1] = __y + lengthdir_y(_yy, __direction_yy) 
		+ lengthdir_y(_xx, __direction_xx);
		
	return coordinates
}