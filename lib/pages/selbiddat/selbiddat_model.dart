import '/cards/cardbelk/cardbelk_widget.dart';
import '/cards/cardjaja/cardjaja_widget.dart';
import '/cards/cardlay/cardlay_widget.dart';
import '/cards/cardling/cardling_widget.dart';
import '/cards/cardperp/cardperp_widget.dart';
import '/cards/cardseg/cardseg_widget.dart';
import '/cards/cardtrap/cardtrap_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selbiddat_widget.dart' show SelbiddatWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SelbiddatModel extends FlutterFlowModel<SelbiddatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for cardperp component.
  late CardperpModel cardperpModel;
  // Model for cardseg component.
  late CardsegModel cardsegModel;
  // Model for cardjaja component.
  late CardjajaModel cardjajaModel;
  // Model for cardtrap component.
  late CardtrapModel cardtrapModel;
  // Model for cardbelk component.
  late CardbelkModel cardbelkModel;
  // Model for cardlay component.
  late CardlayModel cardlayModel;
  // Model for cardling component.
  late CardlingModel cardlingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cardperpModel = createModel(context, () => CardperpModel());
    cardsegModel = createModel(context, () => CardsegModel());
    cardjajaModel = createModel(context, () => CardjajaModel());
    cardtrapModel = createModel(context, () => CardtrapModel());
    cardbelkModel = createModel(context, () => CardbelkModel());
    cardlayModel = createModel(context, () => CardlayModel());
    cardlingModel = createModel(context, () => CardlingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    cardperpModel.dispose();
    cardsegModel.dispose();
    cardjajaModel.dispose();
    cardtrapModel.dispose();
    cardbelkModel.dispose();
    cardlayModel.dispose();
    cardlingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
