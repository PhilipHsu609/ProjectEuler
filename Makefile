CXX = clang++
CXXFLAGS = -Wall -Wextra -std=c++17

SRCS := $(shell fd -g "*.cpp" src)
BINS := $(SRCS:%.cpp=%)

all: $(BINS)

%: %.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f $(BINS)