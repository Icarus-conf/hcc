import 'package:flutter/material.dart';
import 'package:hcc/features/auth/register/widgets/enter_your_code_body_view.dart';

class EnterYourCodeView extends StatelessWidget {
  const EnterYourCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: EnterYourCodeBodyView(),
    );
  }
}
