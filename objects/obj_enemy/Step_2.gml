/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71C63729
/// @DnDComment : if jumping
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 29698ADF
	/// @DnDParent : 71C63729
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_jump"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_jump"
	sprite_index = spr_enemy_jump;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E7F362D
/// @DnDComment : if falling
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4164C0E1
	/// @DnDParent : 4E7F362D
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_idle"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
	sprite_index = spr_enemy_idle;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 08779979
/// @DnDComment : If we are on gorund
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l08779979_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l08779979_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61790EBD
	/// @DnDComment : if moving left
	/// @DnDParent : 08779979
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 26EAB0FF
		/// @DnDParent : 61790EBD
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
		sprite_index = spr_enemy_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1B5EE910
		/// @DnDComment : flip the $(13_10)image X scale$(13_10)(absolute value$(13_10)to make sure$(13_10)this doesn't overflip$(13_10)if already flipped lefy).
		/// @DnDParent : 61790EBD
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E307060
	/// @DnDParent : 08779979
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 35316E7E
		/// @DnDParent : 3E307060
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk"
		sprite_index = spr_enemy_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 38687A57
		/// @DnDComment : reset the $(13_10)image X scale$(13_10)back to normal.$(13_10)(absolute value$(13_10)to make it positive$(13_10)to the right no matter what)
		/// @DnDParent : 3E307060
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35395C2C
	/// @DnDComment : if nothing
	/// @DnDParent : 08779979
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7EDD7DEA
		/// @DnDParent : 35395C2C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_idle"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
		sprite_index = spr_enemy_idle;
		image_index += 0;}}