extends Sprite2D

@export var draw_speed := 10.0

func _ready() -> void:
	start_drawing()

func start_drawing():
	var draw_tween = create_tween()
	draw_tween.tween_method(set_material_draw_amount,0.0,1.1, draw_speed)


func set_material_draw_amount(value: float):
	(material as ShaderMaterial).set_shader_parameter("draw_point", value)
