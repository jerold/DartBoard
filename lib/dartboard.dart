library dartboard;

import 'dart:async';
import 'dart:math';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:firebase/firebase.dart' as firebase;
import 'package:intl/intl.dart';

import 'package:dartboard/model.dart';

// Angular Components

part 'src/app_component.dart';
part 'src/board_component.dart';
part 'src/boards_component.dart';

// Board Model Controller

part 'src/action.dart';
part 'src/client_actions.dart';
part 'src/client_service.dart';

// Common

part 'src/firebase_model_reference.dart';
part 'src/model_reference.dart';