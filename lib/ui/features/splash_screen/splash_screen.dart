import 'package:app/blocs/bank_bloc/bank_bloc.dart';
import 'package:app/blocs/splash_bloc/splash_bloc.dart';
import 'package:app/res/assets.dart';
import 'package:app/res/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SplashBloc>(context).add(InitSplash());
    BlocProvider.of<BankBloc>(context).add(FetchBankDetails());
    _controller = VideoPlayerController.asset(Assets.splashVideo)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller!.play();
    _controller!.setLooping(false);
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = Dimensions.of(context);
    return SizedBox(
      height: dimensions.fullHeight,
      width: dimensions.fullWidth,
      child: _controller!.value.isInitialized
          ? AspectRatio(
              aspectRatio: 16 / 9,
              child: VideoPlayer(_controller!),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }
}
