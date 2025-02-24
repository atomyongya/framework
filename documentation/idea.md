import 'dart:developer';

import 'package:app/config/app_themes/app_colors.dart';
import 'package:app/cores/components/buttons/app_button.dart';
import 'package:flutter/material.dart';
import 'package:app/cores/components/inputfield/inputfield.dart';
import 'package:flutter/services.dart';

class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  State<InteractivePage> createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: FocusTraversalGroup(
            policy: OrderedTraversalPolicy(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                DropdownButton(
                  focusNode: focusNode,
                  value: 'atom',
                  items: ['atom', 'yongya', 'other']
                      .map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem(value: e, child: Text(e));
                  }).toList(),
                  onChanged: (_) {},
                ),
                FocusTraversalOrder(
                  order: const NumericFocusOrder(1),
                  child: Inputfield(
                    suffixIcon: IconButton(
                      focusNode: FocusNode(skipTraversal: true),
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                FocusTraversalOrder(
                  order: NumericFocusOrder(2),
                  child: Inputfield(),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Flexible(
                      child: FocusTraversalOrder(
                        order: NumericFocusOrder(4),
                        child: CallbackShortcuts(
                          bindings: <ShortcutActivator, VoidCallback>{
                            const SingleActivator(LogicalKeyboardKey.enter):
                                () {
                              log("Back Button Pressed");
                            }
                          },
                          child: AppButton(
                            label: 'Back',
                            onTap: () {},
                            focusColor: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: FocusTraversalOrder(
                        order: NumericFocusOrder(3),
                        child: CallbackShortcuts(
                          bindings: <ShortcutActivator, VoidCallback>{
                            const SingleActivator(LogicalKeyboardKey.enter):
                                () {
                              log("Next Button Pressed");
                            }
                          },
                          child: AppButton(
                            label: 'Next',
                            focusColor: AppColors.primary,
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
