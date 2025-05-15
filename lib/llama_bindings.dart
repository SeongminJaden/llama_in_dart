import 'dart:ffi';
import 'dart:io';

final DynamicLibrary llamaLib = () {
  if (Platform.isWindows) {
    return DynamicLibrary.open('native_libs/windows/llama.dll');
  } else if (Platform.isMacOS) {
    return DynamicLibrary.open('native_libs/macos/libllama.dylib');
  } else {
    return DynamicLibrary.open('native_libs/linux/libllama.so');
  }
}();

final ggmlTimeMs =
    llamaLib.lookupFunction<Uint64 Function(), int Function()>('ggml_time_ms');
