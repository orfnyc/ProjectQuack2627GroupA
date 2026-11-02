extends Node2D

var diceNum:int = 0
var diceRoll = true

#Ability Score	Modifier
#8–9	-1
#10–11	+0
#12–13	+1
#14–15	+2
#16–17	+3
#18–19	+4
#20	    +5

var HP = 0

var health = 10
var strength = 14
var speed = 16

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	


	
func _process(delta: float) -> void:
	if not diceRoll:
		
		var diceNum = randi_range(1, 20)
		print(diceNum)
		diceRoll = true
	else:
		return
	
#ability bonus
func attackBonus(): 
	if strength <= 8:
		diceNum -= 1
		print(diceNum)
	elif strength <= 10:
		print(diceNum)
	elif strength <= 12:
		diceNum += 1
		print(diceNum)
	elif strength <= 14:
		diceNum += 2
		print(diceNum)
	elif strength <= 16:
		diceNum += 3
		print(diceNum)
	elif strength <= 18:
		diceNum += 4
		print(diceNum)
	else:
		diceNum +=5
		print(diceNum)
		
	
func DodgeBonus():
	pass
	
func HealingBonus():
	pass
	
		

func _on_roll_action_pressed() -> void:
	print("pressed")
	diceRoll = false
	

	
