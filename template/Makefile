file := 
sample := 
build :
ifeq (${file},) 
	g++ ./a.cpp -o $@/a.out
	g++ ./b.cpp -o $@/b.out
	g++ ./c.cpp -o $@/c.out
	g++ ./d.cpp -o $@/d.out
	g++ ./e.cpp -o $@/e.out
	g++ ./f.cpp -o $@/f.out
else 
	g++ ./${file}.cpp -o $@/${file}.out
endif

test : ./build/${file}.out
	@echo -----result-----
	@cat ./samples/${file}/input/${sample}.txt | ./build/${file}.out
	@echo -----answer-----
	@cat ./samples/${file}/output/${sample}.txt
run : 
	./build/${file}.out

clean :
	rm ./build/*

.PHONY : build run clean