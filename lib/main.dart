import 'package:activities_app/cubit/activity_cubit.dart';
import 'package:activities_app/style/color_style.dart';
import 'package:activities_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ActivityCubit>(create: (context) => ActivityCubit())
      ],
      child: MaterialApp(
        color: ColorPallate.blueColor,
        debugShowCheckedModeBanner: false,
        initialRoute: PageConstant.homePage,
        routes: routesApp,
      ),
    );
  }
}
