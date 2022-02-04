if dashfire == true {
    draw_sprite_ext(sprite_get("dashfire"), dashfireanim, x, y - 24, spr_dir, 1, 0, c_white, 1)
}

if drawfish == true {
    draw_sprite_ext(sprite_get("fishjaw"), 0, x + fishoffset * spr_dir, y - 32, -spr_dir / 2.5, 0.4, fjawangle * spr_dir, c_white, 1)
    draw_sprite_ext(sprite_get("fishhead"), 0, x + fishoffset * spr_dir, y - 32, -spr_dir / 2.5, 0.4, fheadangle * spr_dir, c_white, 1)
}