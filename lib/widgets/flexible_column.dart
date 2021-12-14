import 'package:bartermade/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CustomTopBar extends StatelessWidget {
  final String name;

  const CustomTopBar({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Column(
        children: [
          Flexible(child: Image.asset(name)),
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'BARTERMADE',
              style: TextStyle(
                  color: AppColors.pinkColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
