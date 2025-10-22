ASY = $(wildcard src/*.asy)
PNG = $(patsubst src/%.asy,png/%.png,$(ASY))
SVG = $(patsubst src/%.asy,svg/%.svg,$(ASY))

all : $(SVG)

png/%.png: src/%.asy
	asy -f png -o png/$* $<

svg/%.svg: src/%.asy
	asy -f svg -o svg/$* $<

clean:
	rm -f $(PNG) $(SVG)
