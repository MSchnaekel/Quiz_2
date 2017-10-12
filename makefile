all: build doc doczip

build: course.o college.o collegemain.o
	g++ -o tarray.h node.h course.o college.o collegemain.o


course.o: course.h course.cc
	g++ -c course.cc

college.o: college.h college.cc
	g++ -c college.cc

collegemain.o: collegemain.cc
	g++ -c collegemain.cc

clean:
	rm -r *.o html latex a.out *.class

myexe:
	chmod +x collegemain.cc college.cc course.cc

doczip:
	zip doczip.zip html latex *.cc *.h
	
doc:
	doxygen *.cc *.h
