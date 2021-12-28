set dotenv-load

alias r := run

export EDITOR := 'nvim'

all: fmt-check lint

default:
  just --list

run name:
	ghc -o x src/{{name}}.hs && ./x
	just clean

clean:
	rm -rf src/*.hi src/*.o ./x

fmt:
	ormolu --mode inplace $(fd --glob *.hs)

fmt-check:
	ormolu --mode check $(fd --glob *.hs)
	@echo formatting check done

lint:
	hlint .

dev-deps:
	brew install hlint ormolu
