/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5F8474A8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_goal"
/// @DnDSaveInfo : "object" "obj_goal"
var l5F8474A8_0 = instance_place(x + 0, y + 2, [obj_goal]);if ((l5F8474A8_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 60D53D94
	/// @DnDParent : 5F8474A8
	room_goto_next();}