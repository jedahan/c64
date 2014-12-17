NAME = postcard

CC = petcat
CFLAGS = -w2

all: $(NAME).prg
	@x64 $(NAME).prg

%.prg: %.bas
	$(CC) $(CFLAGS) -o $@ -- $<

clean:
	@rm -f $(NAME).prg

.PHONY: all clean
