import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/constants/image_strings.dart';

class NiceScreen extends StatelessWidget {
  const NiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Nice Screen",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(tCR7),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cristiano Ronaldo",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Text("Footballer",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                    size: 30,
                  ),
                  Text(
                    "Call",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                    size: 30,
                  ),
                  Text(
                    "Message",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                    size: 30,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "About",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child:
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl. "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "Sed euismod, nisi quis aliquet aliquam, "
                    "nunc nisl aliquet nunc, nec aliquam nisl nunc nec nisl."),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Book Service",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
