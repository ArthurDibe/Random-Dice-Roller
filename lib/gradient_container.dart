import 'package:flutter/material.dart';
// import 'package:start_flutter/style_text.dart';
import 'package:start_flutter/dice_container.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors,
      {super.key}); // GradientContainer({key}) : super(key: key);

  // final Color firstColor;
  // final Color secondColor;
  final List<Color> colors;
  // var dice = 'assets/images/dice-1.png';

  // void rollDice() {
  //   this.dice = 'assets/images/dice-2.png';
  //   print('button clicked!');
  // }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: this.colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DiceContainer(),
          ],
        ),
      ),
    );
  }
}
