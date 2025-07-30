
log_open 

fetch 5iz7

#selecting only residules 1-403 as domains based on Kostyuchenko et al. 
select wanted, resi 1-403
hide all 
show cartoon, wanted

#domain 1 = resi 1-5, 133-196, 286-302 
#domain 2 = resi 51-133, 196-286 
#domain 3 = resi 302 - 403 

#coloring each of the domains 

#domain 1 
color red, resi 1-51
color red, resi 133-196 
color red, resi 286-302 

#domain 2 
color yellow, resi 51-133
color yellow, resi 196-286

#domain 3 
color blue, resi 302-403

#setting background to white 
bg_color white 

#printing out image 
set ray_trace_mode, 
ray
png /Users/adyashapadhi/Desktop/ECS_129/ecs129_project2_1_1.png, dpi=300

log_close

