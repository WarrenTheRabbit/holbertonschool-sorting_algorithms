PATH_PROJECT = /root/holbertonschool-sorting_algorithms
PATH_TESTS = $(PATH_PROJECT)/tests
PATH_UNITY = $(PATH_PROJECT)/Unity/src

TEST_RUNNER = $(PATH_TESTS)/test_runner_template.c
TEST_RUNNER_OUT = $(PATH_TESTS)/unity_test_runner.out


.PHONY: clean run 

all: build run

build: $(TEST_RUNNER)
	gcc -I$(PATH_UNITY) $(PATH_UNITY)/unity.c $(TEST_RUNNER) -o $(TEST_RUNNER_OUT)

run: 
	echo -n "$(notdir $(TEST_RUNNER)) tests:"
	$(TEST_RUNNER_OUT)
	echo "\nBash script tests:"
	echo --------------------------------
	bash tests/test_that_BubbleSortFile_contains_BubbleSortFunction.sh

clean:
	rm -f $(TEST_RUNNER_OUT)
