import 'package:eccommerce1/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({super.key});

  @override
  State<ToggleButtonWidget> createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  List<bool> isSelected = [false , false , false];
FocusNode focusNodeButton1 = FocusNode();
FocusNode focusNodeButton2 = FocusNode();
FocusNode focusNodeButton3 = FocusNode();
late List<FocusNode> focusToggle;

@override
  void initState() {
    // TODO: implement initState
  focusToggle=[
  focusNodeButton1,
  focusNodeButton2,
  focusNodeButton3,];
  super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    focusNodeButton1.dispose();
    focusNodeButton2.dispose();
    focusNodeButton3.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderWidth: 0,
      focusColor: null,
      fillColor: Colors.transparent, 
      selectedColor: AppColors.baseDarkPinkColor,
      disabledColor: AppColors.baseBlackColor,
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
       focusNodes: focusToggle,
       children: [
       Icon( 
        Icons.grid_view,
      size: 25,
       ),
        Icon( 
        Icons.view_agenda_outlined,
      size: 25,
       ),
        Icon( 
        Icons.crop_landscape_outlined,
      size: 25,
       ),
      ], 
      onPressed: (int index){
        setState(() {
          for( int buttonIndex = 0; buttonIndex < isSelected.length;){
          if(buttonIndex ==index){
            isSelected[buttonIndex] = true;
          }else{
            isSelected[buttonIndex] = false;
          }
          }
          }
        );
      },
      isSelected: isSelected,
    );}}
 