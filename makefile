clean:
	rm -f src/*.js 

build: clean
	coffee -o src/ -c src/coffee  
