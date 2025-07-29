/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0759BDE1
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 272A782E
/// @DnDComment : Original (no gamepad support) method $(13_10)$(13_10)1 would be pressing right $(13_10)-1 would be pressing left $(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 343B710B
/// @DnDArgument : "msg" "move_x "
show_debug_message(string(move_x ));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6C8F9E35
/// @DnDComment : If we are on the Ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l6C8F9E35_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l6C8F9E35_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19A3E1F5
	/// @DnDComment : reset the falling speed$(13_10) on movement Y when $(13_10)you landed on ground
	/// @DnDParent : 6C8F9E35
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 2AFBC80D
	/// @DnDDisabled : 1
	/// @DnDParent : 6C8F9E35
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C6A8EFE
	/// @DnDComment : Jump!
	/// @DnDDisabled : 1
	/// @DnDParent : 2AFBC80D
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"
	
	
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 317A69C5
	/// @DnDComment : id ther a wall?
	/// @DnDParent : 2AFBC80D
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l317A69C5_0 = instance_place(x + (25 * sign(move_x)), y + 0, [collision_tilemap]);if ((l317A69C5_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EA58638
		/// @DnDComment : jump over it!
		/// @DnDParent : 317A69C5
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}
	
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2FCA6830
	/// @DnDComment : is there a gap in the floor?
	/// @DnDParent : 2AFBC80D
	/// @DnDArgument : "x" "x + (30 ^ sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "collision_tilemap"
	/// @DnDArgument : "not" "1"
	var l2FCA6830_0 = instance_place(x + (30 ^ sign(move_x)), y + 50, [collision_tilemap]);if (!(l2FCA6830_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3EEFDD80
		/// @DnDComment : turn around for movement on x
		/// @DnDParent : 2FCA6830
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A26E26D
		/// @DnDComment : jump
		/// @DnDParent : 2FCA6830
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7E1043CF
/// @DnDComment : if you're not $(13_10)on the ground
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C796F55
	/// @DnDComment : if we are$(13_10)falling after$(13_10)a jump
	/// @DnDParent : 7E1043CF
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52972205
		/// @DnDComment : add gravity
		/// @DnDParent : 4C796F55
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 108E9701
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap_deathzone"
var l108E9701_0 = instance_place(x + 0, y + 2, [collision_tilemap_deathzone]);if ((l108E9701_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 004C22AD
	/// @DnDParent : 108E9701
	instance_destroy();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 0566E69D
/// @DnDComment : 1st object is$(13_10)the object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);