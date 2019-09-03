""""
delete all;
fetch ${1:4PCO}, type=pdb,async=0;
select ${2:G2G3}, ( ((resi ${3:2} or resi ${4:3}) and chain A) or ((resi ${5:8} or resi ${6:9}) and chain B) );
hide everything, element h; 
remove not ${2:G2G3};
bg_color white;
show sticks;
set stick_radius=0.14;
set stick_ball, on; 
set stick_ball_ratio,1.9;
set_view (-0.75,0.09,0.66,-0.2,0.92,-0.35,-0.64,-0.39,-0.67,-0.0,-0.0,-43.7,7. 24,9.55,11.78,29.46,57.91,-20.0);
hide everything, element H;
select carbon1, element C and (resi ${4:3} or resi ${5:8}) 
# select lower base pair;
select carbon2, element C and (resi ${3:2} or resi ${6:9}) 
#select upper base pair;
color gray70,carbon1;
color gray10,carbon2;
space cmyk;
distance hbond1,/${1:4PCO}//B/U`9/N3,/${1:4PCO}//A/G`2/O6;
distance hbond2,/${1:4PCO}//B/U`9/O2,/${1:4PCO}//A/G`2/N1;
distance hbond3,/${1:4PCO}//A/U`3/N3,/${1:4PCO}//B/G`8/O6;
distance hbond4,/${1:4PCO}//A/U`3/O2,/${1:4PCO}//B/G`8/N1;
color black, hbond1;
color black, hbond2;
color gray70, hbond3;
color gray70, hbond4;
show nb_spheres;
set nb_spheres_size, 0.35;
hide labels;
ray 1600,1000;
png ${1:4PCO}.png
""""
delete all;
fetch 4PCO, type=pdb,async=0;
select G2G3, ( ((resi 2 or resi 3) and chain A) or ((resi 8 or resi 9) and chain B) );
hide everything, element h; 
remove not G2G3;
bg_color white;
show sticks;
set stick_radius=0.14;
set stick_ball, on; 
set stick_ball_ratio,1.9;
set_view (-0.75,0.09,0.66,-0.2,0.92,-0.35,-0.64,-0.39,-0.67,-0.0,-0.0,-43.7,7. 24,9.55,11.78,29.46,57.91,-20.0);
hide everything, element H;
select carbon1, element C and (resi 3 or resi 8) 
# select lower base pair;
select carbon2, element C and (resi 2 or resi 9) 
#select upper base pair;
color gray70,carbon1;
color gray10,carbon2;
space cmyk;
distance hbond1,/4PCO//B/U`9/N3,/4PCO//A/G`2/O6;
distance hbond2,/4PCO//B/U`9/O2,/4PCO//A/G`2/N1;
distance hbond3,/4PCO//A/U`3/N3,/4PCO//B/G`8/O6;
distance hbond4,/4PCO//A/U`3/O2,/4PCO//B/G`8/N1;
color black, hbond1;
color black, hbond2;
color gray70, hbond3;
color gray70, hbond4;
show nb_spheres;
set nb_spheres_size, 0.35;
hide labels;
ray 1600,1000;
png 4PCO.png
