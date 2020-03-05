import os
from glob import glob1

out_dir = os.sep + 'rs'
f_dest =os.sep.join("/home/bianca/paper_mestrado_codes_results/caete_results_server".split('/'))

if __name__ == "__main__":
    f_dest += out_dir
    if not os.path.exists(f_dest):
        os.mkdir(f_dest)
    f_from = "bianca@sombrero.cpa.unicamp.br:/d/c1/homes/amazonfaceme/bianca/csv_*"
    #f_from = "bianca@sombrero.cpa.unicamp.br:/d/c1/homes/amazonfaceme/bianca/results/out20PLS_assembled/*"
    #f_from = "'ecologia@atomic.rc.unesp.br:/home/ecologia/results2/out500*'"
    command ='scp -r'
    os.system('%s %s %s'%(command, f_from, f_dest))
    os.system('python3 untar.py')


