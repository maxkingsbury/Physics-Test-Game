// Spawn 5-10 meteors at random positions
for (var i = 0; i < 5; i++) {
    var mx = irandom(room_width);
    var my = irandom(room_height);
    instance_create_layer(mx, my, "Instances", oAsteroid1);
	instance_create_layer(mx, my, "Instances", oAsteroid2);
}