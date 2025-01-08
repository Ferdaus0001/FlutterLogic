import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_countdown/slide_countdown.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Countdown Example')),
      body: Center(
        child: Card(
          elevation: 111,
          child: SlideCountdown(
             onDone: (){
               Get.snackbar('massge','time Out ');
             },
            durationTitle: DurationTitle(hours: '4', minutes: '6 ', seconds: '100', days: ''),
            duration: Duration(  minutes: 1),
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white,),
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.dark_mode,color: Colors.white,size: 26,)),
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 5),
            slideDirection: SlideDirection.up ,
            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_sharp,color: Colors.white,)),
            separatorPadding: EdgeInsets.symmetric(vertical: 11,horizontal: 11),
            separatorStyle: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),
            separatorType: SeparatorType.symbol,
             infinityCountUp: true,
            replacement:  CircleAvatar(
              radius: 50,backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngkey.com%2Fdetail%2Fu2q8i1e6t4o0q8r5_time-icon-time-icon-png-pink%2F&psig=AOvVaw1pu4Qv-xeLAKgQm9qEaXaG&ust=1736324719720000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOjqkoeY44oDFQAAAAAdAAAAABAE'),
              child: Text('Time OUT',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,),),),
          ),
        ),
      ),
    );
  }
}
