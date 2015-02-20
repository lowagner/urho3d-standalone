#!/bin/bash

# edit this variable to be wherever Urho3D has the root directory:
URHO3D_HOME=/home/lowagner/code/Urho3D

# Make the cmake build folder and compile:
mkdir build
cd build
export URHO3D_HOME=$URHO3D_HOME && cmake ../src
make
cd ..

# At the end of the make proccess, you get a bin folder in your build folder.  
# Let's show the bin at the root level, too.  First delete it if it exists:
if [ -f bin ]
then
    rm bin
elif [ -d bin ]
then
    rm -r bin
fi
# then symbolic link, so we see the bin at the root level, too:
ln -s build/bin bin

# we need to pull in some Urho data folders, too.
# we can do this symbolically, or you can copy them over:
ln -s $URHO3D_HOME/bin/CoreData bin
ln -s $URHO3D_HOME/bin/Data bin

