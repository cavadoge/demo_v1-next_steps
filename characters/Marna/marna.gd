extends CharacterBody2D
#
#const SPEED = 100.0
#const STEP_DISTANCE = 100.0  # Distanza da percorrere in ogni direzione (3-4 passi)
#
#var directions = [
	#Vector2.LEFT,  
	#Vector2.DOWN,  
	#Vector2.RIGHT, 
	#Vector2.UP     
#]
#
#var current_direction_index = 0  # Indice della direzione corrente
#var distance_covered = 0.0  # Distanza percorsa nella direzione corrente
#
#func _physics_process(_delta: float) -> void:
	## Ottieni la direzione corrente
	#var current_direction = directions[current_direction_index]
#
	## Applica il movimento nella direzione corrente
	#velocity = current_direction * SPEED
	#move_and_slide()
#
	## Aggiorna la distanza percorsa in questa direzione
	#distance_covered += SPEED * _delta
	#
	## Se abbiamo percorso la distanza prefissata in questa direzione
	#if distance_covered >= STEP_DISTANCE:
		## Resetta la distanza percorsa
		#distance_covered = 0.0
		#
		## Cambia alla prossima direzione
		#current_direction_index += 1
		#
		## Se abbiamo completato tutte le direzioni, ricomincia
		#if current_direction_index >= directions.size():
			#current_direction_index = 0
			

func _physics_process(_delta: float) -> void:
	move_and_slide()
