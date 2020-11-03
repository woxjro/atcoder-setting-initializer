num = 000

abc: template/template.cpp
	mkdir abc${num}
	mkdir abc${num}/build
	mkdir abc${num}/samples

	mkdir abc${num}/samples/a
	mkdir abc${num}/samples/b
	mkdir abc${num}/samples/c
	mkdir abc${num}/samples/d
	mkdir abc${num}/samples/e
	mkdir abc${num}/samples/f

	mkdir abc${num}/samples/a/input
	mkdir abc${num}/samples/b/input
	mkdir abc${num}/samples/c/input
	mkdir abc${num}/samples/d/input
	mkdir abc${num}/samples/e/input
	mkdir abc${num}/samples/f/input

	mkdir abc${num}/samples/a/output
	mkdir abc${num}/samples/b/output
	mkdir abc${num}/samples/c/output
	mkdir abc${num}/samples/d/output
	mkdir abc${num}/samples/e/output
	mkdir abc${num}/samples/f/output
	
	python3 ./template/getSamples.py abc${num}

	cat ./template/Makefile > ./abc${num}/Makefile
	cat ./template/template.cpp > ./abc${num}/a.cpp 
	cat ./template/template.cpp > ./abc${num}/b.cpp 
	cat ./template/template.cpp > ./abc${num}/c.cpp 
	cat ./template/template.cpp > ./abc${num}/d.cpp 
	cat ./template/template.cpp > ./abc${num}/e.cpp 
	cat ./template/template.cpp > ./abc${num}/f.cpp 
