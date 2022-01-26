import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'auth/firebase_user_provider.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import 'package:muswiq/home_page/home_page_widget.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home_page/home_page_widget.dart';
import 'categories/categories_widget.dart';
import 'single_product/single_product_widget.dart';
import 'pl_manifist/pl_manifist_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Stream<MuswiqFirebaseUser> userStream;
  MuswiqFirebaseUser initialUser;
  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();
    userStream = muswiqFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'muswiq',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: initialUser == null || displaySplashImage
          ? Container(
              color: Color(0xFFFF5757),
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/___.png',
                  fit: BoxFit.none,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : HomePageWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'login';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'categories': CategoriesWidget(),
      'singleProduct': SingleProductWidget(),
      'plManifist': PlManifistWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: GNav(
        selectedIndex: currentIndex,
        onTabChange: (i) =>
            setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        color: Colors.black,
        activeColor: FlutterFlowTheme.tertiaryColor,
        tabBackgroundColor: FlutterFlowTheme.primaryColor,
        tabActiveBorder: Border.all(
          color: FlutterFlowTheme.primaryColor,
          width: 2,
        ),
        tabBorderRadius: 25,
        tabMargin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
        padding: EdgeInsetsDirectional.fromSTEB(33, 3, 3, 3),
        gap: 50,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        duration: Duration(milliseconds: 6),
        haptic: true,
        tabs: [
          GButton(
            icon: currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
            text: 'الرئيسية',
            iconSize: 24,
          ),
          GButton(
            icon: currentIndex == 1
                ? Icons.category_rounded
                : Icons.category_outlined,
            text: 'الاقسام',
            iconSize: 24,
          ),
          GButton(
            icon: Icons.home_outlined,
            text: 'Home',
            iconSize: 24,
          ),
          GButton(
            icon: Icons.home_outlined,
            text: 'Home',
            iconSize: 24,
          )
        ],
      ),
    );
  }
}
