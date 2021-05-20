import 'package:appet_food_delivery/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CuisinesScreen extends StatefulWidget {
  @override
  _CuisinesScreenState createState() => _CuisinesScreenState();
}

class _CuisinesScreenState extends State<CuisinesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text('CUISINES'),
        actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
        centerTitle: true,
        leading: Transform.scale(
            scale: 0.3,
            child: SvgPicture.asset('assets/svgs/portfolio graph.svg')),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              childAspectRatio: 0.5,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (_, index) => FoodCard(),
            itemCount: 8,
          )),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: MediaQuery.of(context).size.height * 0.25,
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
            'PanCake',
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
    );
  }
}
