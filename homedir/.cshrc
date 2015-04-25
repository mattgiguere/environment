#SETUP SCISOFT ENVIRONMENT
#source /Applications/scisoft/all/bin/Setup.csh

##################################################
#This will allow for using this .cshrc either on
#the cluster or on my laptop:
##################################################
set MDIR = ${HOME}'/'

setenv XAUTHORITY /tmp/.Xauthority.$USER                                                                                 
#set prompt= "mg@`hostname`:"

setenv AeroFSdir /mg/AeroFS/


#SETUP PYTHON ENVIRONMENT
##################################################
setenv PYTHONPATH ${MDIR}projects

#THIS IS FOR ANACONDA PYTHON
# added by Anaconda 1.6.1 installer
setenv PATH /Applications/anaconda/bin:$PATH

#ADD GTK to the PATH:
setenv PATH ${PATH}:/opt/gtk/bin

#SETUP IDL ENVIRONMENT 
#########################################################
if (-e /Applications/exelis) then 
    setenv IDLDIR '/Applications/exelis/idl'     
else        
    setenv IDLDIR /Applications/itt/idl/idl       
endif     

#SETUP EXOFAST ENVIRONMENT                                  
##########################################################  
setenv EXOFAST_PATH /tous/exofast/
setenv ASTRO_DATA /tous/astron/data
#NOTE: IDL_PATH modified in ~/Scripts/chired to point to
#$EXOFAST_PATH

setenv IDL_STARTUP ${MDIR}.idl_startup.pro

#NORMAL PATH:
#setenv IDL_PATH +${MDIR}projects/IDLAstro:+${MDIR}projects:+${MDIR}idl/util:+${MDIR}idl:+$IDLDIR

#EXOFAST PATH:
setenv IDL_PATH +${EXOFAST_PATH}:+/tous/astron/pro:+${IDLDIR}/lib:+${MDIR}projects/idlutil

#OLD BARY PATH:
#setenv IDL_PATH +${HOME}/projects/oldbary:+${HOME}/projects/IDLAstro/pro:+${IDLDIR}/lib

#SME_342 PATH:
#setenv IDL_PATH +${MDIR}projects/sme_342:+${MDIR}projects/astron:+${MDIR}idl/util:+$IDLDIR

#SME PATH:
#setenv IDL_PATH +${MDIR}sme:+${IDLDIR}:+${MDIR}idl

#KFME PATH:
#setenv IDL_PATH .:+~/exolib/KFME:+/Users/matt/idl/util:+${IDLDIR}

#CHIRON PATH:
#setenv IDL_PATH .:+/tous/mir7/pro1:+/Applications/itt/idl/idl:+/tous/mir7/bary:+/Users/matt/idl

#DOPCODE:
#setenv IDL_PATH +${MDIR}idl/CHIRON/chi_dopcode:+/Users/matt/idl/CHIRON/bspline:+/Users/matt/idl/util:+/Users/matt/idl/astron:+$IDLDIR

#
setenv manpath {manpath}:/usr/local/man
#
#
#SET EMACS AS DEFAULT
setenv EDITOR emacs
#
#SETUP CVS ENVIRONMENT
setenv CVSROOT "/usr/local/cvsrep"
setenv CVSEDITOR emacs
#
#
#ADD MY SCRIPTS FOLDER TO THE PATH
################################################
setenv PATH ${MDIR}projects/shellScripts:${MDIR}Scripts:$PATH
setenv PATH ${MDIR}projects/shellScripts/IDL:${MDIR}Scripts:$PATH
setenv PATH ${MDIR}projects/shellScripts/CHIRON:${MDIR}Scripts:$PATH

#ADD /usr/local/bin in order to use gfortran:
setenv PATH ${PATH}:/usr/local/bin

#ADD /Developer/usr/bin to get "as", which is needed for gfortran:
setenv PATH ${PATH}:/Developer/usr/bin

#########################################################
## LATEX STUFF
#########################################################
setenv TEXINPUTS .:/usr/local/texlive/2014/texmf-dist/tex//
setenv BSTINPUTS .:/usr/local/texlive/2014/texmf-dist/tex//
setenv BIBINPUTS .:/usr/local/texlive/2014/texmf-dist/tex//

############################################################
#----------------------------------------------------------
#  SETUP FOR COLOR TERMINAL
#-----------------------------------------------------------
#           The color designators are as follows:

#                 a     black
#                 b     red
#                 c     green
#                 d     brown
#                 e     blue
#                 f     magenta
#                 g     cyan
#                 h     light grey
#                 A     bold black, usually shows up as dark grey
#                 B     bold red
#                 C     bold green
#                 D     bold brown, usually shows up as yellow
#                 E     bold blue
#                 F     bold magenta
#                 G     bold cyan
#                 H     bold light grey; looks like bright white
#                 x     default foreground or background
#   default for LSCOLORS    "exfxcxdxbxegedabagacad"
#           The order of the attributes are as follows:
#
#                   1.   directory
#                   2.   symbolic link
#                   3.   socket
#                   4.   pipe
#                   5.   executable
#                   6.   block special
#                   7.   character special
#                   8.   executable with setuid bit set
#                   9.   executable with setgid bit set
#                   10.  directory writable to others, with sticky bit
#                   11.  directory writable to others, without sticky
#                        bit

setenv CLICOLOR
setenv TERM xterm-color
setenv LSCOLORS  Exfxhxdxcxegedafagacad

#########################################################

#Now source my common alias
source ${MDIR}.alias

