#!/bin/bash

set -e

# Cheyenne
#BASEDIR=/glade/work/jedipara/cheyenne/opt/modules/modulefiles/mpi/gnu/10.1.0/openmpi/4.1.0
# Orion
BASEDIR=/work/noaa/da/jedipara/opt/modules/modulefiles/mpi/gnu/10.2.0/openmpi/4.0.4
cd $BASEDIR
pwd
 
cd eckit
ln -svf ecmwf-1.16.0.lua default
pwd
ls -l --color
cd ..

cd fckit
ln -svf ecmwf-0.9.2.lua default
pwd
ls -l --color
cd ..

cd atlas
ln -svf ecmwf-0.24.1.lua default
pwd
ls -l --color
cd ..

cd odc
pwd
if [ -f "ecmwf-2021.03.0.lua" ]; then
  ln -svf ecmwf-2021.03.0.lua default
fi
ls -l --color
cd ..
