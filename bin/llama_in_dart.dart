import 'package:llama_in_dart/llama_bindings.dart';

void main() {
  final timestamp = ggmlTimeMs();
  print('현재 ggml 시간(ms): $timestamp');
}
