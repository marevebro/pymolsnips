""""
python;
import datetime;
from pymol import cmd; 
DT =datetime.datetime.now().strftime("yr%Ymo%mday%dhr%Hmin%M");
s = str(DT); 
cmd.save(stemName+s+".pse"); 
end python;
""""
python;
import datetime;
from pymol import cmd; 
DT =datetime.datetime.now().strftime("yr%Ymo%mday%dhr%Hmin%M");
s = str(DT); 
cmd.save(stemName+s+".pse"); 
end python;
