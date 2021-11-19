import 'package:flutter/material.dart';

class Itenscat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 270,
        child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Transform(
                      transform: Matrix4.skewY(-0.2),
                      child: Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(234, 70, 61, 1),
                              Color.fromRGBO(238, 109, 43, 1)
                            ]),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 32,
                      child: Transform(
                        transform: Matrix4.skewY(-0.2),
                        child: Container(
                          child: Text(
                            "CARS",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 120,
                      child: Image(
                        height: 170,
                        width: 170,
                        image: AssetImage("images/kindpng_2104172.png"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Transform(
                      transform: Matrix4.skewY(-0.2),
                      child: Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(234, 70, 61, 1),
                              Color.fromRGBO(238, 109, 43, 1)
                            ]),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 29,
                      child: Transform(
                        transform: Matrix4.skewY(-0.2),
                        child: Container(
                          child: Text(
                            "BIKES",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 120,
                      child: Image(
                        height: 170,
                        width: 150,
                        image: AssetImage("images/kindpng_430774.png"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Transform(
                      transform: Matrix4.skewY(-0.2),
                      child: Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(234, 70, 61, 1),
                              Color.fromRGBO(238, 109, 43, 1)
                            ]),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 12,
                      child: Transform(
                        transform: Matrix4.skewY(-0.2),
                        child: Container(
                          child: Text(
                            "PHONES",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 120,
                      child: Image(
                        height: 170,
                        width: 170,
                        image: AssetImage("images/mobile-9782.png"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Transform(
                      transform: Matrix4.skewY(-0.2),
                      child: Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                          
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(234, 70, 61, 1),
                              Color.fromRGBO(238, 109, 43, 1)
                            ]),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 2,
                      child: Transform(
                        transform: Matrix4.skewY(-0.2),
                        child: Container(
                          child: Text(
                            "GADGETS",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      bottom: 139,
                      child: Image(
                        height: 130,
                        width: 170,
                        image: AssetImage(
                            "images/pngfind.com-headphones-vector-png-710101.png"),
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
