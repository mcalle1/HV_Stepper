# HV_Stepper
A HV stepping program for WATCHMAN PMT's

## Compiling:

To compile this program, run the following command:

g++ -v -std=c++11 -I/path/to/ROOT/include readHam.cc -o readHam -L/path/to/ROOT/lib -Wl,-rpath,/path/to/ROOT/lib -lCore -lRIO -lRooFit -lRooFitCore -lRooStats -lHist -lTree -lMatrix -lPhysics -lMathCore

If using make, open the makefile and replace the filepaths in the variables INCLUDES, LFLAGS, and LDFLAGS with your local filepaths. In a future update, I will try to make this step unnecessary.

## Issues:

Linker cannot find TDirectoryFile::mkdir() definition.


