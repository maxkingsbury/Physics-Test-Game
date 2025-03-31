part_type_direction(global.Particle1, image_angle + 160, image_angle + 200, 0, 20); // Emit opposite direction of the ship

// Handle the rotation momentum
if (keyboard_check(ord("A"))) {
    rotation_speed -= rotation_accel;  // Rotate counterclockwise
}
if (keyboard_check(ord("D"))) {
    rotation_speed += rotation_accel;  // Rotate clockwise
}

// Apply deceleration when no keys are pressed
if (!keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
    if (rotation_speed > 0) {
        rotation_speed -= rotation_decel;  // Slowly stop clockwise rotation
        if (rotation_speed < 0) rotation_speed = 0;
    } else if (rotation_speed < 0) {
        rotation_speed += rotation_decel;  // Slowly stop counterclockwise rotation
        if (rotation_speed > 0) rotation_speed = 0;
    }
}

// Limit the maximum rotation speed
rotation_speed = clamp(rotation_speed, -max_rotation_speed, max_rotation_speed);

// Apply rotation
image_angle -= rotation_speed;

if (keyboard_check(ord("W"))) {
    motion_add(image_angle, thrust)
	
	// Calculate the offset to the back of the ship
	var offset_x = lengthdir_x(-15,image_angle);  // Moves the particles opposite of the ship's direction
	var offset_y = lengthdir_y(-15,image_angle);  // Moves the particles opposite of the ship's direction

	// Emit Particles from the back of the ship
	part_particles_create(global.P_System, x + offset_x, y + offset_y, global.Particle1, 10);
}

// Limit speed
var ship_speed = point_distance(0, 0, hspeed, vspeed);
if (ship_speed > max_speed) {
    hspeed *= max_speed / ship_speed;
    vspeed *= max_speed / ship_speed;
}

if (ship_speed < 2.5) {
	// Calculate the offset to the back of the ship
	var offset_x = lengthdir_x(5,image_angle);  // Moves the particles opposite of the ship's direction
	var offset_y = lengthdir_y(5,image_angle);  // Moves the particles opposite of the ship's direction
	part_particles_create(global.staticSystem, x + offset_x, y + offset_y, global.Particle2, 1);
}

// Apply movement
x += hspeed;
y += vspeed;

// Keep ship within bounds
if (x < 0) x = room_width;
if (x > room_width) x = 0;
if (y < 0) y = room_height;
if (y > room_height) y = 0;