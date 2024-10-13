extends Area2D

var entered = false
const PALESTRA_SCENE = "res://worlds/palestra_scene.tscn"

func _on_body_entered(body: Node2D) -> void:
	entered = true
	if body.name == "Player1":
		# Salva la posizione del giocatore
		call_deferred("save_player_position", body)
		# Cambia scena in modo sicuro usando call_deferred
		call_deferred("change_scene")

func save_player_position(body: Node2D) -> void:
	Global.last_position = body.global_position
	print("Salvata la posizione del giocatore: ", Global.last_position)

func change_scene() -> void:
	# Cambia scena al prossimo livello o area in modo sicuro
	get_tree().change_scene_to_file(PALESTRA_SCENE)
