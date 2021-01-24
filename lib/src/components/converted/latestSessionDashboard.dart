import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode LatestSessionDashboard() => Vdiv()
  ..children = [
    Vsection()
      ..className = 'section'
      ..children = [
        Vdiv()
          ..className = 'container'
          ..text = 'Loading latest session...',
      ],
  ];
