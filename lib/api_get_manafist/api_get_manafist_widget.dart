import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ApiGetManafistWidget extends StatefulWidget {
  const ApiGetManafistWidget({Key key}) : super(key: key);

  @override
  _ApiGetManafistWidgetState createState() => _ApiGetManafistWidgetState();
}

class _ApiGetManafistWidgetState extends State<ApiGetManafistWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'كلبمات',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'صور ',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'ارقام',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.network(
                        'https://picsum.photos/seed/768/600',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                        child: Image.network(
                          'https://picsum.photos/seed/768/600',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.network(
                        'https://picsum.photos/seed/768/600',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '554',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        '554',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        '554',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                      Text(
                        '554',
                        style: FlutterFlowTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
