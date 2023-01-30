import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircularContain extends StatelessWidget {
  const CircularContain({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(3.0),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(width: 2.5,color: Colors.white)

      ),
    );
  }
}