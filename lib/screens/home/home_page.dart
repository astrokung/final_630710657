import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black
        ),
        child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(213, 219, 226, 1)
                  ),

                  width: 500,
                  height: MediaQuery.of(context).size.height*1,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Colors.grey,
                                )
                            ),
                            width: 200,
                            height: 60,
                            child: Center(
                              child: Text(
                                  'Bangkok'
                              ),
                            ),
                          ),
                        )
                      ]
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }

}