if (image_index >= image_number - 1) { 
    image_speed = 0; // Stop at last frame
    if (frame_timer > 0) {
        frame_timer--;
    } else {
        instance_destroy(); // Remove laser after pause
    }
}

// Calculate the laser's width at the current frame (scaling from 40px to 256px)
var laser_width = lerp(20, 256, image_index / (image_number - 1));

// Apply scale to the laser width
laser_width *= 1.6;  // Scale factor for your laser (4x in your case)

// Calculate the front half of the laser
var front_half_width = laser_width / 2;

// Emit particles only from the front half of the laser
if (image_index < image_number - 1) {
    // Position the front of the laser (based on the frame)
    var front_x = x + lengthdir_x(laser_width, image_angle); // Front position
    var front_y = y + lengthdir_y(laser_width, image_angle); // Front position
    
    // Emit particles from the front half of the laser, closer to the front but not too far
    for (var i = 0; i < 5; i++) {
        // Adjusting the range so particles appear closer to the front but not too far
        var offset = random_range(front_half_width * 0.9, front_half_width);  // More concentrated to the front
        var particle_x = front_x + lengthdir_x(offset, image_angle);  // No need to scale the offset further
        var particle_y = front_y + lengthdir_y(offset, image_angle);  // No need to scale the offset further
        
        // Create the particles at the calculated position
        part_particles_create(global.P_System, particle_x, particle_y, global.Particle3, 10);
    }
}