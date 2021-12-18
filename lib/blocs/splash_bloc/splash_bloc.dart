import 'package:app/ui/features/landing/landing_screen.dart';
import 'package:app/ui/widgets/wrappers/landing_screen_wrapper.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as t;
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<InitSplash>(_initSplash);
    on<FinishSplash>(_finishSplash);
  }
  void _initSplash(InitSplash event, Emitter<SplashState> emit) async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 1200));
    add(FinishSplash());
  }

  void _finishSplash(FinishSplash event, Emitter<SplashState> emit) {
    Get.offAll<LandingScreenWrapper>(
      () => LandingScreenWrapper(
        child: LandingScreen(),
      ),
      routeName: LandingScreenWrapper.routeName,
      transition: t.Transition.upToDown,
      duration: const Duration(milliseconds: 1500),
    );
  }
}
