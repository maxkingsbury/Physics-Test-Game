// Step Event of oBullet

// Move the bullet forward based on its direction
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

if (speed > 15 ){
	speed *= 0.93; 
}
else if (speed > 13 && speed < 15) {
	speed *= 0.96;
} 

// Destroy the bullet if it goes off-screen
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}