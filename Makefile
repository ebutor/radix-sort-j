MAINDIR = src/main/java/rsort
TESTDIR = src/test/java/rsort
TESTS   = TestA
all:
	@ echo "Use \"make tests\" to compile the tests"

tests: bin/
	javac -d "./bin" ${MAINDIR}/RadixSorter.java $(foreach test, ${TESTS},${TESTDIR}/${test}.java)
	@ echo "Use \"make run\" to run the tests"

bin/:
	mkdir ./bin

run:
	$(foreach test, ${TESTS},java -cp "./bin" rsort.${test});
