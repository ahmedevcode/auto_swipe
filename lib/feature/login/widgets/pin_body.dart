import 'package:autoswipe/feature/home/home_view.dart';
import 'package:autoswipe/feature/home/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class pin_body extends StatefulWidget {
  const pin_body({super.key});

  @override
  State<pin_body> createState() => _pin_bodyState();
}

class _pin_bodyState extends State<pin_body> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();
    int buttonText = 12345;


    return Scaffold(
      appBar: AppBar(title: Text('AutoSwipe',style: TextStyle(fontSize: 16),),),

      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _textController,
                onChanged: (value) {
                  // Update the button text as the text field changes
                  setState(() {
                    buttonText = value as int;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Enter your text',
                  hintText: 'Type something here',
                  icon: Icon(Icons.text_fields),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(

                onPressed: () { String enteredText = _textController.text;


                  if(enteredText=='12345'){
                    Get.to(home_view());
                  };

                  // Do something with the enteredText, e.g., print it
                 // print('Entered Text: $enteredText');
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Button Text: $buttonText',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
