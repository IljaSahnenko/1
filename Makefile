CC = cc
CPP = g++
FLAGS = -O2 -Wall --std=c99
CFLAGS = -O2 -Wall
SV_NAME = server
CL_NAME = lol
SDL_CFLAGS := $(shell sdl2-config --cflags)
SDL_LDFLAGS := $(shell sdl2-config --libs)

# all:

lol: 
#	$(CPP) $(CFLAGS) -o $@ $?
	$(CPP) $(CL_NAME).cpp $(CFLAGS) $(SDL_CFLAGS) $(SDL_LDFLAGS) -o $@ $?


server: $(SV_NAME).c
	$(CC) $(FLAGS) -o $@ $?
	
clean:
	rm -f $(SV_NAME) $(CL_NAME)
