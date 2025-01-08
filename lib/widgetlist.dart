import 'package:flutterplayground/widgets/containerwidgetscreen.dart';
import 'package:flutterplayground/widgets/imagewidgetscreen.dart';
import 'package:flutterplayground/widgets/slider.dart';
import 'package:flutterplayground/widgets/textfield.dart';
import 'package:flutterplayground/widgets/textwidgetscreen.dart';

final List<Map<String, dynamic>> widgetsList = [
  // Basic Widgets
  {"name": "Text", "screen": TextWidgetScreen()},
  {"name": "Container", "screen": ContainerWidgetScreen()},
  {"name": "Row ","screen":()},
  {"name":"Image","screen": ImageWidgetScreen()},
  {"name": "TextField","screen": TextFieldWidgetScreen()},
  {"name":"Slider","screen": SliderWidgetScreen()}
];

// final List<Map<String, dynamic>> widgetsList = [
//   // Basic Widgets
//   {"name": "Text", "screen": TextWidgetScreen()},
//   {"name": "Container", "screen": ContainerWidgetScreen()},
//   {"name": "Row", "screen": RowWidgetScreen()},
//   {"name": "Column", "screen": ColumnWidgetScreen()},
//   {"name": "Image", "screen": ImageWidgetScreen()},
//   {"name": "Icon", "screen": IconWidgetScreen()},
//   {"name": "Scaffold", "screen": ScaffoldWidgetScreen()},
//   {"name": "AppBar", "screen": AppBarWidgetScreen()},
//   {"name": "FlutterLogo", "screen": FlutterLogoWidgetScreen()},
//
//   // Input Widgets
//   {"name": "TextField", "screen": TextFieldWidgetScreen()},
//   {"name": "Button (ElevatedButton)", "screen": ElevatedButtonWidgetScreen()},
//   {"name": "Button (TextButton)", "screen": TextButtonWidgetScreen()},
//   {"name": "Button (OutlinedButton)", "screen": OutlinedButtonWidgetScreen()},
//   {"name": "Checkbox", "screen": CheckboxWidgetScreen()},
//   {"name": "Radio", "screen": RadioWidgetScreen()},
//   {"name": "Switch", "screen": SwitchWidgetScreen()},
//   {"name": "Slider", "screen": SliderWidgetScreen()},
//   {"name": "DropdownButton", "screen": DropdownButtonWidgetScreen()},
//
//   // Layout Widgets
//   {"name": "Stack", "screen": StackWidgetScreen()},
//   {"name": "Expanded", "screen": ExpandedWidgetScreen()},
//   {"name": "SizedBox", "screen": SizedBoxWidgetScreen()},
//   {"name": "Padding", "screen": PaddingWidgetScreen()},
//   {"name": "Align", "screen": AlignWidgetScreen()},
//   {"name": "Center", "screen": CenterWidgetScreen()},
//   {"name": "ListView", "screen": ListViewWidgetScreen()},
//   {"name": "GridView", "screen": GridViewWidgetScreen()},
//   {"name": "Table", "screen": TableWidgetScreen()},
//   {"name": "Wrap", "screen": WrapWidgetScreen()},
//   {"name": "Flex", "screen": FlexWidgetScreen()},
//
//   // Interaction Widgets
//   {"name": "GestureDetector", "screen": GestureDetectorWidgetScreen()},
//   {"name": "Draggable", "screen": DraggableWidgetScreen()},
//   {"name": "Dismissible", "screen": DismissibleWidgetScreen()},
//
//   // Animation and Motion Widgets
//   {"name": "AnimatedContainer", "screen": AnimatedContainerWidgetScreen()},
//   {"name": "AnimatedOpacity", "screen": AnimatedOpacityWidgetScreen()},
//   {"name": "Hero", "screen": HeroWidgetScreen()},
//   {"name": "FadeTransition", "screen": FadeTransitionWidgetScreen()},
//   {"name": "SlideTransition", "screen": SlideTransitionWidgetScreen()},
//   {"name": "ScaleTransition", "screen": ScaleTransitionWidgetScreen()},
//
//   // Miscellaneous Widgets
//   {"name": "FutureBuilder", "screen": FutureBuilderWidgetScreen()},
//   {"name": "StreamBuilder", "screen": StreamBuilderWidgetScreen()},
//   {"name": "InheritedWidget", "screen": InheritedWidgetScreen()},
//   {"name": "CustomPaint", "screen": CustomPaintWidgetScreen()},
//   {"name": "ClipRRect", "screen": ClipRRectWidgetScreen()},
//   {"name": "Divider", "screen": DividerWidgetScreen()},
//   {"name": "Spacer", "screen": SpacerWidgetScreen()},
//   {"name": "Card", "screen": CardWidgetScreen()},
//   {"name": "Tooltip", "screen": TooltipWidgetScreen()},
//
//   // Scrollable Widgets
//   {"name": "SingleChildScrollView", "screen": SingleChildScrollViewWidgetScreen()},
//   {"name": "PageView", "screen": PageViewWidgetScreen()},
//   {"name": "Scrollbar", "screen": ScrollbarWidgetScreen()},
//
//   // Material Design Widgets
//   {"name": "BottomNavigationBar", "screen": BottomNavigationBarWidgetScreen()},
//   {"name": "Drawer", "screen": DrawerWidgetScreen()},
//   {"name": "SnackBar", "screen": SnackBarWidgetScreen()},
//   {"name": "Dialog", "screen": DialogWidgetScreen()},
//   {"name": "TabBar", "screen": TabBarWidgetScreen()},
//   {"name": "Chip", "screen": ChipWidgetScreen()},
//   {"name": "FloatingActionButton", "screen": FloatingActionButtonWidgetScreen()},
// ];
