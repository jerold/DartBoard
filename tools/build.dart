import 'dart:async';

import 'package:build/build.dart';
import 'package:built_value_generator/built_value_generator.dart';
import 'package:source_gen/source_gen.dart';

Future main(List<String> args) async {
  await build(
      new PhaseGroup.singleAction(
          new GeneratorBuilder([
            new BuiltValueGenerator(),
          ]),
          new InputSet('dartboard', const ['lib/model.dart'])),
      deleteFilesByDefault: true);
}
