NAME = 10print

CC = petcat
CFLAGS = -w2

all: $(NAME).prg

%.prg: %.bas
	$(CC) $(CFLAGS) -o $@ $(NAME).bas

run: $(NAME).prg
	@x64 $(NAME).prg

clean:
	@rm -f $(NAME).prg

.PHONY: all clean
