LDFLAGS+= -lpthread 
all:producer-consumer philosopher-dining

producer-consumer: producer-consumer.o thread_pool.o
	gcc producer-consumer.o thread_pool.o -o producer-consumer $(LDFLAGS)

philosopher-dining:philosopher-dining.o thread_pool.o
	gcc philosopher-dining.o thread_pool.o -o philosopher-dining $(LDFLAGS)

producer-consumer.o:producer-consumer.c
	gcc -c producer-consumer.c
philosopher-dining.o:philosopher-dining.c
	gcc -c philosopher-dining.c
thread_pool.o:thread_pool.c
	gcc -c thread_pool.c

clean:
	rm *.o producer-consumer philosopher-dining

