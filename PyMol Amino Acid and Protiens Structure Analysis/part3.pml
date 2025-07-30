#load structure 
fetch 1CWA

#open the sequence
set seq_view, 1

#set background color to white 
bg_color white

#remove the water molecules 
remove solvent

#colored the protein 
color green

#picked out the chain c
select chC, chain C

#changed the chain C to stick model
show sticks, chC

#colored the sphere
color raspberry, chC

#changed the view 
orient

#set the image size 
draw 1600,1200

#exported to a image
png part3.png
