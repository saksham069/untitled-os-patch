# Compiler and flags
CC      = gcc
CFLAGS  = -Wall -I./src/include -I./src
LDFLAGS =

# Directories
SRC_DIR   = src
BUILD_DIR = build
BIN       = $(BUILD_DIR)/untitled_os_patch

# Source and object files
SRC = $(wildcard $(SRC_DIR)/**/*.c) $(SRC_DIR)/main.c
OBJ = $(patsubst $(SRC_DIR)/%.c,$(BUILD_DIR)/%.o,$(SRC))

# Default target
all: build run

# Build binary
build: $(BIN)

$(BIN): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

# Compile object files into build/
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

# Run the binary
run: $(BIN)
	./$(BIN)

# Clean build files
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all build run clean