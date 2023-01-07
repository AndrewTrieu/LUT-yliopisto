# Makefile for "hello"
program: main.o hello_func.o
	gcc hello_func.o main.o -o program 
hello_func.o: hello_func.c
	gcc -c hello_func.c 
main.o: main.c
	gcc -c main.c 

