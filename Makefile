include .env

CFLAGS = -std=c++17 -I. -I$(VULKAN_SDK_PATH)/include
LDFLAGS = -L$(VULKAN_SDK_PATH)/lib `pkg-config --static --libs glfw3` -lvulkan

main: main.cpp
	g++ $(CFLAGS) -o main main.cpp $(LDFLAGS)

.PHONY: test clean

test: main
	./main

clean:
	rm -f main