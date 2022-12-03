import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windramayu/colors.dart';
import 'package:windramayu/screen/model_view_model.dart';

import 'package:windramayu/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WisataViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.amber, backgroundColor: cPrimary1),
        home: SplashScreen(),
      ),
    );
  }
}
