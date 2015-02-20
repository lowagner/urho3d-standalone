#!/bin/bash

URHO3D_HOME=/home/lowagner/code/Urho3D

mkdir build
cd build
export URHO3D_HOME=$URHO3D_HOME && cmake ../src
make
cd ..

if [ -f bin ]
then
    rm bin
elif [ -d bin ]
then
    rm -r bin
fi
ln -s build/bin bin

ln -s $URHO3D_HOME/bin/CoreData bin
ln -s $URHO3D_HOME/bin/Data bin

