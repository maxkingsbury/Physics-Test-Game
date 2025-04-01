image_speed = 0.5; // Play the animation
image_xscale = 3
image_yscale = 3
frame_timer = 10; // Half a second delay after animation

// Create Particle Type for static ship
part_type_shape(global.Particle3, pt_shape_flare); // Flare shape
part_type_size(global.Particle3, 0.001, 0.0015, 0, 0.5); // Size range
part_type_color1(global.Particle3, #00FFFA); // Color gradient
part_type_alpha3(global.Particle3, 0.3, 0.3, 0); // Fade out effect
part_type_speed(global.Particle3, 1, 2, -0.10, 0); // Speed range, negative for back
part_type_direction(global.Particle3, 0, 359, 0, 20); // Emit opposite direction of the ship
part_type_blend(global.Particle3, false); // Glowing blend mode
part_type_life(global.Particle3, 10, 15) // Particle life range