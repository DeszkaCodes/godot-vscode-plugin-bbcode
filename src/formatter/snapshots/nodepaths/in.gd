@onready var sprite: Sprite2D = %Sprite
@onready var sprites = [ %Sprite1,%Sprite2,%Sprite3  ]

@onready var sprite_name = $Sprite
@onready var sprite_names = [$Sprite1,    $Sprite2,   $Sprite3]

func f():
	print("$Sprite1", $Sprite1)
	print("%Sprite1", %Sprite1)
	var a=val % otherVal

var a = $Child
var a = $Child/   GrandChild
var a = $Child/   GrandChild  /   GreatGrandChild
var a = $"../Sibling"
var a = $'../Sibling'
var a = $"../    Sibling    "
var a = $'    ../Sibling'
var a = $'..' # parent
var a = $"../.." # grandparent

var a = get_node('Child')
var a = get_node("Child/Grand Child")
var a = get_node("../Sibling")

if has_node('Child') and get_node('Child').has_node('GrandChild'):
	pass

var a = $%Unique
var a = $Child/%Unique
var a = $Child/ GrandChild/ %Unique
var a = $Child/%Unique/ChildOfUnique
var a = %Unique
var a = %Unique/Child
var a = %Unique/%UniqueChild

var a = $"%Unique"
var a = get_node("%Unique")
var a = NodePath("%Unique")
var a = $'%Unique/Child'
var a = get_node('%Unique/Child')
var a = NodePath('%Unique/Child')
var a = $"%Unique/%UniqueChild"
var a = get_node("%Unique/%Unique Child")
var a = NodePath("%Unique/%Unique Child")

if has_node('%Unique') and get_node('%Child').has_node('%GrandChild'):
	pass

var a = $badlyNamedChild
var a = $badlyNamedChild/badly_named_grandchild

var a = NodePath("Child")
var a = NodePath('Child/GrandChild')
var a = NodePath('../Sibling')

var a = get_node("Child").some_method()
var a = get_node("Child/GrandChild").some_method()
var a = get_node("%Child").some_method()
var a = $Child.some_method()
var a = $'Child'.some_method()
var a = $'%Child'.some_method()
var a = $Child/GrandChild.some_method()
var a = $"Child/GrandChild".some_method()
var a = $"%Child/GrandChild".some_method()
var a = $Child.get_node('GrandChild').some_method()
var a = $"Child".get_node('GrandChild').some_method()
var a = $"%Child".get_node('GrandChild').some_method()
