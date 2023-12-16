extends Node2D

var rng = RandomNumberGenerator.new()
var letters = ['A','B','C','D','E','F','G']
var time = 0
var letter

func randomizeDisplay():
	letter = letters[rng.randi_range(0,6)]
	get_node("Display").text = letter
	#print(letter)  #Debug

func _ready():
	#rng.randomize()  #Randomize Seed, No longer needed in Godot 4.0
	randomizeDisplay()

func _process(delta):
	time += delta
	get_node("Time").text = str(5 - time).pad_decimals(2)
	if time >= 5:
		time = 0
		randomizeDisplay()
		
