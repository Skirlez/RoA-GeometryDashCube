//B - Reversals
if (attack == AT_NSPECIAL) {
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_NAIR) {
    if window == 1 and window_timer == 1
        drawsaw = true

    
    sawangle += 10
    if sawangle == 360
        sawangle = 0
    
    if window == 3 and window_timer == 11 {
        drawsaw = false
    }
}
else {
    sawangle = 0 
    drawsaw = false   
}


if (attack == AT_FSPECIAL) {
    if window == 1 {
        dashorb = instance_create(x, y - 24, "obj_article2")
        dashorb.sprite_index = sprite_get("dashorb");
        dashorb.image_xscale = 1 * spr_dir
        dashorb.image_yscale = 1
        dashorb.scaledec_x = 0.1 * spr_dir
        dashorb.scaledec_y = 0.1
        dashorb.max_x = 1
        dashorb.deathtimer = 30
        
        orbani = instance_create(x, y - 24, "obj_article2")
        orbani.sprite_index = sprite_get("dashorb_animation");
        orbani.image_xscale = 1
        orbani.image_yscale = 1
        orbani.image_alpha = 1
        orbani.deathtimer = 30
        orbani.alphadec = -0.075
        orbani.scaledec_x = 0.1
        orbani.scaledec_y = 0.1
        orbani.instant = true
        orbani.max_x = -1
        orbani.max_y = -1
        orbani.max_alpha = -1  
        orbani.depth = depth - 1
        
        df = instance_create(x, y - 24, "obj_article2")
        df.sprite_index = sprite_get("dashfire");
        df.image_xscale = 0
        df.image_yscale = 0
        df.scaledec_x = 0.2 * spr_dir
        df.scaledec_y = 0.2
        df.max_x = 1
        df.deathtimer = 6
        df.instant = true
        
    }
    

    
    if window == 2 {
        if instance_exists(df) {
            df.x = x
            df.y = y - 24
        }
        
        if window_timer == 6
            dashfire = true
    
        if !special_down {
            window_timer = 0
            window = 3
            if abs(hsp) > 6
                hsp = sign(hsp) * 6
        }
            
        
    }
    
    spinanyway = true
    can_fast_fall = false;
    print(window_timer)
    if window == 3 {
        if window_timer == 1 {
            dashfire = false
            dfstop = instance_create(x, y - 24, "obj_article2")
            dfstop.sprite_index = sprite_get("dashfire");
            dfstop.image_xscale = 1 * spr_dir
            dfstop.image_yscale = 1
            dfstop.scaledec_x = 0.1 * spr_dir
            dfstop.deathtimer = 0
        }
        
        if window_timer == 15  {
            if abs(hsp) > 6
                hsp = sign(hsp) * 6
            spinanyway = false
        }
    }
}

if (attack == AT_USPECIAL) {
    if gravitytimer == -1
        gravitytimer = 0
}

if (attack == AT_DSPECIAL) and padded == false {
    instance_destroy(pad)
    padtimer = 6
    pad = instance_create(x, y - 22, "obj_article3")
    pad.sprite_index = sprite_get("pad")
    padded = true
}

if (attack == AT_DAIR) {
    if has_hit and blackorbed == false {
        orbani = instance_create(x, y + 24, "obj_article2")
        orbani.sprite_index = sprite_get("blackorb_animation");
        orbani.image_xscale = 2.5
        orbani.image_yscale = 2.5
        orbani.image_alpha = 0.7
        orbani.deathtimer = 16
        orbani.alphadec = -0.05
        orbani.scaledec_x = -0.15
        orbani.scaledec_y = -0.15
        orbani.instant = true
        orbani.max_x = -1
        orbani.max_y = -1
        orbani.max_alpha = -1  
        orbani.depth = depth - 1
        blackorbed = true
    }   
}

