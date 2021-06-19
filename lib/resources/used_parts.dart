import 'styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Stack buildCircles() => Stack(
      children: [
        Positioned(
          child: SvgPicture.asset('assets/icons/ellipse_1.svg'),
        ),
        Positioned(
          child: SvgPicture.asset('assets/icons/ellipse_2.svg'),
        ),
      ],
    );

SizedBox inputField(String label) => SizedBox(
      height: 51,
      width: 325,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              22.0,
            ),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 0.0,
            ),
          ),
          hintText: label,
        ),
      ),
    );

Row createHint(List<String> registrationHints) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          registrationHints[0],
          style: regularTextStyleSmall,
        ),
        Text(
          registrationHints[1],
          style: regularTextStyleLarge,
        ),
      ],
    );

Expanded createToDoList(List<String> todos) {
  return Expanded(
    flex: 1,
    child: SizedBox(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => Row(
          children: [
            const Checkbox(
              value: false,
              onChanged: null,
            ),
            const SizedBox(
              width: 11.0,
            ),
            Text(todos[index])
          ],
        ),
      ),
    ),
  );
}
