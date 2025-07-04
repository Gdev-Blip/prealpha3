if global.phy == true {
	if room == rm2 {
		
	instance_create_layer(3030,287,"Instances",self)	
	}

}
if instance_exists(self) {
	show_debug_message("AQUI TOY YO")	
}
physics_mass_properties(78692347869234879234879, -10, -10, phy_inertia);

//la frikin masa no funca 