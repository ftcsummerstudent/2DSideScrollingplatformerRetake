/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5B8FDC17
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 37DEA222
/// @DnDArgument : "var" "obj_powerup_highjump"
if(obj_powerup_highjump == 0){}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72342D73
/// @DnDArgument : "expr" "23"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "jump_speed"
jump_speed += 23;