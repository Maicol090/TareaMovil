import 'package:app1/core/colors.dart';
import 'package:app1/core/styles.dart';
import 'package:flutter/material.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({super.key});

  @override
  _CategorieScreenState createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      _buildCategoriePage(),
      Center(
        child: Text(
          "Buscar",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Perfil",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Wallet",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Options",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }

  // Página principal de Categorías
  Widget _buildCategoriePage() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        gradient: AppStyles.secondaryBgGradient,
      ),
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: AppColors.white,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          _pages[_selectedIndex], // Cambia entre las pantallas según el índice
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white, // Color de fondo blanco
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Sin animación
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: AppColors.blueyellow),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: AppColors.blueyellow),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: AppColors.blueyellow, size: 35),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.account_balance_wallet, color: AppColors.blueyellow),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: AppColors.blueyellow),
            label: '',
          ),
        ],
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
      width: 90,
      height: 90,
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
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.circular(12),
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
