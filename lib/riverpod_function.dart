import 'package:riverpod_annotation/riverpod_annotation.dart';
part "riverpod_function.g.dart";

@riverpod
String intToStringConverter(IntToStringConverterRef ref, int number){
  return '${number}';
}