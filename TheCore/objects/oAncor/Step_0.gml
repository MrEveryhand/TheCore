if(!instance_exists(follower))
{
	if(!!path_exists(_path))
		path_delete(_path);
	instance_destroy(self);
}