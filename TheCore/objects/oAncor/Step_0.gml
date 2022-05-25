if(!instance_exists(follower))
{
	if(!!path_exists(path))
		path_delete(path);
	instance_destroy(self);
}