extends Area2D

var entered_seller_area = false

@onready var dialogue_panel : Panel = $Panel  

func _process(_delta: float) -> void:
			# show the dialog panel when button "A" is pressed inside the Seller Area
	if entered_seller_area and Input.is_action_just_pressed("action_A"):
		dialogue_panel.show_dialogue() 
		return
		

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player1":
		entered_seller_area = true

func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player1":
		entered_seller_area = false
		# hide the dialog panel when Player1 goes away
		dialogue_panel.hide()
	
