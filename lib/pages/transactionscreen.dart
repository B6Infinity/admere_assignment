import 'package:admere_assignment/pages/money.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    double wid = 110;

    var boxs = const BoxShadow(
      color: Color.fromARGB(40, 0, 0, 0),
      // offset: Offset(2, 1),
      blurRadius: 2,
    );

    List<Widget> transactions = const [
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: ListTile(
          title: Text('Promotional'),
          trailing: Text(
            '-₹100',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 148, 16, 6),
            ),
          ),
          subtitle: Text('Today'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: ListTile(
          title: Text('Sponsorship'),
          trailing: Text(
            '₹8000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 9, 138, 13),
            ),
          ),
          subtitle: Text('Today'),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: ListTile(
          title: Text('Donation'),
          trailing: Text(
            '₹3100',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 9, 138, 13),
            ),
          ),
          subtitle: Text('3 days ago'),
        ),
      ),
    ];

    return Center(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: const Color.fromARGB(61, 96, 125, 139),
                  leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://1fid.com/wp-content/uploads/2022/07/funny-profile-pic-9-1024x1024.jpg')),
                  title: const Text(
                    'moppet',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: const Text(
                    'Welcome',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.notifications)),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Your Rucksack',
                  style: TextStyle(
                    color: Color.fromARGB(255, 124, 124, 124),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    '₹ 69,420 /-',
                    style: TextStyle(
                      fontSize: 32,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Money()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 150,
                      width: wid,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [boxs],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          gradient: const SweepGradient(
                            colors: [
                              Colors.blue,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Transfer',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Transform.rotate(
                                angle: -45 * math.pi / 180,
                                child: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(2, 2),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: wid,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [boxs],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          gradient: const SweepGradient(
                            colors: [
                              Colors.blueGrey,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Request',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Transform.rotate(
                                angle: -235 * math.pi / 180,
                                child: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset(2, 2),
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      width: wid,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [boxs],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          gradient: const SweepGradient(
                            colors: [
                              Colors.grey,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'Top-Up',
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.add_box,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(2, 2),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: ListTile(
                  title: Text(
                    'Recent Transactions',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  trailing: Text('See all'),
                ),
              ),
              ...transactions
            ],
          ),
        ),
      ),
    );
  }
}
