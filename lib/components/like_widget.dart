import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LikeWidget extends StatefulWidget {
  const LikeWidget({
    Key key,
    this.likeColor,
    this.liked,
  }) : super(key: key);

  final Color likeColor;
  final bool liked;

  @override
  _LikeWidgetState createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: widget.likeColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x2F1D2429),
              offset: Offset(0, 3),
            )
          ],
          shape: BoxShape.circle,
        ),
        child: ToggleIcon(
          onPressed: () async {
            setState(() => FFAppState().like = !FFAppState().like);
          },
          value: FFAppState().like,
          onIcon: Icon(
            Icons.favorite_sharp,
            color: Color(0xFF7A0D0D),
            size: 25,
          ),
          offIcon: Icon(
            Icons.favorite_sharp,
            color: FlutterFlowTheme.tertiaryColor,
            size: 25,
          ),
        ),
      ),
    );
  }
}
