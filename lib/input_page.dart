import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum GenderType{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

GenderType selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardColor: selectedGender == GenderType.male ? reusableCardColor : inactiveCardColor,
                    cardChild: CardContentWidget(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardColor: selectedGender == GenderType.female ? reusableCardColor : inactiveCardColor,
                    cardChild: CardContentWidget(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardColor: reusableCardColor,),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: reusableCardColor,),
                ),
                Expanded(
                  child: ReusableCard(cardColor: reusableCardColor,),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )
    );
  }
}


