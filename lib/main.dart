import 'package:app/application.dart';
import 'package:app/blocs/bank_bloc/bank_bloc.dart';
import 'package:app/blocs/bloc_module.dart';
import 'package:app/blocs/calculation_bloc/calculation_bloc.dart';
import 'package:app/blocs/splash_bloc/splash_bloc.dart';
import 'package:app/blocs/useful_information_bloc/useful_information_bloc.dart';
import 'package:app/data/di/data_module.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
  );

  if (kReleaseMode) {
    Fimber.plantTree(NotLoggingTree());
  } else {
    Fimber.plantTree(TaggedTree("BANCONOTA"));
  }

  registerServices();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I.get<SplashBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<BankBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<UsefulInformationBloc>(),
        ),
        BlocProvider(
          create: (context) => GetIt.I.get<CalculationBloc>(),
        ),
      ],
      child: Application(),
    ),
  );
}

void registerServices() {
  BlocModule();
  DataModule();
}

class TaggedTree extends DebugTree {
  TaggedTree(this.customTag);

  final String customTag;

  @override
  void log(String level, String message,
      {String? tag, dynamic ex, StackTrace? stacktrace}) {
    super.log(level, message, tag: customTag, ex: ex, stacktrace: stacktrace);
  }
}

class NotLoggingTree extends DebugTree {
  @override
  void log(String level, String message,
      {String? tag, dynamic ex, StackTrace? stacktrace}) {
    return;
  }
}
