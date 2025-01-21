import 'package:app1/core/colors.dart';
import 'package:app1/core/styles.dart';
import 'package:app1/screens/bottomnav_screen.dart';
import 'package:flutter/material.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue, gradient: AppStyles.secondaryBgGradient),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.maxFinite),
              Text(
                "Categories",
                style: AppStyles.title,
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: AppColors.ligthBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          color: AppColors.yellow,
                          icon: Icons.remove_red_eye,
                          label: 'Lorem Ipsum',
                        ),
                        CustomCard(
                          color: AppColors.red,
                          icon: Icons.directions_run,
                          label: 'Lorem Ipsum',
                        ),
                        CustomCard(
                          color: AppColors.blueyellow,
                          icon: Icons.checkroom,
                          label: 'Lorem Ipsum',
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCard2(
                                color2: AppColors.blueyellow,
                                icon2: Icons.remove_red_eye,
                                label2: 'Lorem ipsum',
                              ),
                              CustomCard2(
                                color2: AppColors.blueyellow,
                                icon2: Icons.directions_walk,
                                label2: 'Lorem ipsum',
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCard2(
                                color2: AppColors.blueyellow,
                                icon2: Icons.local_drink,
                                label2: 'Lorem ipsum',
                              ),
                              CustomCard2(
                                color2: AppColors.blueyellow,
                                icon2: Icons.work,
                                label2: 'Lorem ipsum',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: CustomNavbar(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const CustomCard({
    required this.color,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: AppColors.white,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  final Color color2;
  final IconData icon2;
  final String label2;

  const CustomCard2({
    required this.color2,
    required this.icon2,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon2,
            size: 80,
            color: AppColors.white,
          ),
          SizedBox(height: 8),
          Text(
            label2,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
