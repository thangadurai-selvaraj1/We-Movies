import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/index.dart';

import '../../widgets/index.dart';
import '../bloc/location/location_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LocationBloc>().add(LocationRequestedEvent());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            switch (state) {
              case LocationSuccessState():
                Future.delayed(const Duration(seconds: 1), () {
                  context.pushReplacementNamed(path: Routes.homeScreen);
                });
                break;
              case LocationFailureState():
                var snackBar = SnackBar(content: Text(state.message));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Future.delayed(const Duration(milliseconds: 500), () {
                  context.pushReplacementNamed(path: Routes.homeScreen);
                });
                break;
              case LocationInitial():
                break;
            }
          },
          child: const Center(
            child: AppLogo(),
          ),
        ),
      );
}
