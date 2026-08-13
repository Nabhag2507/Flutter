// import 'package:demo_project/container_demo.dart';
// import 'package:demo_project/first_screen.dart';

// import 'package:demo_project/grids/01_3boxes.dart';
// import 'package:demo_project/grids/02_equal_grid.dart';
// import 'package:demo_project/grids/03_random_grid.dart';

// import 'package:demo_project/image_button_demo/button_demo.dart';
// import 'package:demo_project/image_button_demo/image_demo.dart';
// import 'package:demo_project/image_button_demo/exercise_button.dart';

// import 'package:demo_project/layouts/l1.dart';
// import 'package:demo_project/layouts/l2.dart';
// import 'package:demo_project/layouts/l3.dart';
// import 'package:demo_project/layouts/l4.dart';
// import 'package:demo_project/layouts/l5.dart';
// import 'package:demo_project/layouts/l6.dart';
// import 'package:demo_project/layouts/l7.dart';

// import 'package:demo_project/practice%20screens/p1.dart';
// import 'package:demo_project/stateful%20widget%20Lab%2010/sw1_counter_app.dart';
// import 'package:demo_project/stateful%20widget%20Lab%2010/sw2_change_bg.dart';
// import 'package:demo_project/stateful%20widget%20Lab%2010/sw3_like_unlike_button.dart';
// import 'package:demo_project/stateful%20widget%20Lab%2010/sw5_dice_roller.dart';

// import 'package:demo_project/validations/Extras/task01_student_reg.dart';
// import 'package:demo_project/validations/Extras/task02_password_validation.dart';
// import 'package:demo_project/validations/Extras/task03_email_validation.dart';
// import 'package:demo_project/validations/form1_login_screen.dart';

// import 'package:demo_project/advanced%20forms/00_demo_form.dart';
// import 'package:demo_project/advanced%20forms/01_student_registration_form.dart';

// import 'package:demo_project/list%20view%20and%20grid%20view/01_demo.dart';
// import 'package:demo_project/list%20view%20and%20grid%20view/02_grid_view_builder_demo.dart';
// import 'package:demo_project/list%20view%20and%20grid%20view/03_grid_view_images.dart';

// import 'package:demo_project/scrollable%20widgets/01_single_child_scroll_view.dart';
// import 'package:demo_project/scrollable%20widgets/02_1000_text_form_fields.dart';
// import 'package:demo_project/scrollable%20widgets/03_nested_scroll_view.dart';
// import 'package:demo_project/scrollable%20widgets/04_tab_bar_demo.dart';
// import 'package:demo_project/scrollable%20widgets/05_nested_scroll_view_tabbar.dart';

// import 'package:demo_project/dialogs/01_simple_dialog_demo.dart';
// import 'package:demo_project/dialogs/02_alert_with_yesno_button.dart';
// import 'package:demo_project/dialogs/03_custom_alert_box.dart';
// import 'package:demo_project/dialogs/04_cupertino_dialog_demo.dart';
import 'package:demo_project/dialogs/05_date_picker_demo.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DatePickerDemoBox(),
    );
  }
}
