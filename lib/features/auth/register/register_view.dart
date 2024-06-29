import 'package:flutter/material.dart';
import 'package:hcc/features/auth/register/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
      body: const RegisterViewBody(),
    );
  }
}
