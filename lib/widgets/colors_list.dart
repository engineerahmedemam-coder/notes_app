import 'package:flutter/widgets.dart';
import 'package:notes/widgets/colors_item.dart';

class ColorsList extends StatelessWidget {
  const ColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    ListView.builder(
      
      itemBuilder: (context, index){
      return ColorsItem();

    },
    itemCount: 10,
    scrollDirection: Axis.horizontal,
    );

  }
}