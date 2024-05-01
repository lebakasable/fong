RAW_OUTPUT=fong

build: $(RAW_OUTPUT)

$(RAW_OUTPUT): fong.fasm
	fasm $< $@

run: build
	qemu-system-i386 -drive file=$(RAW_OUTPUT),format=raw
