import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class intro_screen extends StatefulWidget {
  const intro_screen({Key? key}) : super(key: key);

  @override
  State<intro_screen> createState() => _intro_screenState();
}

class _intro_screenState extends State<intro_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            body: "screen 1",
            title: "welcome screen 1",
            image:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReYWQBSpFO0sLz6010ZJPI8UTp4EiAK5XXFWXlOP7YnO2DUFbM0IPkxXNaAXBNA9SvMdc&usqp=CAU ')
          ),
          PageViewModel(
            body: "screen 2",
            title: "welcome screen 2",
            image:Image.network('https://img.freepik.com/free-vector/flat-design-illustration-customer-support_23-2148887720.jpg')
          ),
          PageViewModel(
              body: "screen 3",
              title: "welcome screen 3",
            image:Image.network('https://inkebee.com/wp-content/uploads/2022/04/contact-us-vector-2.png'),
          ),
          PageViewModel(
              body: "screen 4",
              title: "welcome screen 4",
            image:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY5AOWmSSXYHKWLd1k-LJ02SIloDDg_IRX9Q&usqp=CAU'),

          ),
          PageViewModel(
              body: "screen 5",
              title: "Next screen 5",
            image:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdnOnOVPzbsemkgOVe8aJuDXqhO7Nn2_PBfw&usqp=CAU'),

          ),
        ],
        done: Text("Thank you"),
        showNextButton: false,
        onDone: ()async{
          SharedPreferences pref= await SharedPreferences.getInstance();
          pref.setBool("isvalid", true);
          Navigator.of(context).pushNamed("HomePage");
        },
      ),
    );
  }
}
