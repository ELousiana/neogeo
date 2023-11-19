import '/cards/card3bal/card3bal_widget.dart';
import '/cards/card3bola/card3bola_widget.dart';
import '/cards/card3ker/card3ker_widget.dart';
import '/cards/card3kub/card3kub_widget.dart';
import '/cards/card3lim/card3lim_widget.dart';
import '/cards/card3sil/card3sil_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selbidrg_widget.dart' show SelbidrgWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SelbidrgModel extends FlutterFlowModel<SelbidrgWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for card3kub component.
  late Card3kubModel card3kubModel;
  // Model for card3bola component.
  late Card3bolaModel card3bolaModel;
  // Model for card3sil component.
  late Card3silModel card3silModel;
  // Model for card3ker component.
  late Card3kerModel card3kerModel;
  // Model for card3lim component.
  late Card3limModel card3limModel;
  // Model for card3bal component.
  late Card3balModel card3balModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    card3kubModel = createModel(context, () => Card3kubModel());
    card3bolaModel = createModel(context, () => Card3bolaModel());
    card3silModel = createModel(context, () => Card3silModel());
    card3kerModel = createModel(context, () => Card3kerModel());
    card3limModel = createModel(context, () => Card3limModel());
    card3balModel = createModel(context, () => Card3balModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    card3kubModel.dispose();
    card3bolaModel.dispose();
    card3silModel.dispose();
    card3kerModel.dispose();
    card3limModel.dispose();
    card3balModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
