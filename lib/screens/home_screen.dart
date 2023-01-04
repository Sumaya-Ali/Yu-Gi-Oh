import 'package:yu_gi_oh/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yu_gi_oh/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ePrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title:Text(
          "مرحبا بكم في أوراق يوغي يو",
        style: GoogleFonts.getFont('Almarai'),),
      centerTitle: false,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
      ],
    );
  }
}