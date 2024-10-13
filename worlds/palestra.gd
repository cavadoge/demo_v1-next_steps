extends Area2D

var entered = true
const BACK_SCENE = "res://worlds/world.tscn" # REPLACE WITH A VARIABLE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	entered = false
	# Valido solo per Player1
	if body.name == "Player1":
		# Usa 'call_deferred' per cambiare scena in modo sicuro
		call_deferred("change_scene")

# Funzione per cambiare scena
func change_scene() -> void:
	# Cambia scena al prossimo livello o area in modo sicuro
	get_tree().change_scene_to_file(BACK_SCENE)
