import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marquee/marquee.dart';
import 'package:petrolpumdealerchayan/home/responsive_devices.dart';
import 'package:petrolpumdealerchayan/router/routes_names.dart';
import 'package:petrolpumdealerchayan/utils/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
              PointerDeviceKind.trackpad,
              PointerDeviceKind.unknown,
              PointerDeviceKind.invertedStylus,
              PointerDeviceKind.stylus
            },
          ),
          child: Column(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  child: SafeArea(
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 4,
                                      color: const Color(0xFFF97524),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 4,
                                      color: const Color(0xff027bc3),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 4,
                                      color: const Color(0xFFEC1A23),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30.0, 15, 30, 0),
                                child: Row(
                                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Spacer(),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                'assets/images/image1.png',
                                                height: 50,
                                                width: 50),
                                            const SizedBox(width: 10),
                                            Image.asset(
                                                'assets/images/image2.jpg',
                                                height: 50,
                                                width: 50),
                                            const SizedBox(width: 10),
                                            Image.asset(
                                                'assets/images/image3.png',
                                                height: 50,
                                                width: 50),
                                            const SizedBox(width: 10),
                                            const Text(
                                                'Petrol Pump Dealer Chayan',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.black))
                                          ]),
                                      const Spacer(),
                                      const Spacer(),
                                      InkWell(
                                          onTap: () {
                                            context.pushNamed(RouteNames.apply);
                                          },
                                          child: const Text('Apply Now',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red)))
                                    ]),
                              ),
                              const SizedBox(height: 15),
                              const Divider(color: Colors.black, thickness: 4),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                child: Image.asset(
                                                  'assets/images/homebanner.jpg',
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.6,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.4,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.5,
                                                  // margin: EdgeInsets.only(
                                                  //     top: MediaQuery.of(context)
                                                  //             .size
                                                  //             .height *
                                                  //         0.39),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  color: Colors.black
                                                      .withOpacity(0.75),
                                                  child: const Text(
                                                      'Retail Outlet (Petrol Pump)\nDealer Selection Portal for Oil Marketing Companies',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              whiteBackgroundColor)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0.0),
                                            child: SizedBox(
                                              height: 50,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.51,
                                              child: Row(children: [
                                                const Expanded(
                                                  child: Text('Notice:',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w900,
                                                          color: Colors.red)),
                                                ),
                                                const SizedBox(width: 10),

                                                // Marquee

                                                Expanded(
                                                  flex: 7,
                                                  child: Marquee(
                                                    text:
                                                        'Applicants are advised to make all payments like application fees, initial security deposit only through this website. Oil companies are not responsible for any payment made through any other mode/website.',
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.red),
                                                    scrollAxis: Axis.horizontal,

                                                    pauseAfterRound:
                                                        const Duration(
                                                            seconds: 1),
                                                    // startPadding: 10.0,
                                                    accelerationDuration:
                                                        const Duration(
                                                            seconds: 1),
                                                    accelerationCurve:
                                                        Curves.linear,
                                                    decelerationDuration:
                                                        const Duration(
                                                            milliseconds: 50),
                                                    decelerationCurve:
                                                        Curves.easeOut,
                                                  ),
                                                )
                                              ]),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          const Text(
                                              'Dealerships for Regular & Rural Retail Outlets (Petrol Pump)',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: textColor)),
                                          const SizedBox(height: 10),
                                          const Center(
                                            child: Text(
                                                'Network expansion has been an important business activity of PSU Oil Marketing Companies (OMCs)\nfor increasing the reach of petroleum products across the country.',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: textColor)),
                                          ),
                                        ],
                                      ),
                                      // const SizedBox(height: 40),
                                      // Container(
                                      //     padding: const EdgeInsets.fromLTRB(
                                      //         0, 25, 0, 25),
                                      //     width: double.infinity,
                                      //     decoration: BoxDecoration(
                                      //       color: Colors.grey[100],
                                      //     ),
                                      //     child: Row(
                                      //       mainAxisAlignment:
                                      //           MainAxisAlignment.center,
                                      //       children: [
                                      //         const Text('FAQ',
                                      //             style: TextStyle(
                                      //                 fontSize: 15,
                                      //                 fontWeight:
                                      //                     FontWeight.bold,
                                      //                 color: textColor)),
                                      //         const SizedBox(width: 20),
                                      //         Container(
                                      //             height: 20,
                                      //             width: 2,
                                      //             color: Colors.black),
                                      //         const SizedBox(width: 20),
                                      //         const Text(
                                      //             'Divisional Offices (IOC) / Territory Offices (BPC) / Regional Offices (HPC)',
                                      //             style: TextStyle(
                                      //                 fontSize: 15,
                                      //                 fontWeight:
                                      //                     FontWeight.bold,
                                      //                 color: textColor)),
                                      //       ],
                                      //     )),
                                      const SizedBox(height: 40),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                    'Copyright © Petrol Pump Dealer Chayan. All rights',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: textColor)),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                    'Best viewed at 1366x768 resolution in Chrome 30+, IE 11+, Firefox 27+ & latest version of others.',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: textColor)),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Column(
                                            children: [
                                              Text(
                                                  'For any Complaints/Queries Write to us on',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: textColor)),
                                              SizedBox(height: 2),
                                              Text(
                                                  'support[at]petrolpumpdealerchayan[dot]in',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: darkBlue)),
                                            ],
                                          ))
                                        ],
                                      )
                                    ]),
                              ),
                            ])),
                  ),
                ),
              if (Responsive.isMobile(context) || Responsive.isTablet(context))
                Expanded(
                  child: SafeArea(
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 4,
                                      color: const Color(0xFFF97524),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 4,
                                      color: const Color(0xff027bc3),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 4,
                                      color: const Color(0xFFEC1A23),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15.0, 20, 15, 0),
                                child: Column(children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/image1.png',
                                            height: 50, width: 50),
                                        const SizedBox(width: 10),
                                        Image.asset('assets/images/image2.jpg',
                                            height: 50, width: 50),
                                        const SizedBox(width: 10),
                                        Image.asset('assets/images/image3.png',
                                            height: 50, width: 50),
                                      ]),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Flexible(
                                        child: Text('Petrol Pump Dealer Chayan',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w900,
                                                color: Colors.black)),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            context.pushNamed(RouteNames.apply);
                                          },
                                          child: const Text('Apply Now',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red))),
                                    ],
                                  )
                                ]),
                              ),
                              const SizedBox(height: 15),
                              const Divider(color: Colors.black, thickness: 4),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              SizedBox(
                                                width: double.infinity,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5,
                                                child: Image.asset(
                                                  'assets/images/homebanner.jpg',
                                                  width: double.infinity,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.4,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  width: double.infinity,
                                                  // margin: EdgeInsets.only(
                                                  //     top: MediaQuery.of(context)
                                                  //             .size
                                                  //             .height *
                                                  //         0.39),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  color: Colors.black
                                                      .withOpacity(0.75),
                                                  child: const Text(
                                                      'Retail Outlet (Petrol Pump)\nDealer Selection Portal for Oil Marketing Companies',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              whiteBackgroundColor)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 50,
                                            child: Row(children: [
                                              const Expanded(
                                                flex: 1,
                                                child: Text('Notice:',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: Colors.red)),
                                              ),
                                              const SizedBox(width: 10),

                                              // Marquee

                                              Expanded(
                                                flex: 3,
                                                child: Marquee(
                                                  blankSpace: 80,
                                                  text:
                                                      'Applicants are advised to make all payments like application fees, initial security deposit only through this website. Oil companies are not responsible for any payment made through any other mode/website.',
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.red),
                                                  scrollAxis: Axis.horizontal,

                                                  pauseAfterRound:
                                                      const Duration(
                                                          seconds: 1),
                                                  // startPadding: 10.0,
                                                  accelerationDuration:
                                                      const Duration(
                                                          seconds: 1),
                                                  accelerationCurve:
                                                      Curves.linear,
                                                  decelerationDuration:
                                                      const Duration(
                                                          milliseconds: 50),
                                                  decelerationCurve:
                                                      Curves.easeOut,
                                                ),
                                              )
                                            ]),
                                          ),
                                          const SizedBox(height: 20),
                                          const Text(
                                              'Dealerships for Regular & Rural Retail Outlets (Petrol Pump)',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: textColor)),
                                          const SizedBox(height: 10),
                                          const Center(
                                            child: Text(
                                                'Network expansion has been an important business activity of PSU Oil Marketing Companies (OMCs)\nfor increasing the reach of petroleum products across the country.',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: textColor)),
                                          ),
                                        ],
                                      ),
                                      // const SizedBox(height: 40),
                                      // Container(
                                      //     padding: const EdgeInsets.fromLTRB(
                                      //         0, 25, 0, 25),
                                      //     width: double.infinity,
                                      //     decoration: BoxDecoration(
                                      //       color: Colors.grey[100],
                                      //     ),
                                      //     child: Row(
                                      //       mainAxisAlignment:
                                      //           MainAxisAlignment.center,
                                      //       children: [
                                      //         const Text('FAQ',
                                      //             style: TextStyle(
                                      //                 fontSize: 15,
                                      //                 fontWeight:
                                      //                     FontWeight.bold,
                                      //                 color: textColor)),
                                      //         const SizedBox(width: 20),
                                      //         Container(
                                      //             height: 20,
                                      //             width: 2,
                                      //             color: Colors.black),
                                      //         const SizedBox(width: 20),
                                      //         const Text(
                                      //             'Divisional Offices (IOC) / Territory Offices (BPC) / Regional Offices (HPC)',
                                      //             style: TextStyle(
                                      //                 fontSize: 15,
                                      //                 fontWeight:
                                      //                     FontWeight.bold,
                                      //                 color: textColor)),
                                      //       ],
                                      //     )),
                                      const SizedBox(height: 60),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Copyright © Petrol Pump Dealer Chayan. All rights',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: textColor)),
                                          SizedBox(height: 10),
                                          Text(
                                              'Best viewed at 1366x768 resolution in Chrome 30+, IE 11+, Firefox 27+ & latest version of others.',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: textColor)),
                                          SizedBox(height: 10),
                                          Text(
                                              'For any Complaints/Queries Write to us on',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: textColor)),
                                          SizedBox(height: 2),
                                          Text(
                                              'support[at]petrolpumpdealerchayan[dot]in',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                  color: darkBlue))
                                        ],
                                      )
                                    ]),
                              ),
                            ])),
                  ),
                ),
            ],
          ),
        ));
  }
}
