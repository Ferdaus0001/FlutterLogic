import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:porviders/provider/controller/value_controller.dart';

class ValueProviderScreen extends StatefulWidget {
  const ValueProviderScreen({super.key});

  @override
  State<ValueProviderScreen> createState() => _ValueProviderScreenState();
}

class _ValueProviderScreenState extends State<ValueProviderScreen> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ValueController>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Value Provider'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ValueController>(
              builder: (BuildContext context, value, Widget? child) {
                return Slider(

                  activeColor: Colors.blue,
                  divisions: 3,
                  label: value.value.toStringAsFixed(1),
                  min: 0.0,  // Slider value min
                  max: 1.0,  // Slider value max
                  value: value.value,
                  onChanged: (val) {
                    value.setValue(val); // Update value using provider
                  },
                );
              },
            ),
            Row(
              children: [
                Expanded(
                  child: Consumer<ValueController>(
                    builder: (BuildContext context,   value, Widget? child) {
                      return                   Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value),
                        ),
                      );
                    },

                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Consumer<ValueController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return                  Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity( value.value),
                        ),
                      );
                    },

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
