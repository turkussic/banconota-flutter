import 'package:app/blocs/bank_bloc/bank_bloc.dart';
import 'package:app/ui/features/landing/widgets/landing_loaded_widget.dart';
import 'package:app/ui/widgets/error_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BankBloc, BankState>(builder: (context, state) {
      if (state is BankLoading) {
        return Container();
      } else if (state is BankLoaded) {
        return LandingLoadedWidget(banks: state.bankDetails);
      } else if (state is BankFailure) {
        return ErrorScreen();
      } else {
        return Container();
      }
    });
  }
}
