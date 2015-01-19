NAME = bgc

CC = petcat
CFLAGS = -w2

all: $(NAME).prg
	@x64 $(NAME).prg

%.prg: %.bas
	$(CC) $(CFLAGS) -o $@ -- $<

clean:
	@rm -f $(NAME).prg

test: 10print.prg
	@x64 10print.prg

.PHONY: all clean
