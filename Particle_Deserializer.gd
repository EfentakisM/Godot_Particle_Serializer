extends Node

class_name Deserializer_Particles



func _deserialize(var fileName) -> Particles2D:
	
	var file= File.new()
	file.open("res://Particle_JSONS/"+ fileName +".part", File.READ)
	
	var json = file.get_as_text()
	
	var dict = JSON.parse(json).result
	
	var particleObject = Particles2D.new()
	var mat = ParticlesMaterial.new()
	particleObject.process_material = mat
	
	var pm = particleObject.process_material
	
	
	
	var process = dict["Process_Material"]
	
	for k in dict:
		if dict[k] as String == "[Object:null]":
			dict[k] = null
	for kk in process:
		if process[kk] as String == "[Object:null]":
			process[kk] = null
	
	
	particleObject.emitting= dict["Emitting"]
	particleObject.amount= dict["Amount"]
	particleObject.lifetime= dict["Lifetime"]
	particleObject.one_shot=dict["Oneshot"]
	particleObject.preprocess= dict["Preprocess"]
	particleObject.speed_scale= dict["SpeedScale"]
	particleObject.explosiveness= dict["Explosiveness"]
	particleObject.randomness= dict["Randomness"]
	particleObject.fixed_fps= dict["FixedFPS"]
	particleObject.fract_delta= dict["Fract_Delta"]
	pm.lifetime_randomness= process["LifetimeRandomness"]
	pm.trail_divisor= process["trail_devisor"]
	pm.trail_size_modifier= process["TrailSizeMod"]
	pm.trail_color_modifier=process["TrailColorModifier"]
	pm.emission_shape= process["Emission_Shape"]
	pm.flag_align_y= process["Flag_Align_Y"]
	pm.flag_rotate_y= process["Flag_Rotate_Y"]
	pm.flag_disable_z= process["Flag_Disable_Z"]
	pm.direction= string_to_Vector3(process["Direction"])
	pm.spread= process["Spread"]
	pm.flatness=process["Flatness"]
	pm.gravity= string_to_Vector3(process["Gravity"])
	pm.initial_velocity= process["Velocity"]
	pm.initial_velocity_random= process["Velocity_Random"]
	pm.angular_velocity= process["Angular_Velocity"]
	pm.angular_velocity_random= process["Angular_Velocity_Random"]
	pm.angular_velocity_curve= process["Angular_Velocity_Curve"]
	pm.orbit_velocity= process["Orbit_Velocity"]
	pm.orbit_velocity_random= process["Orbit_Velocity_Random"]
	pm.orbit_velocity_curve= process["Orbit_Velocity_Curve"]
	pm.linear_accel= process["Linear_Accel"]
	pm.linear_accel_random= process["Linear_Accel_Random"]
	pm.linear_accel_curve= process["Linear_Accel_Curve"]
	pm.radial_accel= process["Radial_Accel"]
	pm.radial_accel_random= process["Radial_Accel_Random"]
	pm.radial_accel_curve= process["Radial_Accel_Curve"]
	pm.tangential_accel= process["Tangential_Accel"]
	pm.tangential_accel_random= process["Tangential_Accel_Random"]
	pm.tangential_accel_curve= process["Tangential_Accel_Curve"]
	pm.damping=process["Damping"]
	pm.damping_random= process["Damping_Random"]
	pm.damping_curve=process["Damping_Curve"]
	pm.angle= process["Angle"]
	pm.angle_random= process["Angle_Random"]
	pm.angle_curve= process["Angle_Curve"]
	pm.scale= process["Scale"]
	pm.scale_random= process["Scale_Random"]
	pm.scale_curve= process["Scale_Curve"]
	pm.color= process["Color"]
	pm.color_ramp= process["Color_Ramp"]
	pm.hue_variation=process["Hue_Variation"]
	pm.hue_variation_random= process["Hue_Variation_Random"]
	pm.hue_variation_curve=process["Hue_Variation_Curve"]
	pm.anim_speed=process["Animation_Speed"]
	pm.anim_speed_random= process["Animation_Speed_Random"]
	pm.anim_speed_curve= process["Animation_Speed_Curve"]
	pm.anim_offset= process["Animation_Offset"]
	pm.anim_offset_random= process["Animation_Offset_Random"]
	pm.anim_offset_curve=process["Animation_Offset_Curve"]
	
	
	
	file.close()
	return particleObject





func string_to_Vector3(var string) -> Vector3:
	var x 
	var y
	var z
	x= string.split(',')[0]
	y= string.split(',')[1]
	z= string.split(',')[2]
	
	
	
	return Vector3(x,y,z)
