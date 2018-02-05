if (other.ObjectType>0 && other.ObjectType != Creator)
{
	with (other)
	{
		instance_destroy();
	}
}
instance_destroy();