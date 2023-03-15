import 'package:admere_assignment/pages/transactionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
            'https://assets2.lottiefiles.com/packages/lf20_wcfkpodg.json',
            onLoaded: (composition) {
              _controller
                ..duration = composition.duration
                ..forward().whenComplete(() => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TransactionScreen()),
                    ));
            },
            repeat: false,
          ),
          const Text(
            'admere',
            style: TextStyle(fontSize: 18),
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   // child: const Text("Let's Go!"),
          // ),
        ],
      ),
    );
  }
}
