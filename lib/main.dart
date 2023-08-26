import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KingsHotel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _imageIndex = 0;
  List<String> _images = [
    'assets/background.png',
    'assets/latticetower.jpeg',
    'assets/petronaspanorama.jpeg',
    'assets/statueofliberty.jpeg',
    'assets/goldengatebridge.jpeg',
    'assets/atlantabravemark-4.jpeg',
  ];

  @override
  void initState() {
    super.initState();
    _changeImage();
  }

  _changeImage() async {
    await Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _imageIndex++;
        });

        // 當圖片播放完一輪後，跳轉到 login_page.dart
        if (_imageIndex == _images.length) {
          Navigator.of(context).pushReplacementNamed('/login');
          return;
        }

        _changeImage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            _images[_imageIndex],
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,  // 將文字對齊到圖片的上方中央位置
                    children: [
                      // 將 Subtract.png 的透明度設置為50%
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset('assets/Subtract.png', width: MediaQuery.of(context).size.width,),
                      ),
                      
                      // 加上文字，確保文字不受透明度影響
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Text(
                          'Welcome to KingsHotel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 100.0,
                        left: 0,
                        right: 0,
                        child: Text(
                          'Discover the World with KingsHotel. \nYour passport to unforgettable adventures!',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/Button/tour-next.png', height: 110.0,),
                ],
              ),
            ),
          ),        
        ],
      ),
    );
  }
}
