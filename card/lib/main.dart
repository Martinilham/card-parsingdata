import "package:flutter/material.dart";

void main(){
  runApp(const MaterialApp(
    title: "Bakol Boto",
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget{
  const HalamanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: const Column(
          children: [
            MyCard(icon: Icons.home, teks: "ini Home",),
            MyCard(icon: Icons.location_city, teks: "ini Home",),
            MyCard(icon: Icons.access_alarms, teks: "ini Home",)
          ],),
        ),
    );
    
  }
}

class MyCard extends StatelessWidget{
  const MyCard({super.key, required this.icon,required this.teks});

  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Icon(
              icon,
              size: 50.0,
            ),
            Text(
              teks
            )
          ],
        ),
      )
    );
    
  }
}