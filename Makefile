CFLAGS    = -g -MMD -MP -Wall -Wextra -Winit-self -Wno-missing-field-initializers
INCLUDE   = -std=c++1z -lboost_python `python-config --cflags` `python-config --ldflags`

.PHONY: all
all: test mat test2

test: test.cpp
	g++ test.cpp -o test $(CFLAGS) $(INCLUDE)

mat: mat.cpp
	g++ mat.cpp -o mat $(CFLAGS) -lboost_numpy $(INCLUDE)

test2: test2.cpp
	g++ test2.cpp -o test2 $(CFLAGS) $(INCLUDE)