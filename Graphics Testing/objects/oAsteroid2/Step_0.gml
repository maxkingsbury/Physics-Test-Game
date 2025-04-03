// Move and rotate over time
image_angle += speed * 0.5; // Rotate meteor
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Wrap around screen edges
if (x < -32) x = room_width + 32;
if (x > room_width + 32) x = -32;
if (y < -32) y = room_height + 32;
if (y > room_height + 32) y = -32;