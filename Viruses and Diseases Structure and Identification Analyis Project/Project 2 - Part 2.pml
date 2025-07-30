log_open 
#load structure
fetch 1TDW

#open the sequence
set seq_view, 1

#set background color to white 
bg_color white

#remove the water molecules 
remove solvent

#select the entire molecule
select entire, all

#represent it as a cartoon
show cartoon, entire

#color the protein
color orange, entire

#select the mutant fragment
select residue_, resi 307-323

#colored the protein 
color magenta, residue_

#change the fragment into sphere
show sphere, residue_

#changed the view 
orient

#print out the image
set ray_trace_mode, 
ray

#export
png project2part2.png


log_close