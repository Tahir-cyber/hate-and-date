import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width - 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          border: Border.all(color: Colors.pink, width: 1)),
      child: Slider(
          min: 0,
          max: 50,
          activeColor: Colors.pink,
          inactiveColor: Colors.green,
          divisions: 75,
          label: value.round().toString(),
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          }),
    );
  }
}
