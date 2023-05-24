CC=gcc
CC_LIBS := "/home/shoaib/ShoaibData/gcc-arm-10.2-2020.11-x86_64-aarch64-none-linux-gnu/bin/../aarch64-none-linux-gnu/libc"

all: writer.o writer
writer.o:
	$(CROSS_COMPILE)$(CC) -g -Wall -c -o writer.o writer.c;
writer:
	$(CROSS_COMPILE)$(CC) -g -Wall writer.o -o writer;
clean:
	-rm -f *.o writer *.elf *.map