
if state_cat != SC_AIR_COMMITTED
    drawsaw = false

if state_cat == SC_AIR_NEUTRAL or spinanyway = true {
    jumpangle -= 10
}
else {
    jumpangle = 0
}
spr_angle = jumpangle * spr_dir

if padtimer > 0 {
    state = PS_IDLE_AIR
    padtimer -= 1
}



if state == PS_DOUBLE_JUMP and state_timer == 0 {
    yelloworb = instance_create(x, y, "obj_article2")
    yelloworb.sprite_index = sprite_get("yelloworb");
    yelloworb.image_xscale = 1
    yelloworb.image_yscale = 1
    yelloworb.deathtimer = 20
    
    orbani = instance_create(x, y, "obj_article2")
    orbani.sprite_index = sprite_get("yelloworb_animation");
    orbani.image_xscale = 0.9
    orbani.image_yscale = 0.9
    orbani.image_alpha = 2
    orbani.deathtimer = 20
    orbani.alphadec = -0.1
    orbani.scaledec_x = 0.03
    orbani.scaledec_y = 0.03
    orbani.instant = true
    orbani.max_x = -1
    orbani.max_y = -1
    orbani.max_alpha = -1
 
}

if gravitytimer > -1 {
    gravitytimer += 1
    if state_cat = SC_GROUND_NEUTRAL
        vsp = -1
}
    
if gravitytimer == 1 {
    portal = instance_create(x, y, "obj_article2")
    portal.sprite_index = sprite_get("orangeportal1");
    portal.depth = depth - 1
    portal.deathtimer = 40
    
    portal2 = instance_create(x, y, "obj_article2")
    portal2.sprite_index = sprite_get("orangeportal2");
    portal2.depth = depth + 2
    portal2.deathtimer = 40
    
    
    portalani = instance_create(x, y, "obj_article2")
    portalani.sprite_index = sprite_get("orangeportal_animation");
    portalani.image_xscale = 2
    portalani.image_yscale = 2
    portalani.image_alpha = 0.6
    portalani.deathtimer = 40
    portalani.alphadec = -0.05
    portalani.scaledec_x = -0.07
    portalani.scaledec_y = -0.07
    portalani.instant = true
    portalani.max_x = -1
    portalani.max_y = -1
    portalani.max_alpha = -1
    portalani.depth = depth - 2
    
    
    
    
    if vsp > 5
        vsp = 5
    gravity_speed = -0.65
    
    
}


else if gravitytimer == 41 {
    portal = instance_create(x, y, "obj_article2")
    portal.sprite_index = sprite_get("blueportal1");
    portal.depth = depth + 1
    portal.deathtimer = 40
    
    portal2 = instance_create(x, y, "obj_article2")
    portal2.sprite_index = sprite_get("blueportal2");
    portal2.depth = depth - 1
    portal2.deathtimer = 40
    
    
    
    
    
    portalani = instance_create(x, y, "obj_article2")
    portalani.sprite_index = sprite_get("blueportal_animation");
    portalani.image_xscale = 2
    portalani.image_yscale = 2
    portalani.image_alpha = 0.6
    portalani.deathtimer = 40
    portalani.alphadec = -0.05
    portalani.scaledec_x = -0.07
    portalani.scaledec_y = -0.07
    portalani.instant = true
    portalani.max_x = -1
    portalani.max_y = -1
    portalani.max_alpha = -1
    portalani.depth = depth - 2
    
    
    if vsp < -5
        vsp = -5
    gravity_speed = 0.65  
    gravitytimer = -1
    
    dashfire = false
    spinanyway = false
    set_state(PS_PRATFALL)
    
}

if has_hit == false
    blackorbed = false
    
if state != PS_ATTACK_GROUND or attack != AT_FSTRONG {
    padded = false   
    drawfish = false
}

if dashfire == true 
    dashfireanim += 0.25
else
    dashfireanim = 0


draw_y = -24
