

if deathtimer > 0 {
    deathtimer -= 1
    
    if abs(image_xscale) < abs(max_x) or max_x == -1
        image_xscale += scaledec_x
    
    if abs(image_yscale) < abs(max_y) or max_y == -1
        image_yscale += scaledec_y   
    
    if image_alpha < max_alpha or max_alpha == -1
        image_alpha += alphadec    
    
}
else {
    if abs(image_xscale) > 0 or max_x == -1
        image_xscale -= scaledec_x
    if abs(image_yscale) > 0 or max_y == -1
        image_yscale -= scaledec_y  
    if image_alpha > 0 or max_alpha == -1
        image_alpha -= alphadec
        
    if abs(image_xscale) <= 0 or abs(image_yscale) <= 0 or image_alpha <= 0 or instant == true
        instance_destroy(id)
}

