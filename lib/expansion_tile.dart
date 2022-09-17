import 'package:flutter/material.dart';

class ExpansionTileScreen extends StatefulWidget {
  const ExpansionTileScreen({Key? key}) : super(key: key);

  @override
  State<ExpansionTileScreen> createState() => _ExpansionTileScreenState();
}

class _ExpansionTileScreenState extends State<ExpansionTileScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpansionTile(
              title: const Text('Animals'),
              backgroundColor: Colors.red,
              leading: const Icon(Icons.more),
              collapsedIconColor: Colors.red,
              iconColor: Colors.white,
              collapsedTextColor: Colors.red,
              textColor: Colors.white,
              collapsedBackgroundColor: Colors.amber,
              controlAffinity: ListTileControlAffinity.trailing,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              expandedAlignment: Alignment.centerLeft,
              children: [
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  // shape: OutlineInputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.amber,
                  //     width: 2,
                  //   ),
                  // ),
                  activeColor: Colors.amber,
                  checkColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  value: isChecked,
                  title: const Text(
                    'Cat',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    'click here',
                    style: TextStyle(color: Colors.white),
                  ),
                  onChanged: (val) {
                    setState(() {
                      isChecked = val!;
                    });
                  },
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Animals'),
              backgroundColor: Colors.purple,
              leading: const Icon(Icons.more),
              collapsedIconColor: Colors.white,
              iconColor: Colors.white,
              collapsedTextColor: Colors.white,
              textColor: Colors.white,
              collapsedBackgroundColor: Colors.teal,
              controlAffinity: ListTileControlAffinity.trailing,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              expandedAlignment: Alignment.centerLeft,
              children: [
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.amber,
                  checkColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  value: isChecked,
                  title: const Text(
                    'Dog',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    'click here',
                    style: TextStyle(color: Colors.white),
                  ),
                  onChanged: (val) {
                    setState(() {
                      isChecked = val!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
