CC = gcc
CFLAGS =
TARGET = 20151607
OBJS = lex.yy.o tiny.tab.o util.o main.o

$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) -lfl

lex.yy.o : lex.yy.c tiny.tab.c
	$(CC) $(CFLAGS) -c -o lex.yy.o lex.yy.c -lfl

lex.yy.c : tiny.l
	flex tiny.l

tiny.tab.o : tiny.tab.c lex.yy.c
	$(CC) $(CFLAGS) -c -o tiny.tab.o tiny.tab.c

tiny.tab.c tiny.tab.h : tiny.y
	bison -d tiny.y

util.o : util.c
	$(CC) $(CFLAGS) -c -o util.o util.c
	
main.o : main.c
	$(CC) $(CFLAGS) -c -o main.o main.c

clean :
	rm lex.yy.c tiny.tab.c tiny.tab.h *.o 20151607

