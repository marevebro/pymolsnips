""""
""""AveBResiX, prints the resiude number and the average bfactor. 
Uses reduce and lambda, builtin Python functional porgramming functions. 
Note that you need to convert the length of the list of Bfactors from an integer to a float before division into the sum. 
"""
Bfactors = []; 
iterate (resi ${1:133}), Bfactors.append(b);
print( "Average B-factor of residue ", %{1:133} , "   = ", "%.2f" %(reduce(lambda x, y: x + y, Bfactors) / float(len(Bfactors))) )
""""
""""AveBResiX, prints the resiude number and the average bfactor. 
Uses reduce and lambda, builtin Python functional porgramming functions. 
Note that you need to convert the length of the list of Bfactors from an integer to a float before division into the sum. 
"""
Bfactors = []; 
iterate (resi 133), Bfactors.append(b);
print( "Average B-factor of residue ", %{1:133 , "   = ", "%.2f" %(reduce(lambda x, y: x + y, Bfactors) / float(len(Bfactors))) )
