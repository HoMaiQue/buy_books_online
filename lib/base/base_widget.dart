import 'package:buy_books_online/shared/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class PageContainer extends StatelessWidget {
  final String title;
  final Widget child;

  final List<SingleChildWidget> bloc;
  final List<SingleChildWidget> di;
  // final List<Widget> actions;

  const PageContainer({
    Key? key,
    required this.title,
    required this.bloc,
    required this.di,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...di,
        ...bloc,
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: AppColor.blue),
          ),
          // actions: actions,
        ),
        body: child,
      ),
    );
  }
}
// class NavigatorProvider extends StatelessWidget {
//   const NavigatorProvider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: const Stack(
//         children: <Widget>[],
//       ),
//     );
//   }
// }
