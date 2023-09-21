import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petrolpumdealerchayan/home/responsive_devices.dart';
import 'package:petrolpumdealerchayan/home/textformfield_widget.dart';
import 'package:petrolpumdealerchayan/riverpod/home_notfier.dart';
import 'package:petrolpumdealerchayan/utils/colors.dart';

class ApplyNow extends ConsumerWidget {
  const ApplyNow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refWatch = ref.watch(homeNotifierProvider);
    final refRead = ref.read(homeNotifierProvider.notifier);

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
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                  child: Column(
                    children: [
                      Row(children: [
                        Image.asset('assets/images/image1.png',
                            height: 50, width: 50),
                        const SizedBox(width: 10),
                        Image.asset('assets/images/image2.jpg',
                            height: 50, width: 50),
                        const SizedBox(width: 10),
                        Image.asset('assets/images/image3.png',
                            height: 50, width: 50),
                        const SizedBox(width: 10),
                        const Text('Petrol Pump Dealer Chayan',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Colors.black))
                      ]),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.black, thickness: 4),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/homebanner.jpg',
                                height:
                                    MediaQuery.of(context).size.height * 0.6,
                                width: MediaQuery.of(context).size.width * 0.5,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text('Apply Now',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: textColor)),
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomTextFormField(
                                      hintText: 'Enter your Name',
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomTextFormField(
                                      hintText: 'Enter yourv Mobile Number',
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomTextFormField(
                                      hintText: 'Enter your Email Id',
                                    ),
                                    const SizedBox(height: 10),
                                    const CustomTextFormField(
                                      hintText: 'Enter your Location',
                                    ),
                                    const SizedBox(height: 20),
                                    DropdownButtonFormField(
                                      decoration: InputDecoration(
                                          isDense: true,
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color: refWatch.value?.selectedGender == null
                                                      ? Colors.grey
                                                      : Colors.grey)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color:
                                                      refWatch.value?.selectedGender == null
                                                          ? Colors.white
                                                          : Colors.grey)),
                                          disabledBorder: InputBorder.none,
                                          errorBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              borderSide: BorderSide(
                                                  color:
                                                      refWatch.value?.selectedGender == null
                                                          ? Colors.white
                                                          : Colors.grey))),
                                      icon: const Icon(
                                          Icons.keyboard_arrow_down_rounded),
                                      elevation: 1,
                                      hint: const Text('Select Company'),
                                      //    isDense: true,
                                      borderRadius: BorderRadius.circular(10),
                                      isExpanded: true,
                                      value: refWatch.value?.selectedGender,
                                      onChanged: (newValue) {},
                                      items: const [
                                        DropdownMenuItem(
                                          value: '10000',
                                          child: Text('OPEN Rs 10,000'),
                                        ),
                                        DropdownMenuItem(
                                          value: '5000',
                                          child: Text('OBC  Rs 5000'),
                                        ),
                                        DropdownMenuItem(
                                          value: '3000',
                                          child: Text('SC  Rs 3000'),
                                        ),
                                        DropdownMenuItem(
                                          value: '2500',
                                          child: Text('ST Rs 2500'),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 15),

                                    // Checkbox for terms and condtion
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: refWatch.value?.isChecked,
                                          onChanged: (bool? value) {
                                            refRead.isChecked(value ?? false);
                                          },
                                        ),
                                        const SizedBox(width: 10),
                                        const Expanded(
                                          child: Text(
                                            'Company Applying for Indian Oil Corporation Limited Hindustan Petroleum Corporation Limited Bharat Petroleum Corporation Limited',
                                            style: TextStyle(
                                                fontSize: 14, color: textColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    Center(
                                      child: InkWell(
                                        onTap: () {
                                          refRead.randomNumber();
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 10, 30, 10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: darkBlue),
                                          child: const Text(
                                            'Submit',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ),
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              Expanded(
                child: SafeArea(
                    child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/image1.png',
                                height: 50, width: 50),
                            const SizedBox(width: 10),
                            Image.asset('assets/images/image2.jpg',
                                height: 50, width: 50),
                            const SizedBox(width: 10),
                            Image.asset('assets/images/image3.png',
                                height: 50, width: 50),
                            const SizedBox(width: 10),
                          ]),
                      const SizedBox(height: 15),
                      const Center(
                        child: Text('Petrol Pump Dealer Chayan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: Colors.black)),
                      ),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.black, thickness: 4),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/homebanner.jpg',
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text('Apply Now',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: textColor)),
                              const SizedBox(height: 10),
                              const CustomTextFormField(
                                hintText: 'Enter your Name',
                              ),
                              const SizedBox(height: 10),
                              const CustomTextFormField(
                                hintText: 'Enter yourv Mobile Number',
                              ),
                              const SizedBox(height: 10),
                              const CustomTextFormField(
                                hintText: 'Enter your Email Id',
                              ),
                              const SizedBox(height: 10),
                              const CustomTextFormField(
                                hintText: 'Enter your Location',
                              ),
                              const SizedBox(height: 20),
                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                    isDense: true,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: refWatch.value?.selectedGender == null
                                                ? Colors.grey
                                                : Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color:
                                                refWatch.value?.selectedGender == null
                                                    ? Colors.white
                                                    : Colors.grey)),
                                    disabledBorder: InputBorder.none,
                                    errorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color:
                                                refWatch.value?.selectedGender ==
                                                        null
                                                    ? Colors.white
                                                    : Colors.grey))),
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                elevation: 1,
                                hint: const Text('Select Company'),
                                //    isDense: true,
                                borderRadius: BorderRadius.circular(10),
                                isExpanded: true,
                                value: refWatch.value?.selectedGender,
                                onChanged: (newValue) {},
                                items: const [
                                  DropdownMenuItem(
                                    value: '10000',
                                    child: Text('OPEN Rs 10,000'),
                                  ),
                                  DropdownMenuItem(
                                    value: '5000',
                                    child: Text('OBC  Rs 5000'),
                                  ),
                                  DropdownMenuItem(
                                    value: '3000',
                                    child: Text('SC  Rs 3000'),
                                  ),
                                  DropdownMenuItem(
                                    value: '2500',
                                    child: Text('ST Rs 2500'),
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),

                              // Checkbox for terms and condtion
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    value: refWatch.value?.isChecked,
                                    onChanged: (bool? value) {
                                      refRead.isChecked(value ?? false);
                                    },
                                  ),
                                  const SizedBox(width: 10),
                                  const Expanded(
                                    child: Text(
                                      'Company Applying for Indian Oil Corporation Limited Hindustan Petroleum Corporation Limited Bharat Petroleum Corporation Limited',
                                      style: TextStyle(
                                          fontSize: 14, color: textColor),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    refRead.randomNumber();
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 10, 30, 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: darkBlue),
                                    child: const Text(
                                      'Submit',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ),
          ],
        ),
      ),
    );
  }
}
