.PHONY: debug release clean fmt

debug:
	./run.sh debug

release:
	./run.sh release

clean:
	rm -rf .debug .release build

fmt:
	clang-format -i code.cc
