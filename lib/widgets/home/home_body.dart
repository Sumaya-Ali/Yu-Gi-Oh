import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yu_gi_oh/models/card.dart';
import 'package:yu_gi_oh/screens/details_screen.dart';
import 'package:yu_gi_oh/widgets/home/yugi_card.dart';

import '../../constants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: eDefaultPadding / 2,),
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: eBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      margin: EdgeInsets.only(
                        top: 70.0,
                      ),
                    ),
                    ListView.builder(
                      itemCount: cards.length,
                      itemBuilder: (context,index) => YugiCard(
                        itemIndex: index,
                        card: cards[index],
                        press: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> DetailsScreen(card: cards[index],))
                          );
                        },),
                    )
                  ],
                ))
          ],
        ));
  }
}