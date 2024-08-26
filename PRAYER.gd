extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

signal morri 

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	#ANIMAÇÃO
	if is_on_floor():#SE ESTA NO CHÃO
	if estaPulando: #SE ESTÁPULANDO
	   print(estaPulando)
		$AnimatedSprite2D.play("jump")
	
	
	  elif direction !=0: #EM MOVIMENTO
				
			 $AnimatedSprite2D.play("rum")
		  elif direction !=0: # PARADO 
			 $AnimatedSprite2D.play("idle")
		else:#nao esta no chao
			  if velocity.y < 0: #MOVIMENTO EM Y NEGATIVO
				   $Animated2D.play("jump") 
			else: #MOVIMENTO EM Y NEGATIVO 
				  $AnimatedSprite2D.play("fall") 
	
	
	
	move_and_slide()
	
	
func _levoudano(): 
	emit_signal ("morri")
