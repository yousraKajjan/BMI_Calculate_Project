// import 'package:bmi_project/BMI2/input_screen.dart';
import 'package:bmi_project/screens/input_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   // ScreenUtil.init(context
//   // designSize: Size(375, 812)
//   // designSize: Size(375, 812),

//   // designSize: Size(375, 812),
//   // allowFontScaling: false,
//   // );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // double screenwidth = MediaQuery.of(context).size.width;
//     // double screenhieht = MediaQuery.of(context).size.height;
//     return ScreenUtilInit(
//       designSize: const Size(360, 690),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (context, child) => MaterialApp(
//         builder: (context, Widget) {
//           // ScreenUtil.setContext(context);
//           return MediaQuery(
//               data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//               child: const InputScreen());
//         },
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           // useMaterial3: true,
//         ),
//         // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//         // home: BmiScreen(),
//         home: const InputScreen(),
//         // home: InputScreen(),
//       ),
//     );
//   }
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: const InputScreen(),
          );
        });
  }
}
