""""
bg_color white
hide everything
show spheres
set  stick_radius = 0.1
hide everything, HET
show spheres, HET
set sphere_quality=3
show sticks, resi 1102
from pymol import stored
# set the stored array equal to the b−values; or use your own values 
stored.bb = [ ]
iterate, stored.bb.append(b)
# execute a python−block
python
# scale the b−values
M = max(stored.bb)
scaledBB = map(lambda x: float (x/M), stored.bb)
count = 0
# set the sphere radii independently
for x in scaledBB:
  cmd.set("sphere_scale", x ,"ID %s"%count)
  count = count + 1
python end
spectrum b, selection=4gdx
space cmyk
set specular_intensity , 0.25
""""
bg_color white
hide everything
show spheres
set  stick_radius = 0.1
hide everything, HET
show spheres, HET
set sphere_quality=3
show sticks, resi 1102
from pymol import stored
# set the stored array equal to the b−values; or use your own values 
stored.bb = [ ]
iterate, stored.bb.append(b)
# execute a python−block
python
# scale the b−values
M = max(stored.bb)
scaledBB = map(lambda x: float (x/M), stored.bb)
count = 0
# set the sphere radii independently
for x in scaledBB:
  cmd.set("sphere_scale", x ,"ID %s"%count)
  count = count + 1
python end
spectrum b, selection=4gdx
space cmyk
set specular_intensity , 0.25
