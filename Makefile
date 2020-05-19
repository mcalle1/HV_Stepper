#Makefile for HV_Stepper/readHam

MAIN = readHam
CXX=g++ #compiler
CXXFLAGS = -Wall -std=c++11 #compiler flags
INCLUDES= -I/home/mc/Documents/WATCHMAN/WMUtils/local/include  -Iinclude
LFLAGS = -L/home/mc/Documents/WATCHMAN/WMUtils/local/lib
LDFLAGS = -Wl,-rpath,/home/mc/Documents/WATCHMAN/WMUtils/local/lib
LDLIBS = -lCore -lRIO -lRooFit -lRooFitCore -lRooStats -lHist -lTree -lMatrix -lPhysics -lMathCore
SRC_DIR = src
OBJ_DIR = obj
SRC = $(wildcard $(SRC_DIR)/*.cc) readHam.cc
OBJ = $(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)


#Recipes:
all: $(MAIN)

$(MAIN): $(OBJ)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LDFLAGS) $^ $(LDLIBS) -o $@
    
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CXX) $(INCLUDES) $(CXXFLAGS) -c $< -o $@
    
$(OBJ_DIR):
	mkdir $@
    
clean:
	$(RM) -r $(OBJ_DIR)
    
.PHONY: all clean
