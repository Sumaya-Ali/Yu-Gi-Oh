import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yu_gi_oh/models/card.dart';

import '../../constants.dart';
import 'color_dot.dart';
import 'details_image.dart';
class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.card}) : super(key: key);

  final PlayCard card;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: eDefaultPadding *1.5),
          decoration: BoxDecoration(
            color: eBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: DetailsImage(size: size,image: card.image,)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: eDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(fillColor: eTextLightColor,isSelected: true,),
                    ColorDot(fillColor: Color.fromRGBO(108, 231, 132, 1.0),),
                    ColorDot(fillColor: Color.fromRGBO(235, 108, 93, 1.0),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: eDefaultPadding/2),
                child: Text(card.title,
                  style: Theme.of(context).textTheme.headline6,),
              ),
              Text(
                'الهجوم:${card.atk}',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: eSecondaryColor,
                ),),
              SizedBox(height: eDefaultPadding,),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: eDefaultPadding/2),
          padding: EdgeInsets.symmetric(horizontal: eDefaultPadding *1.5,vertical: eDefaultPadding/2),
          child: Text(
            card.desc,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19.0,
            ),
          ),
        ),
      ],
    );
  }
}
