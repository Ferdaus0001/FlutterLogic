import 'package:flutter/material.dart';
import 'package:porviders/ui_one/presentation/widget/cusotm_wripe_widget.dart';

class WripWidget extends StatefulWidget {
  const WripWidget({super.key});

  @override
  State<WripWidget> createState() => _WripWidgetState();
}

class _WripWidgetState extends State<WripWidget> {
  // প্রতিটি আইটেমের দৃশ্যমানতা নির্ধারণের জন্য ভ্যারিয়েবল
  bool isAppleVisible = true;
  bool isTomatoVisible = true;
  bool isMangoVisible = true;
  bool isAvocadoVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(height: 200),

                // Apple Widget
                if (isAppleVisible)
                  CustomWripeWidget(
                    onTap: () {},
                    uri: NetworkImage(
                        'https://th.bing.com/th/id/OIP.gxVIhxEKV2L4dkBjwptXjwHaHa?w=173&h=180&c=7&r=0&o=5&pid=1.7'),
                    title: 'Apple',
                    icon: GestureDetector(
                      child: Icon(
                        Icons.delete_forever_sharp,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          isAppleVisible = false;
                        });
                      },
                    ),
                  ),
                SizedBox(width: 10),

                // Tomato Widget
                if (isTomatoVisible)
                  CustomWripeWidget(
                    onTap: () {},
                    uri: NetworkImage(
                        'https://th.bing.com/th/id/OIP.NNiG9NKcVyJ8fPh66V3WSgHaFW?w=252&h=182&c=7&r=0&o=5&pid=1.7'),
                    title: 'Tomato',
                    icon: GestureDetector(
                      child: Icon(
                        Icons.delete_forever_sharp,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          isTomatoVisible = false;
                        });
                      },
                    ),
                  ),
                SizedBox(width: 10),

                // Mango Widget
                if (isMangoVisible)
                  CustomWripeWidget(
                    onTap: () {},
                    uri: NetworkImage(
                        'https://th.bing.com/th/id/OIP.ualXIWLU852pujbgUoWFqgHaFQ?w=244&h=180&c=7&r=0&o=5&pid=1.7'),
                    title: 'Mango',
                    icon: GestureDetector(
                      child: Icon(
                        Icons.delete_forever_sharp,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          isMangoVisible = false;
                        });
                      },
                    ),
                  ),
                SizedBox(width: 10),

                // Avocado Widget
                if (isAvocadoVisible)
                  CustomWripeWidget(
                    onTap: () {},
                    uri: NetworkImage(
                        'https://th.bing.com/th?q=Avocado&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'),
                    title: 'Avocado',
                    icon: GestureDetector(
                      child: Icon(
                        Icons.delete_forever_sharp,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          isAvocadoVisible = false;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
