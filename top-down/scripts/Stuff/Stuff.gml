// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function print(message){
	show_debug_message(message)
}

function normalize(vec){
	length = sqrt(vec[0] * vec[0] + vec[1] * vec[1])
	return [vec[0] / length, vec[1] / length]
}

function len(array){
	return array_length(array)
}

function multi_place_meeting(x, y, types){
	for (idx = 0; idx < len(types); idx++){
		type = types[idx]
		if (place_meeting(x, y, type)) return true
	}
	return false
}