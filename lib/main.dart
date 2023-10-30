import 'dart:async';

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app/common/common.dart';
import 'generated/l10n.dart';
import 'utils/locale_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      locale: LocaleUtils.getLocale(),
      title: "Activity Organization",
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      //   useMaterial3: true,
      // ),
      // home: MyHomePage(title: ''),
      home: MyHomePage(title: S.of(context).titleHome),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 100;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
    //   setState(() {
    //     _counter2--;
    //     if (_counter2 == 0) {
    //       _timer.cancel();
    //     }
    //   });
    // });
  }

  @override
  void dispose() {
    // _timer.cancel();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(S.of(context).titleHome),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // MainAxisAlignmentFlex(),
            const Text(
              'Hello, Flutter, Are you ok? \nYou have pushed the button this many times:',
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const BottomBar()
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}