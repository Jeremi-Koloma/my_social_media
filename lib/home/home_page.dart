import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Color(0xffF1F2F6),
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Color(0xffAFB5C6)),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xffAFB5C6),
                  ),
                ),
                border: InputBorder.none),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              size: 32.0,
              color: Color(0xffAFB5C6),
            ),
          )
        ],
      ),
      body: const Center(
        child: Text(
          'HomePage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
