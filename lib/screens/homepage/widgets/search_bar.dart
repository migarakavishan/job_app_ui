import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: size.width * 0.75,
            child: TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "Search for Jobs",
                  fillColor: Colors.white,
                  filled: true),
            )),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 55,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12)),
          child: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}