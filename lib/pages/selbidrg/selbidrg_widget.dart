import '/cards/card3bal/card3bal_widget.dart';
import '/cards/card3bola/card3bola_widget.dart';
import '/cards/card3ker/card3ker_widget.dart';
import '/cards/card3kub/card3kub_widget.dart';
import '/cards/card3lim/card3lim_widget.dart';
import '/cards/card3sil/card3sil_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'selbidrg_model.dart';
export 'selbidrg_model.dart';

class SelbidrgWidget extends StatefulWidget {
  const SelbidrgWidget({super.key});

  @override
  _SelbidrgWidgetState createState() => _SelbidrgWidgetState();
}

class _SelbidrgWidgetState extends State<SelbidrgWidget> {
  late SelbidrgModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelbidrgModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/bg7.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: SizedBox(
                  width: double.infinity,
                  height: 500.0,
                  child: CarouselSlider(
                    items: [
                      wrapWithModel(
                        model: _model.card3kubModel,
                        updateCallback: () => setState(() {}),
                        child: const Card3kubWidget(),
                      ),
                      wrapWithModel(
                        model: _model.card3bolaModel,
                        updateCallback: () => setState(() {}),
                        child: const Card3bolaWidget(),
                      ),
                      wrapWithModel(
                        model: _model.card3silModel,
                        updateCallback: () => setState(() {}),
                        child: const Card3silWidget(),
                      ),
                      wrapWithModel(
                        model: _model.card3kerModel,
                        updateCallback: () => setState(() {}),
                        child: const Card3kerWidget(),
                      ),
                      wrapWithModel(
                        model: _model.card3limModel,
                        updateCallback: () => setState(() {}),
                        child: const Card3limWidget(),
                      ),
                      wrapWithModel(
                        model: _model.card3balModel,
                        updateCallback: () => setState(() {}),
                        child: const Card3balWidget(),
                      ),
                    ],
                    carouselController: _model.carouselController ??=
                        CarouselController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.7,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.4,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: false,
                      onPageChanged: (index, _) =>
                          _model.carouselCurrentIndex = index,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.sizeOf(context).height * 0.06,
                      maxWidth: MediaQuery.sizeOf(context).width * 0.3,
                      maxHeight: MediaQuery.sizeOf(context).height * 0.08,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('selection');
                          },
                          text: 'KEMBALI',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: double.infinity,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 50.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).accent1,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
