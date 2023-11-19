import '/flutter_flow/flutter_flow_util.dart';
import 'card3bola_widget.dart' show Card3bolaWidget;
import 'package:flutter/material.dart';

class Card3bolaModel extends FlutterFlowModel<Card3bolaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
