import 'package:flutter/material.dart';

class Textfom extends StatefulWidget {
  const Textfom({super.key});

  @override
  State<Textfom> createState() => _TextfomState();
}

class _TextfomState extends State<Textfom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: RawScrollbar(
                padding: EdgeInsets.all(11),
                trackBorderColor: Colors.blueAccent,
                trackColor: Colors.grey,
                trackRadius: Radius.circular(22),
                trackVisibility: true,
                thumbVisibility: true,
                thumbColor: Colors.black,  
                radius: Radius.circular(11),  
                thickness: 12,  
                child: ListView.builder(
                  itemCount: 110,
                  itemBuilder: (_, context) {
                    return ListTile(
                      title: Text('Name'),
                      subtitle: Text('Ferdaus'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_forever),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.WQvPJdjEpvh8OTXB-NBfJwHaHw?w=209&h=218&c=7&r=0&o=5&pid=1.7',
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
