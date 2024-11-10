CXX = g++
CXXFLAGS = -Wall -g
SOURCES = main.cpp euler.cpp
HEADERS = euler.h
EXECUTABLE = program

all: $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	rm -f $(EXECUTABLE) *.o
