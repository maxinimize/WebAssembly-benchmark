emcc multiplyDoubleVec.c \
  -Os \
  -s WASM=1 \
  -s MODULARIZE=1 \
  -s DEMANGLE_SUPPORT=1 \
  -s ALLOW_MEMORY_GROWTH=1 \
  -s "EXPORTED_FUNCTIONS=['_multiplyDoubleVec', '_malloc', '_free']" \
  -s EXPORTED_RUNTIME_METHODS=cwrap  \
  -o multiplyDoubleVec.js
