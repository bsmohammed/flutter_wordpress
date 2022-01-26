import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialCatWidget extends StatefulWidget {
  const SpecialCatWidget({
    Key key,
    this.co,
  }) : super(key: key);

  final Color co;

  @override
  _SpecialCatWidgetState createState() => _SpecialCatWidgetState();
}

class _SpecialCatWidgetState extends State<SpecialCatWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Color(0x8DFFFFFF),
          elevation: 9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Align(
            alignment: AlignmentDirectional(-0.01, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Container(
                width: 120,
                height: 110,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 10, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Container(
                            width: 180,
                            height: 60,
                            decoration: BoxDecoration(
                              color: widget.co,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.7, -0.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
                        child: FutureBuilder<ApiCallResponse>(
                          future: ProductListsCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpinKitSpinningCircle(
                                    color: Color(0xFFFF5757),
                                    size: 50,
                                  ),
                                ),
                              );
                            }
                            final imageProductListsResponse = snapshot.data;
                            return Image.asset(
                              'assets/images/phone-grey-background.png',
                              width: 55,
                              height: 130,
                              fit: BoxFit.fill,
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.55, 1),
                      child: Text(
                        'الجوالات',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lateef',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
