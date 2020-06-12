import 'dart:io';
import 'package:path/path.dart' show dirname, join, normalize;
import 'package:json_to_dart/json_to_dart.dart';

String _scriptPath() {
  var script = Platform.script.toString();
  if (script.startsWith('file://')) {
    script = script.substring(7);
  } else {
    final idx = script.indexOf('file:/');
    script = script.substring(idx + 5);
  }
  return script;
}

void main() {
  final classGenerator = ModelGenerator('Sample', true);
  final currentDirectory = dirname(_scriptPath());
  final filePath = normalize(join(currentDirectory, 'sample.json'));
  final jsonRawData = File(filePath).readAsStringSync();
  DartCode dartCode = classGenerator.generateDartClasses(jsonRawData);
  print(dartCode.code);
}
