
#load structure 
fetch 1A30

#open the sequence
set seq_view, 1

#set background color to white 
bg_color white

#remove the water molecules 
remove solvent

#colored the protein 
color tv_orange

#picked out the ligand with the residue number
select residue_, resi 506-508

#changed the ligand to sphere
show sphere, residue_

#colored the spherd
color lightblue, residue_

#changed the view 
orient

#set the image size 
draw 1600,1200

#exported to a image
png part2.png
