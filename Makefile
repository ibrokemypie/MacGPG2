all: compile

update:
	@git submodule foreach git pull origin master
	@git pull

compile:
	@./build-homebrew.sh

clean:
	@./build-homebrew.sh clean

dmg: compile
	./Dependencies/GPGTools_Core/scripts/create_dmg.sh
