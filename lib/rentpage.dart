import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RentWidget(),
    );
  }
}

class RentWidget extends StatefulWidget {
  const RentWidget({super.key});

  @override
  State<RentWidget> createState() => _RentWidgetState();
}

class _RentWidgetState extends State<RentWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Theme.of(context).primaryColorLight,
        appBar: AppBar(
          backgroundColor: const Color(0xFF58B279),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            'Rental Items',
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, -1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child: Text(
                            'Available Items for Rent',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 26,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).canvasColor,
                                  border: Border.all(
                                    color: const Color(0xFF282E2A),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      iconSize: 80,
                                      icon: const Icon(
                                        Icons.pedal_bike,
                                        color: Color(0xFF57636C),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('bikerental');
                                      },
                                    ),
                                    const Text(
                                      'Bike',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).canvasColor,
                                  border: Border.all(
                                    color: const Color(0xFF282E2A),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.electric_scooter,
                                      color: Theme.of(context).primaryColorDark,
                                      size: 80,
                                    ),
                                    const Text(
                                      'Scooter',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).canvasColor,
                                  border: Border.all(
                                    color: const Color(0xFF282E2A),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.camera_alt,
                                      color: Theme.of(context).primaryColorDark,
                                      size: 80,
                                    ),
                                    const Text(
                                      'Camera',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).canvasColor,
                                  border: Border.all(
                                    color: const Color(0xFF282E2A),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.phone_iphone,
                                      color: Theme.of(context).primaryColorDark,
                                      size: 80,
                                    ),
                                    const Text(
                                      'Smartphone',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

