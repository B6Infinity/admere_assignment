import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class Money extends StatefulWidget {
  const Money({super.key});

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> with TickerProviderStateMixin {
  TextEditingController amountController = TextEditingController();
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Transfer Amount...')),
        body: Column(
          children: [
            const SizedBox(height: 30),
            const Center(child: Text('Transferring to')),
            const SizedBox(height: 10),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/78/48/29/7848297c04b1d0f4d927b8b9047d7631.jpg'),
              radius: 35,
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Saul',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 10, bottom: 0),
              child: Container(
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 201, 201, 201),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: DropdownButton(
                  underline: const SizedBox(),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  isExpanded: true,
                  items: const [
                    // This part of the code is a bit crappy for now.
                    // By the time you are reading this... I would have learned to make this more polished.
                    DropdownMenuItem(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                              'https://img.icons8.com/color/512/mastercard-logo.png'),
                        ),
                        title: Text('MasterCard'),
                        subtitle: Text('*****5689'),
                      ),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 30, left: 70, right: 70),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: amountController,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 40),
                decoration: const InputDecoration(
                  prefix: Text('₹'),
                  suffix: Text('/-'),
                  hintText: '0.00',
                  alignLabelWithHint: true,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            // const SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                // _animationController.pl
                print('there we go');
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  LottieBuilder.network(
                    width: 280,
                    'https://assets3.lottiefiles.com/packages/lf20_wjvwllvm.json',
                    onLoaded: (composition) {},
                    repeat: true,
                  ),
                  const Text(
                    'TRANSFER',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
