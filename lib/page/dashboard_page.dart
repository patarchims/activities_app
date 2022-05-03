import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 155,
      color: const Color(0xFF001689),
      child: Column(
        children: [
          const SizedBox(height: 44),
          const Text("Activities",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24)),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(context),
              const SizedBox(width: 12),
              button(context),
            ],
          )
        ],
      ),
    );
  }

  SizedBox button(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.white),
          onPressed: () {},
          child: const Center(
            child: Text(
              "Open",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          )),
    );
  }
}
