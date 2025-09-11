extends CanvasLayer

@onready var blur_rect: ColorRect = $ColorRect
var _mat: ShaderMaterial

func _ready():
	_mat = blur_rect.material as ShaderMaterial
	visible = true
	fade_in()

func fade_in():
	_mat.set_shader_parameter("strength", 1.0)
	var tween := get_tree().create_tween()
	tween.tween_property(_mat, "shader_parameter/strength", 0.0, 1.5) # 1 → 0 em 1.5s
	tween.tween_callback(Callable(self, "_on_done"))

func _on_done():
	visible = false
