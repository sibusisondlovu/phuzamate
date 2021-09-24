import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  with PreferredSizeWidget{
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        color: Colors.black,
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(Icons.chevron_left),),
      title: Container(
        color: Colors.black,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.pushNamed(context, '/favourite');
          },
          icon: Icon(Icons.favorite, color: Colors.black) ,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
