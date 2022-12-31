OBJS	= building.o evidence.o functions.o ghost.o hunter.o room.o main.o
SOURCE	= building.c evidence.c functions.c ghost.c hunter.c room.c main.c
HEADER	= defs.h
OUT	= a5
CC	 = gcc
FLAGS	 = -g -c -Wall
LFLAGS	 = -lpthread

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

building.o: building.c
	$(CC) $(FLAGS) building.c 

evidence.o: evidence.c
	$(CC) $(FLAGS) evidence.c 

functions.o: functions.c
	$(CC) $(FLAGS) functions.c 

ghost.o: ghost.c
	$(CC) $(FLAGS) ghost.c 

hunter.o: hunter.c
	$(CC) $(FLAGS) hunter.c 

room.o: room.c
	$(CC) $(FLAGS) room.c 

main.o: main.c
	$(CC) $(FLAGS) main.c 


clean:
	rm -f $(OBJS) $(OUT)