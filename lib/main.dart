import 'package:flutter/material.dart';
import 'package:hada_app/image_network.dart';
import 'package:hada_app/slider_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Almarai',
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFF0C21B2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0C21B2),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Column(
          children: [
            const SliderWidget(),
            Expanded(
                child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                for (var i = 0; i < 3; ++i)
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                  child: ImageNetwork(
                                      url:
                                          'https://i.ibb.co/3NtfHSp/png-clipart-water-bottle-water-bottle.png')),
                              Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Expanded(
                                          child: Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Text(
                                          'كرتون مياه كبير',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF0C21B2)),
                                        ),
                                      )),
                                      Expanded(
                                          child: Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "12x1.5  ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF8E8E8E)),
                                          ),
                                          TextSpan(
                                            text: 'لتر',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF8E8E8E)),
                                          ),
                                        ])),
                                      )),
                                      Expanded(
                                          child: Align(
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                            text: "1700  ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFFD9606)),
                                          ),
                                          TextSpan(
                                            text: 'ريال',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF8E8E8E)),
                                          ),
                                        ])),
                                      )),
                                    ],
                                  )),
                              Expanded(
                                  child: Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.add_circle_outline_rounded,
                                            color: Color(0xFF8E8E8E)),
                                      )),
                                      Expanded(
                                          child: Center(
                                              child: Text(
                                        '1',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF0C21B2)),
                                      ))),
                                      Expanded(
                                          child: IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          debugPrint(
                                              'remove_circle_outline_rounded');
                                        },
                                        icon: Icon(
                                          Icons.remove_circle_outline_rounded,
                                          color: Color(0xFF8E8E8E),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ))
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xFF8E8E8E),
                        )
                      ],
                    ),
                  ),
              ],
            )),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(end: 10),
                            child: MaterialButton(
                              height: 60,
                              color: Color(0xFF0C21B2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: Text(
                                'طلبات المناسبات',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 10),
                            child: MaterialButton(
                              height: 60,
                              color: Color(0xFF0C21B2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: Text(
                                'طلبات المناسبات',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF), fontSize: 14),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '* للمعلومات أو الشكاوي اتصل على 776665003',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8E8E8E)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
