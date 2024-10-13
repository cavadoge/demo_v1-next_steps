extends Node2D

func _ready() -> void:
	# Trova il nodo del giocatore
	var player = $Player1 

	if player and Global.last_position != Vector2.ZERO:
		# Ripristina la posizione del giocatore
		player.global_position = Global.last_position
		print("Ripristinata la posizione del giocatore: ", Global.last_position)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
