extends Node


class_name Serialize_Particles



var partDict 

func _serialize(var particleObject):
	
	
	var pm = particleObject.process_material
	
	
	partDict = {"Emitting": particleObject.emitting,"Amount":particleObject.amount,"Lifetime": particleObject.lifetime, "Oneshot": particleObject.one_shot,
				"Preprocess": particleObject.preprocess,"SpeedScale": particleObject.speed_scale, "Explosiveness": particleObject.explosiveness,
				"Randomness": particleObject.randomness, "FixedFPS": particleObject.fixed_fps, "Fract_Delta": particleObject.fract_delta,
				"Process_Material":{"LifetimeRandomness": pm.lifetime_randomness,"trail_devisor":pm.trail_divisor,"TrailSizeMod":pm.trail_size_modifier,
				"TrailColorModifier": pm.trail_color_modifier, "Emission_Shape":pm.emission_shape,"Flag_Align_Y": pm.flag_align_y,"Flag_Rotate_Y": pm.flag_rotate_y,
				"Flag_Disable_Z": pm.flag_disable_z,"Direction": pm.direction, "Spread" : pm.spread,"Flatness": pm.flatness,"Gravity": pm.gravity,"Velocity": pm.initial_velocity, 
				"Velocity_Random": pm.initial_velocity_random,"Angular_Velocity": pm.angular_velocity, "Angular_Velocity_Random": pm.angular_velocity_random,"Angular_Velocity_Curve": pm.angular_velocity_curve,
				"Orbit_Velocity": pm.orbit_velocity,"Orbit_Velocity_Random":pm.orbit_velocity_random,"Orbit_Velocity_Curve": pm.orbit_velocity_curve,"Linear_Accel": pm.linear_accel,"Linear_Accel_Random": pm.linear_accel_random,
				"Linear_Accel_Curve": pm.linear_accel_curve, "Radial_Accel":pm.radial_accel,"Radial_Accel_Random":pm.radial_accel_random,"Radial_Accel_Curve": pm.radial_accel_curve,"Tangential_Accel": pm.tangential_accel,"Tangential_Accel_Random":pm.tangential_accel_random,
				"Tangential_Accel_Curve":pm.tangential_accel_curve,"Damping":pm.damping, "Damping_Random": pm.damping_random,"Damping_Curve": pm.damping_curve,"Angle":pm.angle, "Angle_Random":pm.angle_random,"Angle_Curve": pm.angle_curve,
				"Scale":pm.scale,"Scale_Random": pm.scale_random, "Scale_Curve":pm.scale_curve,"Color":pm.color,"Color_Ramp":pm.color_ramp,"Hue_Variation":pm.hue_variation,"Hue_Variation_Random":pm.hue_variation_random,"Hue_Variation_Curve":pm.hue_variation_curve,
				"Animation_Speed":pm.anim_speed,"Animation_Speed_Random":pm.anim_speed_random,"Animation_Speed_Curve": pm.anim_speed_curve,"Animation_Offset": pm.anim_offset,"Animation_Offset_Random":pm.anim_offset_random,"Animation_Offset_Curve":pm.anim_offset_curve}}
	
	var save_game = File.new()
	save_game.open("res://Particle_JSONS/Particle_1.part", File.WRITE)
	save_game.store_line(to_json(partDict))
	save_game.close()
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
