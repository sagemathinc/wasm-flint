# FLINT: fast library for number theory

This automates the process of building MPFR, MPIR, and FLINT as WASM libraries using emscripten, so they could be used in a web application or from node.js.

## Quickstart

This will download and build the three libraries, assuming you have [installed the emscripten toolchain.](https://emscripten.org/docs/getting_started/downloads.html)

```sh
$ ./build.sh
```

This should take less than a half hour.  They get installed into `build/local` .

## Test a program using FLINT

There are examples in `build/flint-2.7.1/examples` .  For example,  to build `primegen`, do this:

```sh
$ emcc primegen.c -o primegen.js -L$PREFIX/lib -I$PREFIX/include/flint -I$PREFIX/include -lflint -lmpir -lmpfr
```

To run it from node.js:

```sh
$ node primegen.js 20
```

The same instructions should work with any other program there, except for cpp, use `em++`: 

```sh
$ em++ partitions.cpp -o partitions.js -L$PREFIX/lib -I$PREFIX/include/flint -I$PREFIX/include -lflint -lmpir -lmpfr
$ time node partitions.js 100093982083408923         p(1178362907) =969255932718701...362545
real    0m1.429s
```

Note: use the option `-s INITIAL_MEMORY=2146435072` to `emcc` if you want to use more than a tiny amount of RAM.