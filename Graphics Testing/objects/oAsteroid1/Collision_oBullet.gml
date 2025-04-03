// Create explosion effect at the asteroid's position
part_particles_create(global.P_System, x, y, global.Particle_Explosion, 40);

if (instance_exists(other)) {  
    with (other) instance_destroy(); // Destroy the projectile  
}  
instance_destroy(); // Destroy the meteor  