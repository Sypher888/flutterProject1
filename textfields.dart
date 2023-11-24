import 'package:flutter/material.dart';
import 'package:project_mobile/list.dart';

class TextProps extends StatefulWidget {
  const TextProps({super.key});

  @override
  State<TextProps> createState() => _TextPropsState();
}

class _TextPropsState extends State<TextProps> {
  String checked = '';
  bool ischecked1 = false;
  bool ischecked2 = false;
  bool ischecked3 = false;
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController heightcontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: TextField(
              controller: namecontroller,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  letterSpacing: 1),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Colors.blue,
                hintText: 'Name ... ',
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: TextField(
              controller: emailcontroller,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  letterSpacing: 1),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                prefixIconColor: Colors.blue,
                hintText: 'email address... ',
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: agecontroller,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  letterSpacing: 1),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.beach_access),
                prefixIconColor: Colors.blue,
                hintText: 'Age ',
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
            width: 300,
            child: TextField(
              controller: heightcontroller,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  letterSpacing: 1),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                prefixIconColor: Colors.blue,
                hintText: 'height ',
                hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(5, 5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Gender :',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.blue),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              RadioListTile(
                title: const Text(
                  'Male',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                value: 'male',
                groupValue: checked,
                onChanged: (value) {
                  setState(
                    () {
                      checked = value.toString();
                    },
                  );
                },
              ),
              RadioListTile(
                title: const Text(
                  'Female',
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
                value: 'female',
                groupValue: checked,
                onChanged: (value) {
                  setState(
                    () {
                      checked = value.toString();
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Symptoms : ',
            style: TextStyle(
                fontSize: 28,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.blue),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Syndroms',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Checkbox(
                    value: ischecked1,
                    onChanged: (value) {
                      setState(
                        () {
                          ischecked1 = value!;
                        },
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Diabetes',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Checkbox(
                    value: ischecked2,
                    onChanged: (value) {
                      setState(
                        () {
                          ischecked2 = value!;
                        },
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Thalasthemia',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Checkbox(
                    value: ischecked3,
                    onChanged: (value) {
                      setState(
                        () {
                          ischecked3 = value!;
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DataList(
                        namecontroller.text,
                        int.parse(agecontroller.text),
                        int.parse(heightcontroller.text),
                        checked,
                        ischecked1,
                        ischecked2,
                        ischecked3,
                        emailcontroller.text)));
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
