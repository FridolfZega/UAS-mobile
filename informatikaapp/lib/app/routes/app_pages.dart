import 'package:get/get.dart';

import '../modules/ApiIntegration/bindings/api_integration_binding.dart';
import '../modules/ApiIntegration/views/api_integration_view.dart';
import '../modules/BasicWidget/AssetImage/bindings/asset_image_binding.dart';
import '../modules/BasicWidget/AssetImage/views/asset_image_view.dart';
import '../modules/BasicWidget/Builder/bindings/builder_binding.dart';
import '../modules/BasicWidget/Builder/views/builder_view.dart';
import '../modules/BasicWidget/Container/bindings/container_binding.dart';
import '../modules/BasicWidget/Container/views/container_view.dart';
import '../modules/BasicWidget/Expanded/bindings/expanded_binding.dart';
import '../modules/BasicWidget/Expanded/views/expanded_view.dart';
import '../modules/BasicWidget/Flexible/bindings/flexible_binding.dart';
import '../modules/BasicWidget/Flexible/views/flexible_view.dart';
import '../modules/BasicWidget/Icon/bindings/icon_binding.dart';
import '../modules/BasicWidget/Icon/views/icon_view.dart';
import '../modules/BasicWidget/Image/bindings/image_binding.dart';
import '../modules/BasicWidget/Image/views/image_view.dart';
import '../modules/BasicWidget/NetworkImage/bindings/network_image_binding.dart';
import '../modules/BasicWidget/NetworkImage/views/network_image_view.dart';
import '../modules/BasicWidget/PlaceHolder/bindings/place_holder_binding.dart';
import '../modules/BasicWidget/PlaceHolder/views/place_holder_view.dart';
import '../modules/BasicWidget/ProgressIndicator/bindings/progress_indicator_binding.dart';
import '../modules/BasicWidget/ProgressIndicator/views/progress_indicator_view.dart';
import '../modules/BasicWidget/RichText/bindings/rich_text_binding.dart';
import '../modules/BasicWidget/RichText/views/rich_text_view.dart';
import '../modules/BasicWidget/SizeBox/bindings/size_box_binding.dart';
import '../modules/BasicWidget/SizeBox/views/size_box_view.dart';
import '../modules/BasicWidget/Spacer/bindings/spacer_binding.dart';
import '../modules/BasicWidget/Spacer/views/spacer_view.dart';
import '../modules/BasicWidget/Text/bindings/text_binding.dart';
import '../modules/BasicWidget/Text/views/text_view.dart';
import '../modules/BasicWidget/bindings/basic_widget_binding.dart';
import '../modules/BasicWidget/views/basic_widget_view.dart';
import '../modules/DeviceFeatures/bindings/device_features_binding.dart';
import '../modules/DeviceFeatures/views/device_features_view.dart';
import '../modules/InputForms/CheckBox/bindings/check_box_binding.dart';
import '../modules/InputForms/CheckBox/views/check_box_view.dart';
import '../modules/InputForms/CheckboxListTile/bindings/checkbox_list_tile_binding.dart';
import '../modules/InputForms/CheckboxListTile/views/checkbox_list_tile_view.dart';
import '../modules/InputForms/Radio/bindings/radio_binding.dart';
import '../modules/InputForms/Radio/views/radio_view.dart';
import '../modules/InputForms/RadioListTile/bindings/radio_list_tile_binding.dart';
import '../modules/InputForms/RadioListTile/views/radio_list_tile_view.dart';
import '../modules/InputForms/Slider/bindings/slider_binding.dart';
import '../modules/InputForms/Slider/views/slider_view.dart';
import '../modules/InputForms/Switch/bindings/switch_binding.dart';
import '../modules/InputForms/Switch/views/switch_view.dart';
import '../modules/InputForms/SwitchListTile/bindings/switch_list_tile_binding.dart';
import '../modules/InputForms/SwitchListTile/views/switch_list_tile_view.dart';
import '../modules/InputForms/TextField/bindings/text_field_binding.dart';
import '../modules/InputForms/TextField/views/text_field_view.dart';
import '../modules/InputForms/TextFornField/bindings/text_forn_field_binding.dart';
import '../modules/InputForms/TextFornField/views/text_forn_field_view.dart';
import '../modules/InputForms/bindings/input_forms_binding.dart';
import '../modules/InputForms/views/input_forms_view.dart';
import '../modules/LayoutStructure/Align/bindings/align_binding.dart';
import '../modules/LayoutStructure/Align/views/align_view.dart';
import '../modules/LayoutStructure/AspectRation/bindings/aspect_ration_binding.dart';
import '../modules/LayoutStructure/AspectRation/views/aspect_ration_view.dart';
import '../modules/LayoutStructure/BaseLine/bindings/base_line_binding.dart';
import '../modules/LayoutStructure/BaseLine/views/base_line_view.dart';
import '../modules/LayoutStructure/Center/bindings/center_binding.dart';
import '../modules/LayoutStructure/Center/views/center_view.dart';
import '../modules/LayoutStructure/Column/bindings/column_binding.dart';
import '../modules/LayoutStructure/Column/views/column_view.dart';
import '../modules/LayoutStructure/ConstrainedBox/bindings/constrained_box_binding.dart';
import '../modules/LayoutStructure/ConstrainedBox/views/constrained_box_view.dart';
import '../modules/LayoutStructure/Flex/bindings/flex_binding.dart';
import '../modules/LayoutStructure/Flex/views/flex_view.dart';
import '../modules/LayoutStructure/Padding/bindings/padding_binding.dart';
import '../modules/LayoutStructure/Padding/views/padding_view.dart';
import '../modules/LayoutStructure/Row/bindings/row_binding.dart';
import '../modules/LayoutStructure/Row/views/row_view.dart';
import '../modules/LayoutStructure/SafeArea/bindings/safe_area_binding.dart';
import '../modules/LayoutStructure/SafeArea/views/safe_area_view.dart';
import '../modules/LayoutStructure/Stack/bindings/stack_binding.dart';
import '../modules/LayoutStructure/Stack/views/stack_view.dart';
import '../modules/LayoutStructure/bindings/layout_structure_binding.dart';
import '../modules/LayoutStructure/views/layout_structure_view.dart';
import '../modules/LocalStorage/bindings/local_storage_binding.dart';
import '../modules/LocalStorage/views/local_storage_view.dart';
import '../modules/MaterialDesign/AppBar/bindings/app_bar_binding.dart';
import '../modules/MaterialDesign/AppBar/views/app_bar_view.dart';
import '../modules/MaterialDesign/BottomNavigationBar/bindings/bottom_navigation_bar_binding.dart';
import '../modules/MaterialDesign/BottomNavigationBar/views/bottom_navigation_bar_view.dart';
import '../modules/MaterialDesign/ButtonSheet/bindings/button_sheet_binding.dart';
import '../modules/MaterialDesign/ButtonSheet/views/button_sheet_view.dart';
import '../modules/MaterialDesign/Card/bindings/card_binding.dart';
import '../modules/MaterialDesign/Card/views/card_view.dart';
import '../modules/MaterialDesign/Chip/bindings/chip_binding.dart';
import '../modules/MaterialDesign/Chip/views/chip_view.dart';
import '../modules/MaterialDesign/CircularProgressIndicator/bindings/circular_progress_indicator_binding.dart';
import '../modules/MaterialDesign/CircularProgressIndicator/views/circular_progress_indicator_view.dart';
import '../modules/MaterialDesign/DatePicker/bindings/date_picker_binding.dart';
import '../modules/MaterialDesign/DatePicker/views/date_picker_view.dart';
import '../modules/MaterialDesign/Dialog/bindings/dialog_binding.dart';
import '../modules/MaterialDesign/Dialog/views/dialog_view.dart';
import '../modules/MaterialDesign/Divider/bindings/divider_binding.dart';
import '../modules/MaterialDesign/Divider/views/divider_view.dart';
import '../modules/MaterialDesign/DrawerDrawer/bindings/drawer_drawer_binding.dart';
import '../modules/MaterialDesign/DrawerDrawer/views/drawer_drawer_view.dart';
import '../modules/MaterialDesign/FloatingActionButton/bindings/floating_action_button_binding.dart';
import '../modules/MaterialDesign/FloatingActionButton/views/floating_action_button_view.dart';
import '../modules/MaterialDesign/IconButton/bindings/icon_button_binding.dart';
import '../modules/MaterialDesign/IconButton/views/icon_button_view.dart';
import '../modules/MaterialDesign/LinearProgressIndicator/bindings/linear_progress_indicator_binding.dart';
import '../modules/MaterialDesign/LinearProgressIndicator/views/linear_progress_indicator_view.dart';
import '../modules/MaterialDesign/LisTile/bindings/lis_tile_binding.dart';
import '../modules/MaterialDesign/LisTile/views/lis_tile_view.dart';
import '../modules/MaterialDesign/MaterialApp/bindings/material_app_binding.dart';
import '../modules/MaterialDesign/MaterialApp/views/material_app_view.dart';
import '../modules/MaterialDesign/MaterialButton/bindings/material_button_binding.dart';
import '../modules/MaterialDesign/MaterialButton/views/material_button_view.dart';
import '../modules/MaterialDesign/NavigationBar/bindings/navigation_bar_binding.dart';
import '../modules/MaterialDesign/NavigationBar/views/navigation_bar_view.dart';
import '../modules/MaterialDesign/NavigationDraw/bindings/navigation_draw_binding.dart';
import '../modules/MaterialDesign/NavigationDraw/views/navigation_draw_view.dart';
import '../modules/MaterialDesign/NavigationRail/bindings/navigation_rail_binding.dart';
import '../modules/MaterialDesign/NavigationRail/views/navigation_rail_view.dart';
import '../modules/MaterialDesign/RawChip/bindings/raw_chip_binding.dart';
import '../modules/MaterialDesign/RawChip/views/raw_chip_view.dart';
import '../modules/MaterialDesign/Scaffold/bindings/scaffold_binding.dart';
import '../modules/MaterialDesign/Scaffold/views/scaffold_view.dart';
import '../modules/MaterialDesign/SnackBar/bindings/snack_bar_binding.dart';
import '../modules/MaterialDesign/SnackBar/views/snack_bar_view.dart';
import '../modules/MaterialDesign/TabBar/bindings/tab_bar_binding.dart';
import '../modules/MaterialDesign/TabBar/views/tab_bar_view.dart';
import '../modules/MaterialDesign/TabBarView/bindings/tab_bar_view_binding.dart';
import '../modules/MaterialDesign/TabBarView/views/tab_bar_view_view.dart';
import '../modules/MaterialDesign/TimePicker/bindings/time_picker_binding.dart';
import '../modules/MaterialDesign/TimePicker/views/time_picker_view.dart';
import '../modules/MaterialDesign/bindings/material_design_binding.dart';
import '../modules/MaterialDesign/views/material_design_view.dart';
import '../modules/ScrollingList/CustomScrollView/bindings/custom_scroll_view_binding.dart';
import '../modules/ScrollingList/CustomScrollView/views/custom_scroll_view_view.dart';
import '../modules/ScrollingList/GridView/bindings/grid_view_binding.dart';
import '../modules/ScrollingList/GridView/views/grid_view_view.dart';
import '../modules/ScrollingList/ListView/bindings/list_view_binding.dart';
import '../modules/ScrollingList/ListView/views/list_view_view.dart';
import '../modules/ScrollingList/NestedScrollView/bindings/nested_scroll_view_binding.dart';
import '../modules/ScrollingList/NestedScrollView/views/nested_scroll_view_view.dart';
import '../modules/ScrollingList/Scrollbar/bindings/scrollbar_binding.dart';
import '../modules/ScrollingList/Scrollbar/views/scrollbar_view.dart';
import '../modules/ScrollingList/SingleChildScrollView/bindings/single_child_scroll_view_binding.dart';
import '../modules/ScrollingList/SingleChildScrollView/views/single_child_scroll_view_view.dart';
import '../modules/ScrollingList/bindings/scrolling_list_binding.dart';
import '../modules/ScrollingList/views/scrolling_list_view.dart';
import '../modules/StudyCase/bindings/study_case_binding.dart';
import '../modules/StudyCase/views/study_case_view.dart';
import '../modules/Widgets/bindings/widgets_binding.dart';
import '../modules/Widgets/views/widgets_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WIDGETS,
      page: () => const WidgetsView(),
      binding: WidgetsBinding(),
    ),
    GetPage(
      name: _Paths.MATERIAL_DESIGN,
      page: () => const MaterialDesignView(),
      binding: MaterialDesignBinding(),
      children: [
        GetPage(
          name: _Paths.MATERIAL_APP,
          page: () => const MaterialAppView(),
          binding: MaterialAppBinding(),
        ),
        GetPage(
          name: _Paths.SCAFFOLD,
          page: () => const ScaffoldView(),
          binding: ScaffoldBinding(),
        ),
        GetPage(
          name: _Paths.BOTTOM_NAVIGATION_BAR,
          page: () => const BottomNavigationBarView(),
          binding: BottomNavigationBarBinding(),
        ),
        GetPage(
          name: _Paths.NAVIGATION_BAR,
          page: () => const NavigationBarView(),
          binding: NavigationBarBinding(),
        ),
        GetPage(
          name: _Paths.NAVIGATION_DRAW,
          page: () => const NavigationDrawView(),
          binding: NavigationDrawBinding(),
        ),
        GetPage(
          name: _Paths.NAVIGATION_RAIL,
          page: () => const NavigationRailView(),
          binding: NavigationRailBinding(),
        ),
        GetPage(
          name: _Paths.DRAWER_DRAWER,
          page: () => const DrawerDrawerView(),
          binding: DrawerDrawerBinding(),
        ),
        GetPage(
          name: _Paths.FLOATING_ACTION_BUTTON,
          page: () => const FloatingActionButtonView(),
          binding: FloatingActionButtonBinding(),
        ),
        GetPage(
          name: _Paths.SNACK_BAR,
          page: () => const SnackBarView(),
          binding: SnackBarBinding(),
        ),
        GetPage(
          name: _Paths.BUTTON_SHEET,
          page: () => const ButtonSheetView(),
          binding: ButtonSheetBinding(),
        ),
        GetPage(
          name: _Paths.CARD,
          page: () => const CardView(),
          binding: CardBinding(),
        ),
        GetPage(
          name: _Paths.CHIP,
          page: () => const ChipView(),
          binding: ChipBinding(),
        ),
        GetPage(
          name: _Paths.RAW_CHIP,
          page: () => const RawChipView(),
          binding: RawChipBinding(),
        ),
        GetPage(
          name: _Paths.CIRCULAR_PROGRESS_INDICATOR,
          page: () => const CircularProgressIndicatorView(),
          binding: CircularProgressIndicatorBinding(),
        ),
        GetPage(
          name: _Paths.LINEAR_PROGRESS_INDICATOR,
          page: () => const LinearProgressIndicatorView(),
          binding: LinearProgressIndicatorBinding(),
        ),
        GetPage(
          name: _Paths.DATE_PICKER,
          page: () => const DatePickerView(),
          binding: DatePickerBinding(),
        ),
        GetPage(
          name: _Paths.TIME_PICKER,
          page: () => const TimePickerView(),
          binding: TimePickerBinding(),
        ),
        GetPage(
          name: _Paths.DIALOG,
          page: () => const DialogView(),
          binding: DialogBinding(),
        ),
        GetPage(
          name: _Paths.DIVIDER,
          page: () => const DividerView(),
          binding: DividerBinding(),
        ),
        GetPage(
          name: _Paths.ICON_BUTTON,
          page: () => const IconButtonView(),
          binding: IconButtonBinding(),
        ),
        GetPage(
          name: _Paths.MATERIAL_BUTTON,
          page: () => const MaterialButtonView(),
          binding: MaterialButtonBinding(),
        ),
        GetPage(
          name: _Paths.LIS_TILE,
          page: () => const LisTileView(),
          binding: LisTileBinding(),
        ),
        GetPage(
          name: _Paths.TAB_BAR,
          page: () => const TabBarView(),
          binding: TabBarBinding(),
        ),
        GetPage(
          name: _Paths.TAB_BAR_VIEW,
          page: () => const TabBarViewView(),
          binding: TabBarViewBinding(),
        ),
        GetPage(
          name: _Paths.APP_BAR,
          page: () => const AppBarView(),
          binding: AppBarBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.BASIC_WIDGET,
      page: () => const BasicWidgetView(),
      binding: BasicWidgetBinding(),
      children: [
        GetPage(
          name: _Paths.TEXT,
          page: () => const TextView(),
          binding: TextBinding(),
        ),
        GetPage(
          name: _Paths.ICON,
          page: () => const IconView(),
          binding: IconBinding(),
        ),
        GetPage(
          name: _Paths.IMAGE,
          page: () => const ImageView(),
          binding: ImageBinding(),
        ),
        GetPage(
          name: _Paths.NETWORK_IMAGE,
          page: () => const NetworkImageView(),
          binding: NetworkImageBinding(),
        ),
        GetPage(
          name: _Paths.ASSET_IMAGE,
          page: () => const AssetImageView(),
          binding: AssetImageBinding(),
        ),
        GetPage(
          name: _Paths.CONTAINER,
          page: () => const ContainerView(),
          binding: ContainerBinding(),
        ),
        GetPage(
          name: _Paths.SIZE_BOX,
          page: () => const SizeBoxView(),
          binding: SizeBoxBinding(),
        ),
        GetPage(
          name: _Paths.PLACE_HOLDER,
          page: () => const PlaceHolderView(),
          binding: PlaceHolderBinding(),
        ),
        GetPage(
          name: _Paths.RICH_TEXT,
          page: () => const RichTextView(),
          binding: RichTextBinding(),
        ),
        GetPage(
          name: _Paths.SPACER,
          page: () => const SpacerView(),
          binding: SpacerBinding(),
        ),
        GetPage(
          name: _Paths.EXPANDED,
          page: () => const ExpandedView(),
          binding: ExpandedBinding(),
        ),
        GetPage(
          name: _Paths.FLEXIBLE,
          page: () => const FlexibleView(),
          binding: FlexibleBinding(),
        ),
        GetPage(
          name: _Paths.BUILDER,
          page: () => const BuilderView(),
          binding: BuilderBinding(),
        ),
        GetPage(
          name: _Paths.PROGRESS_INDICATOR,
          page: () => const ProgressIndicatorView(),
          binding: ProgressIndicatorBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LAYOUT_STRUCTURE,
      page: () => const LayoutStructureView(),
      binding: LayoutStructureBinding(),
      children: [
        GetPage(
          name: _Paths.COLUMN,
          page: () => const ColumnView(),
          binding: ColumnBinding(),
        ),
        GetPage(
          name: _Paths.ROW,
          page: () => const RowView(),
          binding: RowBinding(),
        ),
        GetPage(
          name: _Paths.STACK,
          page: () => const StackView(),
          binding: StackBinding(),
        ),
        GetPage(
          name: _Paths.ALIGN,
          page: () => const AlignView(),
          binding: AlignBinding(),
        ),
        GetPage(
          name: _Paths.CENTER,
          page: () => const CenterView(),
          binding: CenterBinding(),
        ),
        GetPage(
          name: _Paths.PADDING,
          page: () => const PaddingView(),
          binding: PaddingBinding(),
        ),
        GetPage(
          name: _Paths.SAFE_AREA,
          page: () => const SafeAreaView(),
          binding: SafeAreaBinding(),
        ),
        GetPage(
          name: _Paths.ASPECT_RATION,
          page: () => const AspectRationView(),
          binding: AspectRationBinding(),
        ),
        GetPage(
          name: _Paths.BASE_LINE,
          page: () => const BaseLineView(),
          binding: BaseLineBinding(),
        ),
        GetPage(
          name: _Paths.CONSTRAINED_BOX,
          page: () => const ConstrainedBoxView(),
          binding: ConstrainedBoxBinding(),
        ),
        GetPage(
          name: _Paths.FLEX,
          page: () => const FlexView(),
          binding: FlexBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.INPUT_FORMS,
      page: () => const InputFormsView(),
      binding: InputFormsBinding(),
      children: [
        GetPage(
          name: _Paths.TEXT_FIELD,
          page: () => const TextFieldView(),
          binding: TextFieldBinding(),
        ),
        GetPage(
          name: _Paths.TEXT_FORN_FIELD,
          page: () => const TextFornFieldView(),
          binding: TextFornFieldBinding(),
        ),
        GetPage(
          name: _Paths.CHECK_BOX,
          page: () => const CheckBoxView(),
          binding: CheckBoxBinding(),
        ),
        GetPage(
          name: _Paths.CHECKBOX_LIST_TILE,
          page: () => const CheckboxListTileView(),
          binding: CheckboxListTileBinding(),
        ),
        GetPage(
          name: _Paths.RADIO,
          page: () => const RadioView(),
          binding: RadioBinding(),
        ),
        GetPage(
          name: _Paths.RADIO_LIST_TILE,
          page: () => const RadioListTileView(),
          binding: RadioListTileBinding(),
        ),
        GetPage(
          name: _Paths.SWITCH,
          page: () => const SwitchView(),
          binding: SwitchBinding(),
        ),
        GetPage(
          name: _Paths.SWITCH_LIST_TILE,
          page: () => const SwitchListTileView(),
          binding: SwitchListTileBinding(),
        ),
        GetPage(
          name: _Paths.SLIDER,
          page: () => const SliderView(),
          binding: SliderBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SCROLLING_LIST,
      page: () => const ScrollingListView(),
      binding: ScrollingListBinding(),
      children: [
        GetPage(
          name: _Paths.LIST_VIEW,
          page: () => const ListViewView(),
          binding: ListViewBinding(),
        ),
        GetPage(
          name: _Paths.GRID_VIEW,
          page: () => const GridViewView(),
          binding: GridViewBinding(),
        ),
        GetPage(
          name: _Paths.SINGLE_CHILD_SCROLL_VIEW,
          page: () => const SingleChildScrollViewView(),
          binding: SingleChildScrollViewBinding(),
        ),
        GetPage(
          name: _Paths.SCROLLBAR,
          page: () => const ScrollbarView(),
          binding: ScrollbarBinding(),
        ),
        GetPage(
          name: _Paths.CUSTOM_SCROLL_VIEW,
          page: () => const CustomScrollViewView(),
          binding: CustomScrollViewBinding(),
        ),
        GetPage(
          name: _Paths.NESTED_SCROLL_VIEW,
          page: () => const NestedScrollViewView(),
          binding: NestedScrollViewBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.API_INTEGRATION,
      page: () => const ApiIntegrationView(),
      binding: ApiIntegrationBinding(),
    ),
    GetPage(
      name: _Paths.LOCAL_STORAGE,
      page: () => const LocalStorageView(),
      binding: LocalStorageBinding(),
    ),
    GetPage(
      name: _Paths.DEVICE_FEATURES,
      page: () => const DeviceFeaturesView(),
      binding: DeviceFeaturesBinding(),
    ),
    GetPage(
      name: _Paths.STUDY_CASE,
      page: () => const StudyCaseView(),
      binding: StudyCaseBinding(),
    ),
  ];
}
