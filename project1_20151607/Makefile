CC = gcc
CFLAGS =
TARGET = 20151607

$(TARGET) : main.o util.o lex.yy.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o util.o lex.yy.o -lfl

main.o : main.c
	$(CC) $(CFLAGS) -c -o main.o main.c

util.o : util.c
	$(CC) $(CFLAGS) -c -o util.o util.c

lex.yy.c : tiny.l
	flex tiny.l

lex.yy.o : lex.yy.c
	$(CC) $(CFLAGS) -c -o lex.yy.o lex.yy.c -lfl

clean :
	rm *.o 20151607
	rm lex.yy.c
