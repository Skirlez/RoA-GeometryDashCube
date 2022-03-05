if drawsaw == true {
    draw_sprite_ext(sprite_get("saw3"), 0, x, y - 24, 1, 1, sawangle, c_white, 1)
}

if state == PS_AIR_DODGE
    draw_sprite(sprite_get("safeblock"), 0, x, y - 24)