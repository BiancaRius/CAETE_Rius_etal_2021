import os
from glob import glob1
from results_pull import f_dest
from results_pull import out_dir as od

root_dir = os.getcwd()
os.chdir(os.sep.join([f_dest, od]))
out_dir = os.getcwd()

for f in os.listdir(os.getcwd()):
    if os.path.isdir(f):
        os.chdir(f)
        f_cont = glob1(os.getcwd(), '*.tar.gz')
        if len(f_cont) > 0:
            for i in f_cont:
                #out_name = i.split('.')[0] + .nc
                os.system('tar -xvzf %s' %i)
                os.system('rm -rf %s' %i)
        else:
            pass
        os.chdir(out_dir)
os.chdir(root_dir)

nome_da_pasta = input("rename rs folder: ") #for renaming rs folder automatically
os.rename('rs', nome_da_pasta)
