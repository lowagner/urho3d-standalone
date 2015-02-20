# Urho3D-standalone

A standalone example copied from Urho3D, for my own educational purposes.  I wanted to get
familiar with CMake and how to get things linked up to Urho3D outside of the Urho3D 
directory.  Specifically, I've copied over the 34_DynamicGeometry example.


# Installation

You should install the development version of Urho3D first:

https://github.com/urho3d/Urho3D

Main website for wiki and build instructions:  http://urho3d.github.io/


## Install script

On Linux:   edit the install.sh script, and put in the root directory of your Urho3D 
installation (URHO3D_HOME).  Then you should be able to run the install script via
`./install.sh`.  At the end, you will have a bin folder with your executable
(34_DynamicGeometry) if you are lucky.

If you have problems with cmake, you may need to adjust src/CMakeLists.txt; see
http://urho3d.github.io/documentation/HEAD/_using_library.html
for more help.  
