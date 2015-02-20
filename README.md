# Urho3D-standalone

A standalone example copied from Urho3D, for my own educational purposes.  I wanted to get
familiar with CMake and how to get things linked up to Urho3D outside of the Urho3D 
directory.  Specifically, I've copied over the 34_DynamicGeometry example.


# Installation

You should install Urho3D first:

Main website:  http://urho3d.github.io/

Github development:  https://github.com/urho3d/Urho3D

Then proceed with Option 1 if possible.

## Option 1

On Linux, try this first:

    mkdir build
    cd build
    cmake ../Source
    make

Now you should have gotten a Bin folder in your root urho3d-standalone directory.  But you
are not quite finished yet.  You need to symlink Urho's Data and CoreData folders into this
Bin directory.  From the root directory: 
    
    ln -s /home/lowagner/code/Urho3D/Bin/CoreData Bin
    ln -s /home/lowagner/code/Urho3D/Bin/Data Bin

where you should change the path to your relevant Urho3D installation directory.  Then
you can run the program `./Bin/34_DynamicGeometry`.


## Option 2

If option 1 has problems, or you are on Windows, try editing Source/CMakeLists.txt, 
specifically the CMAKE_MODULE_PATH, to give the right directory for Urho3D.  You
may comment the first line and uncomment the second line if you have a custom 
directory for Urho3D somewhere.  After editing CMakeLists.txt, then try:

    mkdir build
    cd build
    export URHO3D_HOME=/home/lowagner/code/Urho3D && cmake ../Source
    make

In the above, my root Urho3D directory is in /home/lowagner/code/Urho3D.  Then
proceed with the symlinking (or copying, if you prefer) from the second step in
Option 1.

If you continue to have problems with cmake, see
http://urho3d.github.io/documentation/1.32/_using_library.html for more help.  
