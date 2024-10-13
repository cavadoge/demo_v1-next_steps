extends Panel

var dialogue_text = [
	"Ciao! Come posso aiutarti?",
]

@onready var label = $Label  

func _ready() -> void:
	hide() 
	
# Function to show dialog
func show_dialogue():
	label.text = dialogue_text[0]
	show()  

# Function to hide dialog
func hide_dialogue():
	hide()
