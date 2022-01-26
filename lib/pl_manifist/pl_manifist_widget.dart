import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PlManifistWidget extends StatefulWidget {
  const PlManifistWidget({Key key}) : super(key: key);

  @override
  _PlManifistWidgetState createState() => _PlManifistWidgetState();
}

class _PlManifistWidgetState extends State<PlManifistWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: FutureBuilder<ApiCallResponse>(
                future: ProductCatCall.call(),
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
                  final listViewProductCatResponse = snapshot.data;
                  return Builder(
                    builder: (context) {
                      final catli = getJsonField(
                            (listViewProductCatResponse?.jsonBody ?? ''),
                            r'''$''',
                          )?.toList() ??
                          [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: catli.length,
                        itemBuilder: (context, catliIndex) {
                          final catliItem = catli[catliIndex];
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: Color(0xFFF5F5F5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 10, 0, 0),
                                          child: Container(
                                            width: 150,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: Text(
                                                      ProductCatCall.catID(
                                                        (listViewProductCatResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                          .bodyText1,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          ProductCatCall.call(),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitSpinningCircle(
                                                                color: Color(
                                                                    0xFFFF5757),
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final textProductCatResponse =
                                                            snapshot.data;
                                                        return Text(
                                                          ProductCatCall
                                                              .catName(
                                                            (textProductCatResponse
                                                                    ?.jsonBody ??
                                                                ''),
                                                          ).toString(),
                                                          style:
                                                              FlutterFlowTheme
                                                                  .bodyText1,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 200,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEEEEEE),
                                          ),
                                          child: Image.network(
                                            'https://picsum.photos/seed/81/600',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
