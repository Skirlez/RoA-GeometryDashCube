if dashfire == true {
    draw_sprite_ext(sprite_get("dashfire"), dashfireanim, x, y - 24, spr_dir, 1, 0, c_white, 1)
}

if drawsaw = true {
    draw_sprite_ext(sprite_get("saw"), 0, x, y - 24, 0., 0.75, sawangle, c_white, 1)
}