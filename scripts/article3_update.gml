if timer == 0 place_meeting(x, y, oPlayer) {
    var player = instance_place(x, y, oPlayer)
    if instance_exists(player) {
        player.vsp = -18
        uses -= 1
        
        {
        orbani = instance_create(x, y + 18, "obj_article2")
        orbani.sprite_index = sprite_get("yelloworb_animation");
        orbani.image_xscale = 1.2
        orbani.image_yscale = 1.2
        orbani.image_alpha = 1.2
        orbani.deathtimer = 20
        orbani.alphadec = -0.1
        orbani.scaledec_x = 0.05
        orbani.scaledec_y = 0.05
        orbani.instant = true
        orbani.max_x = -1
        orbani.max_y = -1
        orbani.max_alpha = -1
        } // orb
        
        
            
        timer = 20
    }
    
}
if timer > 0
    timer -= 1
    
if uses <= 0
    instance_destroy(id) // apparently errors if the last thing you do *isn't* destroying yourself