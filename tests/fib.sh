emcc fib.c \
  -Os \
  -s WASM=1 \
  -s MODULARIZE=1 \
  -s DEMANGLE_SUPPORT=1 \
  -s "EXPORTED_FUNCTIONS=['_fib']" \
  -s EXPORTED_RUNTIME_METHODS=cwrap \
  -o fib.js