import 'package:flutter/material.dart';
import 'package:yu_gi_oh/models/card.dart';
import 'package:yu_gi_oh/widgets/details/details_body.dart';

import '../constants.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.card}) : super(key: key);

  final PlayCard card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ePrimaryColor,
      appBar: DetailsAppBar(context),
      body: DetailsBody(card: card,),
    );
  }

  AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: eBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(right: eDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color:ePrimaryColor,
        ),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}