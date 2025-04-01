/*The latest version, Material 3, enables personal, adaptive, and expressive experiences – from dynamic color and enhanced accessibility, to foundations for large screen layouts and design tokens.  */
import 'package:bmi_calculator/config/colors.dart';
import 'package:flutter/material.dart';

var lighttheme= ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
     background: LBGcolor,
     primary: LPrimarycolor,//Primary colors are used for key components across the UI, such as the FAB, prominent buttons, and active states. · Secondary colors are used for less prominent ...
     onBackground: LFontcolor, //color that's clearly legible when drawn on background.
     onPrimaryContainer: LFontcolor,//thats clearly legible on primary container
     primaryContainer: Ldivcolor,//A color used for elements needing less emphasis than primary.
     onSecondaryContainer: LLabelcolor//

  )
);

var Darktheme= ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
     background: DBGcolor,
     primary: DPrimarycolor,//Primary colors are used for key components across the UI, such as the FAB, prominent buttons, and active states. · Secondary colors are used for less prominent ...
     onBackground: DFontcolor, //color that's clearly legible when drawn on background.
     onPrimaryContainer: DFontcolor,//thats clearly legible on primary container
     primaryContainer: Ddivcolor,//A color used for elements needing less emphasis than primary.
     onSecondaryContainer: DLabelcolor//

  )
);
/*we have different props to design theme

like appbar theme : appbartheme(
 backgroundcolor
 titletextstyle
 centre title
}) */