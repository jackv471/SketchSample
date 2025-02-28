shader_type canvas_item;

uniform float draw_point;
uniform vec4 color: source_color;



void fragment() {
	if(1.0- COLOR.r >=  draw_point)
	{
		discard;
	}
	COLOR.rgb = color.rgb;
}
