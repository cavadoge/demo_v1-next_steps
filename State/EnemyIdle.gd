extends State
class_name EnemyIdle

@export var enemy: CharacterBody2D # cambiare in Marna?
@export var move_speed := 100.0

var move_direction: Vector2
var wander_time: float

func randomize_wander():
	move_direction = Vector2(randf_range(-1, 1),randf_range(-1, 1)).normalized()
	wander_time = randf_range(1, 3)

func Enter():
	randomize_wander()

func Update(delta: float):
	if wander_time > 0:
		wander_time -= delta
	else:
		randomize_wander()

func Physics_Update(delta):
	if enemy:
		enemy.velocity = move_direction * move_speed
