// Random movement
direction = irandom(360); // Random direction
speed = random_range(1, 3); // Random speed between 1 and 3
image_angle = random(360); // Random rotation
image_xscale = random_range(0.8, 1.5); // Random size
image_yscale = image_xscale; // Keep it proportional

// Create the explosion particle type

part_type_shape(global.Particle_Explosion, pt_shape_explosion);
part_type_size(global.Particle_Explosion, 0.25, 0.5, 0, 0);
part_type_color3(global.Particle_Explosion, c_orange, c_red, c_gray);
part_type_alpha3(global.Particle_Explosion, 1, 0.5, 0);
part_type_speed(global.Particle_Explosion, 2, 6, -0.1, 0);
part_type_direction(global.Particle_Explosion, 0, 359, 0, 10);
part_type_blend(global.Particle_Explosion, true);
part_type_life(global.Particle_Explosion, 30, 60);