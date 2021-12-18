part of 'splash_bloc.dart';

@immutable
abstract class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object> get props => [];
}

class InitSplash extends SplashEvent {
  const InitSplash();

  @override
  List<Object> get props => [];
}

class FinishSplash extends SplashEvent {
  const FinishSplash();

  @override
  List<Object> get props => [];
}
