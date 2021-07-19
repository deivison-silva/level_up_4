import 'package:flutter/material.dart';
import 'package:animated_card/animated_card.dart';
import '../../../src/modules/home/home_page.dart';
import '../../shared/custom_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2))
          .then((value) => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: AppColors.blueGradientBackground,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.top,
              duration: Duration(seconds: 1),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: (MediaQuery.of(context).size.height / 2) - 100,
                    child: Hero(
                      tag: 'notes_logo',
                      child: Image.asset('assets/images/notes_logo.png'),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Hero(
                          tag: 'journal',
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              'journal',
                              style: TextStyles.white72w700Montserrat,
                            ),
                          ),
                        ),
                        Text(
                          "YOUR ACADEMY'S BEST FRIEND",
                          textAlign: TextAlign.end,
                          style: TextStyles.white13w300Montserrat,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedCard(
              direction: AnimatedCardDirection.bottom,
              duration: Duration(seconds: 1),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('powered by', style: TextStyles.white12w200Roboto),
                    SizedBox(height: 8.0),
                    Image.asset('assets/images/raro_academy_logo.png'),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
