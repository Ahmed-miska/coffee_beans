import 'package:coffee_beans/core/routing/app_router.dart';
import 'package:coffee_beans/core/routing/routs.dart';
import 'package:coffee_beans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeApp extends StatelessWidget {
  final AppRouter appRouter;
  const CoffeeApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Coffee Beans',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBrown,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
