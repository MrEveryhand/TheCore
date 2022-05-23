function OOB(l, r, t, d, object)
{
	var horizontal_left_offset = l;
	var horizontal_right_offset = r;
	var vertical_top_offset = t;
	var vertical_down_offset = d;
	
	var oob = false;
	
	oob = 
		(object.x >= horizontal_right_offset || 
		 object.x <= horizontal_left_offset ||
		 object.y <= vertical_top_offset ||
		 object.y >= vertical_down_offset
			) ? true : false;
		
	return oob
}