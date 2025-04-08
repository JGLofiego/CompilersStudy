install:
	sudo apt-get install -f flex
	sudo apt-get install bison

compile:
	bison -d e5.y
	flex e5.l
	cc -o valida lex.yy.c e5.tab.c main.c

test:
	./run_tests.sh

all:
	make install
	make compile
	make test

