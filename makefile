# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra

# Name of executable
TARGET = program

# Object files
OBJS = main.o isOdd.o isEven.o

# Build everything
all: $(TARGET)

# Build the program
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)


# Compile main.c
main.o: main.c  isOdd.h isEven.h
	$(CC) $(CFLAGS) -c main.c


# Compile isOdd.c
example1.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c


# Compile isEven.c
example2.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c


# Remove compiled files
clean:
	rm -f $(OBJS) $(TARGET)
