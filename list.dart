import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  const DataList(this.name, this.age, this.height, this.gender, this.s1,
      this.s2, this.s3, this.email,
      {super.key});
  final String name;
  final int age;
  final int height;
  final String gender;
  final bool s1;
  final bool s2;
  final bool s3;
  final String email;

  @override
  State<DataList> createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  final int heightneeded = 170;
  final int ageneeded = 18;

  Widget? show;

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    String email = widget.email;
    bool s1 = widget.s1;
    bool s2 = widget.s2;
    bool s3 = widget.s3;

    bool passedQualifications = widget.height >= heightneeded &&
        widget.age >= ageneeded &&
        !s1 &&
        !s2 &&
        !s3;

    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          passedQualifications
              ? Text(
                  '$name, you passed the qualifications. An email will be sent to the email address $email.',
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    height: 2,
                    fontSize: 20,
                    color: Colors.green,
                  ),
                )
              : const Text(
                  'Sorry, your application is not valid,if u find anything wrong, call 1922.',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    height: 2,
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Return',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
