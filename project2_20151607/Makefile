CC = gcc
CFLAGS =
TARGET = 20151607
OBJS = lex.yy.o cminus.tab.o util.o main.o

$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS) -lfl

lex.yy.o : lex.yy.c cminus.tab.c
	$(CC) $(CFLAGS) -c -o lex.yy.o lex.yy.c -lfl

lex.yy.c : cminus.l
	flex cminus.l

cminus.tab.o : cminus.tab.c lex.yy.c
	$(CC) $(CFLAGS) -c -o cminus.tab.o cminus.tab.c

cminus.tab.c cminus.tab.h : cminus.y
	bison -d cminus.y

util.o : util.c
	$(CC) $(CFLAGS) -c -o util.o util.c
	
main.o : main.c
	$(CC) $(CFLAGS) -c -o main.o main.c

clean :
	rm lex.yy.c cminus.tab.c cminus.tab.h *.o 20151607

