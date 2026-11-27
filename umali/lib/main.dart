import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:umali/screens/home_screen.dart';
import 'package:umali/screens/newsfeed_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BlushNet',
          routes: {
            '/home': (context) => const HomeScreen(),
            '/newsfeed': (context) => const NewsfeedScreen(),
          },
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
