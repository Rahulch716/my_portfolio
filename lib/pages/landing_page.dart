import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controllers/stack_controller.dart';

class LandingPage extends StatelessWidget {
  final StackController _controller = Get.put(StackController());
  final StackController _stack = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          GetBuilder<StackController>(
            builder: (value) => Stack(children: [
              IndexedStack(
                index: _stack.index,
                children: [
                  Container(
                    color: Colors.amber[400],
                    height: 800,
                  ),
                  Container(
                    color: Colors.red,
                    height: 800,
                  ),
                  Container(
                    color: Colors.grey,
                    height: 800,
                  ), Container(
                    color: Colors.grey,
                    height: 800,
                  ),
                ],
              ),
              Positioned(
                left: 40,
                bottom: 400,
                child: InkWell(
                  child: Container(
                    height: 80,
                    width: 40,
                    color: Colors.white10,
                    child: Icon(Icons.chevron_left_rounded),
                  ),
                  onTap: () {
                    _stack.indexDecrement();
                  },
                ),
              ),
              Positioned(
                right: 40,
                bottom: 400,
                child: InkWell(
                  child: Container(
                    height: 80,
                    width: 40,
                    color: Colors.white10,
                    child: Icon(Icons.chevron_right_rounded),
                  ),
                  onTap: () {
                    _stack.indexIncrement();
                  },
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.blue,
            height: 400,
          ),
          Container(
            color: Colors.green,
            height: 400,
          ),
        ],
      )),
    );
  }
}
