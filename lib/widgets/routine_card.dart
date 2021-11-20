import 'package:elancer_fistproject/screens/night_care.dart';
import 'package:flutter/material.dart';
class RoutineCard extends StatelessWidget {
  const RoutineCard({
    Key? key,
    required this.steps,
  required this.care,
  required this.daily,
    required this.color,
    required this.icon,

  }) : super(key: key);
final String steps;
final String daily;
final String care;
final Color color;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 200,
      child: InkWell(
        onTap: (){
          if(daily=='Morning Care'){
            Navigator.push( context,MaterialPageRoute(
                builder:(context)=> NightCare(
                    daily:daily,
                    )
            ));          }
          else if(daily=='Night Care'){
            Navigator.push( context,MaterialPageRoute(
                builder:(context)=> NightCare(
                  daily: daily,
                    )
            ));            }
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
               Row(
                 children: [
                   Text(steps),
                   const SizedBox(width: 100,),
                    Icon(icon),
                 ],
               ),
                const SizedBox(height: 49,),
                Text( ' $care'),
                const SizedBox(height: 2,),
                Text( ' $daily'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
