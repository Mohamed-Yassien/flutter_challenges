import 'package:flutter/material.dart';

class DropDownFormFieldScreen extends StatefulWidget {
  const DropDownFormFieldScreen({Key? key}) : super(key: key);

  @override
  State<DropDownFormFieldScreen> createState() =>
      _DropDownFormFieldScreenState();
}

class _DropDownFormFieldScreenState extends State<DropDownFormFieldScreen> {
  List<String> items = [
    'Mohamed Ali',
    'Adel Moussa',
    'Mohamed Sedky',
    'Ibrahim Khaled',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DropDownWithFormField',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 50,
              ),
              child: DropdownButtonFormField(
                hint: const Text('choose'),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.amber,
                      width: 2,
                    ),
                  ),
                  // disabledBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.purple,
                  //     width: 2,
                  //   ),
                  // ),
                  enabled: true,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2,
                    ),
                  ),
                ),
                items: items
                    .map(
                      (item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(item),
                      ),
                    )
                    .toList(),
                onChanged: (val) {
                  print(val);
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
