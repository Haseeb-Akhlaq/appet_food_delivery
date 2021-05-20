import 'package:appet_food_delivery/Screens/cusensScreen.dart';
import 'package:appet_food_delivery/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text('COLLECTION'),
        actions: [
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CuisinesScreen(),
                  ),
                );
              })
        ],
        centerTitle: true,
        leading: Transform.scale(
            scale: 0.3,
            child: SvgPicture.asset('assets/svgs/portfolio graph.svg')),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/splash.png',
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(height: 10),
                    Text(
                      '\$120',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Vanilla Cream with Blue Berries and Mint',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text(
                          'Delivery in 30min',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Image.asset(
                                'assets/signIn.png',
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(height: 10),
                        Text(
                          '\$120',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Roasted Nuts',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Text(
                              'Delivery in 30min',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 200,
                              width: 150,
                              child: Image.asset(
                                'assets/splash.png',
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(height: 10),
                        Text(
                          '\$120',
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Macaroons',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Text(
                              'Delivery in 30min',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          child: Image.asset(
                            'assets/splash.png',
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(height: 10),
                    Text(
                      '\$120',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Vanilla Cream with Blue Berries and Mint',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text(
                          'Delivery in 30min',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
