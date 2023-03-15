import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_blog/screens/start_page.dart';
import 'package:recipe_blog/screens/splash/splash.dart';
import 'constants/app_color.dart';
/*
Don't remove this tag, but you can.
Designed BY ==
┏━━━┳━━━┓┏━━━┳━━━┳┓╋┏┳━┓┏━┳━━━┳━┓╋┏┓
┃┏━┓┃┏━┓┃┃┏━┓┃┏━┓┃┃╋┃┃┃┗┛┃┃┏━┓┃┃┗┓┃┃
┃┃╋┃┃┗━┛┃┃┗━┛┃┃╋┃┃┗━┛┃┏┓┏┓┃┃╋┃┃┏┓┗┛┃
┃┗━┛┃┏┓┏┛┃┏┓┏┫┗━┛┃┏━┓┃┃┃┃┃┃┗━┛┃┃┗┓┃┃
┃┏━┓┃┃┃┗┓┃┃┃┗┫┏━┓┃┃╋┃┃┃┃┃┃┃┏━┓┃┃╋┃┃┃
┗┛╋┗┻┛┗━┛┗┛┗━┻┛╋┗┻┛╋┗┻┛┗┛┗┻┛╋┗┻┛╋┗━┛
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Recipe Blog',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home:Splash(),
    );
  }
}
