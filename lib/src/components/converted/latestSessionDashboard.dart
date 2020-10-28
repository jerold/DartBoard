import 'package:wui_builder/vhtml.dart';

VNode latestSessionDashboard() => new Vdiv()
  ..children = [
    new Vsection()
      ..className = "section"
      ..children = [
        new Vdiv()
          ..className = "container"
          ..children = ["Loading latest session..."],
      ],
  ];
