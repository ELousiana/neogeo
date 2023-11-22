import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'card3ker_model.dart';
export 'card3ker_model.dart';

class Card3kerWidget extends StatefulWidget {
  const Card3kerWidget({super.key});

  @override
  _Card3kerWidgetState createState() => _Card3kerWidgetState();
}

class _Card3kerWidgetState extends State<Card3kerWidget>
    with TickerProviderStateMixin {
  late Card3kerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Card3kerModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL,
      speed: 400,
      front: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(0.00, -1.00),
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: const BoxDecoration(),
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: AutoSizeText(
                      'KERUCUT',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFFB867F4),
                            fontSize: 80.0,
                            fontWeight: FontWeight.w500,
                          ),
                      minFontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: double.infinity,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width * 0.5,
              ),
              decoration: const BoxDecoration(),
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/3kersel.png',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(0.00, 1.00),
              child: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 1.0,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.sizeOf(context).height * 0.06,
                  maxWidth: MediaQuery.sizeOf(context).width * 0.3,
                  maxHeight: MediaQuery.sizeOf(context).height * 0.08,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
      back: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFC9C9C9),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 2.0),
                  spreadRadius: 10.0,
                )
              ],
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
            child: Column(
              children: [
                Align(
                  alignment: const Alignment(0.0, 0),
                  child: FlutterFlowButtonTabBar(
                    useToggleButtonStyle: false,
                    labelStyle: FlutterFlowTheme.of(context).titleMedium,
                    unselectedLabelStyle: const TextStyle(),
                    labelColor: FlutterFlowTheme.of(context).primaryText,
                    unselectedLabelColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    backgroundColor: FlutterFlowTheme.of(context).accent1,
                    unselectedBackgroundColor:
                        FlutterFlowTheme.of(context).alternate,
                    borderColor: FlutterFlowTheme.of(context).primary,
                    unselectedBorderColor:
                        FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    elevation: 0.0,
                    buttonMargin:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                    tabs: const [
                      Tab(
                        text: '?',
                      ),
                      Tab(
                        text: '+',
                      ),
                    ],
                    controller: _model.tabBarController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.3,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 0.8,
                              ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/3kerbg.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: const BoxDecoration(),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'KERUCUT\n',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const TextSpan(
                                        text:
                                            'Kerucut adalah bangun ruang dengan dasar lingkaran yang lebih besar, dan permukaan melengkung yang meruncing ke satu titik di atas. Bentuk ini sering digunakan dalam berbagai konteks. Kerucut dapat ditemukan dalam topi lalu lintas, kerucut es krim, atau bahkan gunung berapi.',
                                        style: TextStyle(),
                                      )
                                    ],
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 0.3,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.sizeOf(context).width * 0.8,
                              ),
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 5.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: FlutterFlowExpandedImageView(
                                          image: Image.asset(
                                            'assets/images/3kerrum.png',
                                            fit: BoxFit.contain,
                                          ),
                                          allowRotation: false,
                                          tag: 'imageTag3',
                                          useHeroAnimation: true,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Hero(
                                    tag: 'imageTag3',
                                    transitionOnUserGestures: true,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/3kerrum.png',
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: const BoxDecoration(),
                                child: RichText(
                                  textScaleFactor:
                                      MediaQuery.of(context).textScaleFactor,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'RUMUS\n\n',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const TextSpan(
                                        text: 'VOLUME: ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: '1/3 π r² t\n',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: 'LUAS SELIMUT : ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: 'π r s\n',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: 'LUASPERMUKAAN : ',
                                        style: TextStyle(),
                                      ),
                                      const TextSpan(
                                        text: 'π r s + π r²',
                                        style: TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 16.0,
                                        ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
