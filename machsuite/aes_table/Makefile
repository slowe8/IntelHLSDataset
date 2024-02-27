KERN=aes_table
ALG=aes
TESTBENCH=aes_test.c

CFLAGS?=-O3 -Wall -Wno-unused-label

SRCS=$(KERN).c local_support.c ../common/support.c
FILES=$(SRCS) $(TESTBENCH)  $(ALG).h ../common/support.h

$(KERN): $(FILES) ../common/harness.c
	g++ $(CFLAGS) -I../common -o $(KERN) $(SRCS) ../common/harness.c

run: $(KERN) input.data check.data
	./$(KERN) input.data check.data

generate: $(FILES) generate.c
	$(CC) $(CFLAGS) -I../common -o generate $(SRCS) generate.c
	./generate

hls: $(KERN).c $(ALG).h
	i++ -march=Arria10 --simulator none $(SRCS) -ghdl -v -o $(KERN)

cosim: $(FILES)
	i++ -march=Arria10 $(TESTBENCH) $(SRCS) -ghdl -v -o $(KERN)

clean:
	rm -f $(KERN) generate output.data
