/// @param Text
/// @param Delimiter

var arr = undefined;
var my_str = argument0;
var my_Delimiter = argument1;
var out_str = "";
var vector = 0;

for(var i = 1; i < string_length(my_str)+1; i++)
{
    var next_char = string_char_at(my_str,i);
 
    if(next_char == my_Delimiter)
    {
	   arr[vector] = out_str;
	   out_str = "";
	   vector++;
	}
	
	if (next_char != my_Delimiter)
    out_str = out_str + next_char;
	
	if (i < string_length(my_str)+1)
	arr[vector] = out_str;
}
return arr;


