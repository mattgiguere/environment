# .bashrc                                                                               

# Source global definitions                                                             
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions                                                   

export PATH=/home/fas/fischer/mjg22/local/bin:$PATH

module load Langs/Python/2.7.9
module load Libs/NUMPY/1.9.1
module load Libraries/SCIPY/0.14.1
module load MPI/OpenMPI/1.6.5
module load Libs/MPI4PY/1.3.1

### Add the github SSH key to so that repos can be updated:                             
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_omega

### Add custom installed python packages to my python path                              
### To install these, you need to use Python 2.7.3 because                              
### pip does not exist in the more recent modules                                       
### module load Compilers/Python/2.7.3                                                  
### pip install --install-option="--prefix=~/local/" package_name                       
###for example                                                                          
### pip install --install-option="--prefix=~/local/" argparse                           
export PYTHONPATH=/home/fas/fischer/mjg22/local/lib/python2.7/site-packages:$PYTHONPATH
export PYTHONPATH=/home/fas/fischer/mjg22/projects:$PYTHONPATH
