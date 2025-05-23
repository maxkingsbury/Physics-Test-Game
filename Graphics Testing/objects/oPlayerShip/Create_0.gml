sspeed = 0;
direction = 0;
friction = 0.02;

fire_cooldown = 0; 
fire_rate = 120; // Frames between shots

rotation_speed = 0;
rotation_accel = 0.65;  // Speed at which the ship accelerates rotation
rotation_decel = 0.20;  // Speed at which the ship decelerates when no keys are pressed
max_rotation_speed = 4; // Max rotation speed (set to your preference)

max_speed = 5;
thrust = 0.1;


// Create Particle System
particle_system = part_system_create();

// Create Particle Type for Thruster
part_type_shape(global.Particle1, pt_shape_flare); // Flare shape
part_type_size(global.Particle1, 0.01, 0.015, 0, 0.5); // Size range
part_type_color3(global.Particle1, #00FFFA, #1900FF, #8700FF); // Color gradient
part_type_alpha3(global.Particle1, 0.5, 1, 0); // Fade out effect
part_type_speed(global.Particle1, 5, 10, -0.10, 0); // Speed range, negative for back
part_type_direction(global.Particle1, image_angle + 160, image_angle + 200, 0, 20); // Emit opposite direction of the ship
part_type_blend(global.Particle1, true); // Glowing blend mode
part_type_life(global.Particle1, 5, 15); // Particle life range

// Create Particle Type for static ship
part_type_shape(global.Particle2, pt_shape_flare); // Flare shape
part_type_size(global.Particle2, 0.0001, 0.00015, 0, 0.5); // Size range
part_type_color1(global.Particle2, #00FFFA); // Color gradient
part_type_alpha3(global.Particle2, 0.3, 0.3, 0); // Fade out effect
part_type_speed(global.Particle2, 1, 2, -0.10, 0); // Speed range, negative for back
part_type_direction(global.Particle2, 0, 359, 0, 20); // Emit opposite direction of the ship
part_type_blend(global.Particle2, false); // Glowing blend mode
part_type_life(global.Particle2, 2, 4) // Particle life range

// Create a Particle Type for Laser Weapon
global.Particle_Laser = part_type_create();
part_type_shape(global.Particle_Laser, pt_shape_flare);  // Can be a small square or circle
part_type_size(global.Particle_Laser, 0.2, 0.4, 0, 0);  // Small to large particle
part_type_color3(global.Particle_Laser, c_yellow, c_orange, c_red); // Light up the laser with colors
part_type_alpha3(global.Particle_Laser, 1, 0.5, 0);  // Fade out over time
part_type_speed(global.Particle_Laser, 25, 30, 0, 0);  // Speed of particles
part_type_direction(global.Particle_Laser, 0, 0, 0, 0);  // No direction change; particles go straight
part_type_life(global.Particle_Laser, 15, 40);  // Lifetime of particles (laser particles disappear quickly)
part_type_blend(global.Particle_Laser, true);  // Add blending to give glowing effects