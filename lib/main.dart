import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/features/common/Palette/palette.dart';
import 'package:news_app/features/home/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 875),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) =>
      MaterialApp(
        title: 'Davedevs News App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Palette.bgColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: Palette.bgColor,
          )
        ),
        home: const HomePage(),
      ),
    );
  }
}