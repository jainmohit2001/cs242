all : prog1 prog2
	.PHONY : clean
prog1 : prog1.o utils.o
	cc prog1.o -o prog1  utils.o
prog2 : prog2.o
	cc -o prog2 prog2.o
clean:
	rm *.o