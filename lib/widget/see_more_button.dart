import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      // color: Colors.purple,
      child: IconButton(
        padding: const EdgeInsets.only(
          bottom: 20,
          right: 15,
        ),
        alignment: Alignment.centerLeft,
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_right,
          color: Colors.white,
          size: 75,
        ),
      ),
    );
  }
}
