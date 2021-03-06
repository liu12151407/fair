/*
 * Copyright (C) 2005-present, 58.com.  All rights reserved.
 * Use of this source code is governed by a BSD type license that can be
 * found in the LICENSE file.
 */

import 'package:flutter/cupertino.dart';

import 'utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
part "../part/c.part.dart";
// Value inspected from Xcode 11 & iOS 13.0 Simulator.
const BorderSide _kDefaultRoundedBorderSide = BorderSide(
  color: CupertinoDynamicColor.withBrightness(
    color: Color(0x33000000),
    darkColor: Color(0x33FFFFFF),
  ),
  style: BorderStyle.solid,
  width: 0.0,
);
const Border _kDefaultRoundedBorder = Border(
  top: _kDefaultRoundedBorderSide,
  bottom: _kDefaultRoundedBorderSide,
  left: _kDefaultRoundedBorderSide,
  right: _kDefaultRoundedBorderSide,
);

const BoxDecoration _kDefaultRoundedBorderDecoration = BoxDecoration(
  color: CupertinoDynamicColor.withBrightness(
    color: CupertinoColors.white,
    darkColor: CupertinoColors.black,
  ),
  border: _kDefaultRoundedBorder,
  borderRadius: BorderRadius.all(Radius.circular(5.0)),
);

const CupertinoDynamicColor _kThumbColor = CupertinoDynamicColor.withBrightness(
  color: Color(0xFFFFFFFF),
  darkColor: Color(0xFF636366),
);
const EdgeInsetsGeometry _kHorizontalItemPadding =
    EdgeInsets.symmetric(vertical: 2, horizontal: 3);
const double kMinInteractiveDimensionCupertino = 44.0;
const Color _kDefaultTabBarInactiveColor = CupertinoColors.inactiveGray;
const Color _kDefaultTabBarBorderColor = CupertinoDynamicColor.withBrightness(
  color: Color(0x4C000000),
  darkColor: Color(0x29000000),
);

const double _defaultRefreshTriggerPullDistance = 100.0;
const double _defaultRefreshIndicatorExtent = 60.0;
//var buildRefreshIndicator = CupertinoSliverRefreshControl.buildRefreshIndicator;
const double _kDefaultDiameterRatio = 1.07;
const double _kSqueeze = 1.45;
const double _kDefaultIndicatorRadius = 10.0;
const Color _kDefaultNavBarBorderColor = Color(0x4D000000);
const Border _kDefaultNavBarBorder = Border(
  bottom: BorderSide(
    color: _kDefaultNavBarBorderColor,
    width: 0.0, // One physical pixel.
    style: BorderStyle.solid,
  ),
);
const _defaultHeroTag = "";
var p = () => {
      'CupertinoActionSheet': (props) => CupertinoActionSheet(
            key: props['key'],
            title: props['title'],
            message: props['message'],
            actions: as<Widget>(props['actions']),
            messageScrollController: props['messageScrollController'],
            actionScrollController: props['actionScrollController'],
            cancelButton: props['cancelButton'],
          ),
      'CupertinoActionSheetAction': (props) => CupertinoActionSheetAction(
            key: props['key'],
            onPressed: props['onPressed'],
            isDefaultAction: props['isDefaultAction'] ?? false,
            isDestructiveAction: props['isDestructiveAction'] ?? false,
            child: props['child'],
          ),
      'CupertinoActivityIndicator': (props) => CupertinoActivityIndicator(
            key: props['key'],
            animating: props['animating'] ?? true,
            radius: props['radius']?.toDouble() ?? _kDefaultIndicatorRadius,
          ),
      'CupertinoAlertDialog': (props) => CupertinoAlertDialog(
            key: props['key'],
            title: props['title'],
            content: props['content'],
            actions: props['actions'] ?? const <Widget>[],
            scrollController: props['scrollController'],
            actionScrollController: props['actionScrollController'],
            insetAnimationDuration: props['insetAnimationDuration'] ??
                const Duration(milliseconds: 100),
            insetAnimationCurve:
                props['insetAnimationCurve'] ?? Curves.decelerate,
          ),
      'CupertinoDialogAction': (props) => CupertinoDialogAction(
            key: props['key'],
            onPressed: props['onPressed'],
            isDefaultAction: props['isDefaultAction'] ?? false,
            isDestructiveAction: props['isDestructiveAction'] ?? false,
            textStyle: props['textStyle'],
            child: props['child'],
          ),
      'CupertinoPopupSurface': (props) => CupertinoPopupSurface(
            key: props['key'],
            isSurfacePainted: props['isSurfacePainted'] ?? true,
            child: props['child'],
          ),
      'CupertinoApp': (props) => CupertinoApp(
            key: props['key'],
            navigatorKey: props['navigatorKey'],
            home: props['home'],
            theme: props['theme'],
            routes: props['routes'] ?? const <String, WidgetBuilder>{},
            initialRoute: props['initialRoute'],
            onGenerateRoute: props['onGenerateRoute'],
            onGenerateInitialRoutes: props['onGenerateInitialRoutes'],
            onUnknownRoute: props['onUnknownRoute'],
            navigatorObservers:
                props['navigatorObservers'] ?? const <NavigatorObserver>[],
            builder: props['builder'],
            title: props['title'] ?? '',
            onGenerateTitle: props['onGenerateTitle'],
            color: props['color'],
            locale: props['locale'],
            localizationsDelegates: props['localizationsDelegates'],
            localeListResolutionCallback: props['localeListResolutionCallback'],
            localeResolutionCallback: props['localeResolutionCallback'],
            supportedLocales:
                props['supportedLocales'] ?? const <Locale>[Locale('en', 'US')],
            showPerformanceOverlay: props['showPerformanceOverlay'] ?? false,
            checkerboardRasterCacheImages:
                props['checkerboardRasterCacheImages'] ?? false,
            checkerboardOffscreenLayers:
                props['checkerboardOffscreenLayers'] ?? false,
            showSemanticsDebugger: props['showSemanticsDebugger'] ?? false,
            debugShowCheckedModeBanner:
                props['debugShowCheckedModeBanner'] ?? true,
            shortcuts: props['shortcuts'],
            actions: props['actions'],
          ),
      'CupertinoButton': (props) => CupertinoButton(
            key: props['key'],
            child: props['child'],
            padding: props['padding'],
            color: props['color'],
            disabledColor:
                props['disabledColor'] ?? CupertinoColors.quaternarySystemFill,
            minSize: props['minSize']?.toDouble() ??
                kMinInteractiveDimensionCupertino,
            pressedOpacity: props['pressedOpacity']?.toDouble() ?? 0.4,
            borderRadius: props['borderRadius'] ??
                const BorderRadius.all(Radius.circular(8.0)),
            onPressed: props['onPressed'],
          ),
      'CupertinoButton.filled': (props) => CupertinoButton.filled(
            key: props['key'],
            child: props['child'],
            padding: props['padding'],
            disabledColor:
                props['disabledColor'] ?? CupertinoColors.quaternarySystemFill,
            minSize: props['minSize']?.toDouble() ??
                kMinInteractiveDimensionCupertino,
            pressedOpacity: props['pressedOpacity']?.toDouble() ?? 0.4,
            borderRadius: props['borderRadius'] ??
                const BorderRadius.all(Radius.circular(8.0)),
            onPressed: props['onPressed'],
          ),
      'CupertinoColors': {
        'activeBlue': CupertinoColors.activeBlue,
        'activeGreen': CupertinoColors.activeGreen,
        'activeOrange': CupertinoColors.activeOrange,
        'white': CupertinoColors.white,
        'black': CupertinoColors.black,
        'lightBackgroundGray': CupertinoColors.lightBackgroundGray,
        'extraLightBackgroundGray': CupertinoColors.extraLightBackgroundGray,
        'darkBackgroundGray': CupertinoColors.darkBackgroundGray,
        'inactiveGray': CupertinoColors.inactiveGray,
        'destructiveRed': CupertinoColors.destructiveRed,
        'systemBlue': CupertinoColors.systemBlue,
        'systemGreen': CupertinoColors.systemGreen,
        'systemIndigo': CupertinoColors.systemIndigo,
        'systemOrange': CupertinoColors.systemOrange,
        'systemPink': CupertinoColors.systemPink,
        'systemPurple': CupertinoColors.systemPurple,
        'systemRed': CupertinoColors.systemRed,
        'systemTeal': CupertinoColors.systemTeal,
        'systemYellow': CupertinoColors.systemYellow,
        'systemGrey': CupertinoColors.systemGrey,
        'systemGrey2': CupertinoColors.systemGrey2,
        'systemGrey3': CupertinoColors.systemGrey3,
        'systemGrey4': CupertinoColors.systemGrey4,
        'systemGrey5': CupertinoColors.systemGrey5,
        'systemGrey6': CupertinoColors.systemGrey6,
        'label': CupertinoColors.label,
        'secondaryLabel': CupertinoColors.secondaryLabel,
        'tertiaryLabel': CupertinoColors.tertiaryLabel,
        'quaternaryLabel': CupertinoColors.quaternaryLabel,
        'systemFill': CupertinoColors.systemFill,
        'secondarySystemFill': CupertinoColors.secondarySystemFill,
        'tertiarySystemFill': CupertinoColors.tertiarySystemFill,
        'quaternarySystemFill': CupertinoColors.quaternarySystemFill,
        'placeholderText': CupertinoColors.placeholderText,
        'systemBackground': CupertinoColors.systemBackground,
        'secondarySystemBackground': CupertinoColors.secondarySystemBackground,
        'tertiarySystemBackground': CupertinoColors.tertiarySystemBackground,
        'systemGroupedBackground': CupertinoColors.systemGroupedBackground,
        'secondarySystemGroupedBackground':
            CupertinoColors.secondarySystemGroupedBackground,
        'tertiarySystemGroupedBackground':
            CupertinoColors.tertiarySystemGroupedBackground,
        'separator': CupertinoColors.separator,
        'opaqueSeparator': CupertinoColors.opaqueSeparator,
        'link': CupertinoColors.link,
      },
      'CupertinoContextMenu': (props) => CupertinoContextMenu(
            key: props['key'],
            actions: as<Widget>(props['actions']),
            child: props['child'],
            previewBuilder: props['previewBuilder'],
          ),
      'CupertinoContextMenuAction': (props) => CupertinoContextMenuAction(
            key: props['key'],
            child: props['child'],
            isDefaultAction: props['isDefaultAction'] ?? false,
            isDestructiveAction: props['isDestructiveAction'] ?? false,
            onPressed: props['onPressed'],
            trailingIcon: props['trailingIcon'],
          ),
      'CupertinoDatePicker': (props) => CupertinoDatePicker(
            key: props['key'],
            mode: props['mode'] ?? CupertinoDatePickerMode.dateAndTime,
            onDateTimeChanged: props['onDateTimeChanged'],
            initialDateTime: props['initialDateTime'],
            minimumDate: props['minimumDate'],
            maximumDate: props['maximumDate'],
            minimumYear: props['minimumYear'] ?? 1,
            maximumYear: props['maximumYear'],
            minuteInterval: props['minuteInterval'] ?? 1,
            use24hFormat: props['use24hFormat'] ?? false,
            backgroundColor: props['backgroundColor'],
          ),
      'CupertinoDatePickerMode': {
        'values': CupertinoDatePickerMode.values,
        'time': CupertinoDatePickerMode.time,
        'date': CupertinoDatePickerMode.date,
        'dateAndTime': CupertinoDatePickerMode.dateAndTime,
      },
      'CupertinoTimerPicker': (props) => CupertinoTimerPicker(
            key: props['key'],
            mode: props['mode'] ?? CupertinoTimerPickerMode.hms,
            initialTimerDuration:
                props['initialTimerDuration'] ?? Duration.zero,
            minuteInterval: props['minuteInterval'] ?? 1,
            secondInterval: props['secondInterval'] ?? 1,
            alignment: props['alignment'] ?? Alignment.center,
            backgroundColor: props['backgroundColor'],
            onTimerDurationChanged: props['onTimerDurationChanged'],
          ),
      'CupertinoTimerPickerMode': {
        'values': CupertinoTimerPickerMode.values,
        'hm': CupertinoTimerPickerMode.hm,
        'ms': CupertinoTimerPickerMode.ms,
        'hms': CupertinoTimerPickerMode.hms,
      },
      'CupertinoFullscreenDialogTransition': (props) =>
          CupertinoFullscreenDialogTransition(
            key: props['key'],
            primaryRouteAnimation: props['primaryRouteAnimation'],
            secondaryRouteAnimation: props['secondaryRouteAnimation'],
            child: props['child'],
            linearTransition: props['linearTransition'],
          ),
      'CupertinoPageTransition': (props) => CupertinoPageTransition(
            key: props['key'],
            primaryRouteAnimation: props['primaryRouteAnimation'],
            secondaryRouteAnimation: props['secondaryRouteAnimation'],
            child: props['child'],
            linearTransition: props['linearTransition'],
          ),
      'CupertinoIcons': {
        'iconFont': CupertinoIcons.iconFont,
        'iconFontPackage': CupertinoIcons.iconFontPackage,
        'left_chevron': CupertinoIcons.left_chevron,
        'right_chevron': CupertinoIcons.right_chevron,
        'share': CupertinoIcons.share,
        'share_solid': CupertinoIcons.share_solid,
        'book': CupertinoIcons.book,
        'book_solid': CupertinoIcons.book_solid,
        'bookmark': CupertinoIcons.bookmark,
        'bookmark_solid': CupertinoIcons.bookmark_solid,
        'info': CupertinoIcons.info,
        'reply': CupertinoIcons.reply,
        'conversation_bubble': CupertinoIcons.conversation_bubble,
        'profile_circled': CupertinoIcons.profile_circled,
        'plus_circled': CupertinoIcons.plus_circled,
        'minus_circled': CupertinoIcons.minus_circled,
        'flag': CupertinoIcons.flag,
        'search': CupertinoIcons.search,
        'check_mark': CupertinoIcons.check_mark,
        'check_mark_circled': CupertinoIcons.check_mark_circled,
        'check_mark_circled_solid': CupertinoIcons.check_mark_circled_solid,
        'circle': CupertinoIcons.circle,
        'circle_filled': CupertinoIcons.circle_filled,
        'back': CupertinoIcons.back,
        'forward': CupertinoIcons.forward,
        'home': CupertinoIcons.home,
        'shopping_cart': CupertinoIcons.shopping_cart,
        'ellipsis': CupertinoIcons.ellipsis,
        'phone': CupertinoIcons.phone,
        'phone_solid': CupertinoIcons.phone_solid,
        'down_arrow': CupertinoIcons.down_arrow,
        'up_arrow': CupertinoIcons.up_arrow,
        'battery_charging': CupertinoIcons.battery_charging,
        'battery_empty': CupertinoIcons.battery_empty,
        'battery_full': CupertinoIcons.battery_full,
        'battery_75_percent': CupertinoIcons.battery_75_percent,
        'battery_25_percent': CupertinoIcons.battery_25_percent,
        'bluetooth': CupertinoIcons.bluetooth,
        'restart': CupertinoIcons.restart,
        'reply_all': CupertinoIcons.reply_all,
        'reply_thick_solid': CupertinoIcons.reply_thick_solid,
        'share_up': CupertinoIcons.share_up,
        'shuffle': CupertinoIcons.shuffle,
        'shuffle_medium': CupertinoIcons.shuffle_medium,
        'shuffle_thick': CupertinoIcons.shuffle_thick,
        'photo_camera': CupertinoIcons.photo_camera,
        'photo_camera_solid': CupertinoIcons.photo_camera_solid,
        'video_camera': CupertinoIcons.video_camera,
        'video_camera_solid': CupertinoIcons.video_camera_solid,
        'switch_camera': CupertinoIcons.switch_camera,
        'switch_camera_solid': CupertinoIcons.switch_camera_solid,
        'collections': CupertinoIcons.collections,
        'collections_solid': CupertinoIcons.collections_solid,
        'folder': CupertinoIcons.folder,
        'folder_solid': CupertinoIcons.folder_solid,
        'folder_open': CupertinoIcons.folder_open,
        'delete': CupertinoIcons.delete,
        'delete_solid': CupertinoIcons.delete_solid,
        'delete_simple': CupertinoIcons.delete_simple,
        'pen': CupertinoIcons.pen,
        'pencil': CupertinoIcons.pencil,
        'create': CupertinoIcons.create,
        'create_solid': CupertinoIcons.create_solid,
        'refresh': CupertinoIcons.refresh,
        'refresh_circled': CupertinoIcons.refresh_circled,
        'refresh_circled_solid': CupertinoIcons.refresh_circled_solid,
        'refresh_thin': CupertinoIcons.refresh_thin,
        'refresh_thick': CupertinoIcons.refresh_thick,
        'refresh_bold': CupertinoIcons.refresh_bold,
        'clear_thick': CupertinoIcons.clear_thick,
        'clear_thick_circled': CupertinoIcons.clear_thick_circled,
        'clear': CupertinoIcons.clear,
        'clear_circled': CupertinoIcons.clear_circled,
        'clear_circled_solid': CupertinoIcons.clear_circled_solid,
        'add': CupertinoIcons.add,
        'add_circled': CupertinoIcons.add_circled,
        'add_circled_solid': CupertinoIcons.add_circled_solid,
        'gear': CupertinoIcons.gear,
        'gear_solid': CupertinoIcons.gear_solid,
        'gear_big': CupertinoIcons.gear_big,
        'settings': CupertinoIcons.settings,
        'settings_solid': CupertinoIcons.settings_solid,
        'music_note': CupertinoIcons.music_note,
        'double_music_note': CupertinoIcons.double_music_note,
        'play_arrow': CupertinoIcons.play_arrow,
        'play_arrow_solid': CupertinoIcons.play_arrow_solid,
        'pause': CupertinoIcons.pause,
        'pause_solid': CupertinoIcons.pause_solid,
        'loop': CupertinoIcons.loop,
        'loop_thick': CupertinoIcons.loop_thick,
        'volume_down': CupertinoIcons.volume_down,
        'volume_mute': CupertinoIcons.volume_mute,
        'volume_off': CupertinoIcons.volume_off,
        'volume_up': CupertinoIcons.volume_up,
        'fullscreen': CupertinoIcons.fullscreen,
        'fullscreen_exit': CupertinoIcons.fullscreen_exit,
        'mic_off': CupertinoIcons.mic_off,
        'mic': CupertinoIcons.mic,
        'mic_solid': CupertinoIcons.mic_solid,
        'clock': CupertinoIcons.clock,
        'clock_solid': CupertinoIcons.clock_solid,
        'time': CupertinoIcons.time,
        'time_solid': CupertinoIcons.time_solid,
        'padlock': CupertinoIcons.padlock,
        'padlock_solid': CupertinoIcons.padlock_solid,
        'eye': CupertinoIcons.eye,
        'eye_solid': CupertinoIcons.eye_solid,
        'person': CupertinoIcons.person,
        'person_solid': CupertinoIcons.person_solid,
        'person_add': CupertinoIcons.person_add,
        'person_add_solid': CupertinoIcons.person_add_solid,
        'group': CupertinoIcons.group,
        'group_solid': CupertinoIcons.group_solid,
        'mail': CupertinoIcons.mail,
        'mail_solid': CupertinoIcons.mail_solid,
        'location': CupertinoIcons.location,
        'location_solid': CupertinoIcons.location_solid,
        'tag': CupertinoIcons.tag,
        'tag_solid': CupertinoIcons.tag_solid,
        'tags': CupertinoIcons.tags,
        'tags_solid': CupertinoIcons.tags_solid,
        'bus': CupertinoIcons.bus,
        'car': CupertinoIcons.car,
        'car_detailed': CupertinoIcons.car_detailed,
        'train_style_one': CupertinoIcons.train_style_one,
        'train_style_two': CupertinoIcons.train_style_two,
        'paw': CupertinoIcons.paw,
        'paw_solid': CupertinoIcons.paw_solid,
        'game_controller': CupertinoIcons.game_controller,
        'game_controller_solid': CupertinoIcons.game_controller_solid,
        'lab_flask': CupertinoIcons.lab_flask,
        'lab_flask_solid': CupertinoIcons.lab_flask_solid,
        'heart': CupertinoIcons.heart,
        'heart_solid': CupertinoIcons.heart_solid,
        'bell': CupertinoIcons.bell,
        'bell_solid': CupertinoIcons.bell_solid,
        'news': CupertinoIcons.news,
        'news_solid': CupertinoIcons.news_solid,
        'brightness': CupertinoIcons.brightness,
        'brightness_solid': CupertinoIcons.brightness_solid,
      },
      'CupertinoNavigationBar': (props) => CupertinoNavigationBar(
            key: props['key'],
            leading: props['leading'],
            automaticallyImplyLeading:
                props['automaticallyImplyLeading'] ?? true,
            automaticallyImplyMiddle: props['automaticallyImplyMiddle'] ?? true,
            previousPageTitle: props['previousPageTitle'],
            middle: props['middle'],
            trailing: props['trailing'],
            border: props['border'] ?? _kDefaultNavBarBorder,
            backgroundColor: props['backgroundColor'],
            brightness: props['brightness'],
            padding: props['padding'],
            actionsForegroundColor: props['actionsForegroundColor'],
            transitionBetweenRoutes: props['transitionBetweenRoutes'] ?? true,
            heroTag: props['heroTag'] ?? _defaultHeroTag,
          ),
      'CupertinoNavigationBarBackButton': (props) =>
          CupertinoNavigationBarBackButton(
            key: props['key'],
            color: props['color'],
            previousPageTitle: props['previousPageTitle'],
            onPressed: props['onPressed'],
          ),
      'CupertinoSliverNavigationBar': (props) => CupertinoSliverNavigationBar(
            key: props['key'],
            largeTitle: props['largeTitle'],
            leading: props['leading'],
            automaticallyImplyLeading:
                props['automaticallyImplyLeading'] ?? true,
            automaticallyImplyTitle: props['automaticallyImplyTitle'] ?? true,
            previousPageTitle: props['previousPageTitle'],
            middle: props['middle'],
            trailing: props['trailing'],
            border: props['border'] ?? _kDefaultNavBarBorder,
            backgroundColor: props['backgroundColor'],
            brightness: props['brightness'],
            padding: props['padding'],
            actionsForegroundColor: props['actionsForegroundColor'],
            transitionBetweenRoutes: props['transitionBetweenRoutes'] ?? true,
            heroTag: props['heroTag'] ?? _defaultHeroTag,
          ),
      'CupertinoPageScaffold': (props) => CupertinoPageScaffold(
            key: props['key'],
            navigationBar: props['navigationBar'],
            backgroundColor: props['backgroundColor'],
            resizeToAvoidBottomInset: props['resizeToAvoidBottomInset'] ?? true,
            child: props['child'],
          ),
      'CupertinoPicker': (props) => CupertinoPicker(
            key: props['key'],
            diameterRatio:
                props['diameterRatio']?.toDouble() ?? _kDefaultDiameterRatio,
            backgroundColor: props['backgroundColor'],
            offAxisFraction: props['offAxisFraction']?.toDouble() ?? 0.0,
            useMagnifier: props['useMagnifier'] ?? false,
            magnification: props['magnification']?.toDouble() ?? 1.0,
            scrollController: props['scrollController'],
            squeeze: props['squeeze']?.toDouble() ?? _kSqueeze,
            itemExtent: props['itemExtent']?.toDouble(),
            onSelectedItemChanged: props['onSelectedItemChanged'],
            children: as<Widget>(props['children']),
            looping: props['looping'] ?? false,
          ),
      'CupertinoPicker.builder': (props) => CupertinoPicker.builder(
            key: props['key'],
            diameterRatio:
                props['diameterRatio']?.toDouble() ?? _kDefaultDiameterRatio,
            backgroundColor: props['backgroundColor'],
            offAxisFraction: props['offAxisFraction']?.toDouble() ?? 0.0,
            useMagnifier: props['useMagnifier'] ?? false,
            magnification: props['magnification']?.toDouble() ?? 1.0,
            scrollController: props['scrollController'],
            squeeze: props['squeeze']?.toDouble() ?? _kSqueeze,
            itemExtent: props['itemExtent']?.toDouble(),
            onSelectedItemChanged: props['onSelectedItemChanged'],
            itemBuilder: props['itemBuilder'],
            childCount: props['childCount'],
          ),
      'CupertinoScrollbar': (props) => CupertinoScrollbar(
            key: props['key'],
            controller: props['controller'],
            isAlwaysShown: props['isAlwaysShown'] ?? false,
            child: props['child'],
          ),
      'CupertinoSegmentedControl': (props) => CupertinoSegmentedControl(
            key: props['key'],
            children: props['children'],
            onValueChanged: props['onValueChanged'],
            groupValue: props['groupValue'],
            unselectedColor: props['unselectedColor'],
            selectedColor: props['selectedColor'],
            borderColor: props['borderColor'],
            pressedColor: props['pressedColor'],
            padding: props['padding'],
          ),
      'CupertinoSlider': (props) => CupertinoSlider(
            key: props['key'],
            value: props['value']?.toDouble(),
            onChanged: props['onChanged'],
            onChangeStart: props['onChangeStart'],
            onChangeEnd: props['onChangeEnd'],
            min: props['min']?.toDouble() ?? 0.0,
            max: props['max']?.toDouble() ?? 1.0,
            divisions: props['divisions'],
            activeColor: props['activeColor'],
            thumbColor: props['thumbColor'] ?? CupertinoColors.white,
          ),
      'CupertinoSlidingSegmentedControl': (props) =>
          CupertinoSlidingSegmentedControl(
            key: props['key'],
            children: props['children'],
            onValueChanged: props['onValueChanged'],
            groupValue: props['groupValue'],
            thumbColor: props['thumbColor'] ?? _kThumbColor,
            padding: props['padding'] ?? _kHorizontalItemPadding,
            backgroundColor:
                props['backgroundColor'] ?? CupertinoColors.tertiarySystemFill,
          ),
      'CupertinoSliverRefreshControl': (props) => CupertinoSliverRefreshControl(
            key: props['key'],
            refreshTriggerPullDistance:
                props['refreshTriggerPullDistance']?.toDouble() ??
                    _defaultRefreshTriggerPullDistance,
            refreshIndicatorExtent:
                props['refreshIndicatorExtent']?.toDouble() ??
                    _defaultRefreshIndicatorExtent,
            builder: props['builder'] ?? buildSimpleRefreshIndicator,
            onRefresh: props['onRefresh'],
          ),
      'RefreshIndicatorMode': {
        'values': RefreshIndicatorMode.values,
        'inactive': RefreshIndicatorMode.inactive,
        'drag': RefreshIndicatorMode.drag,
        'armed': RefreshIndicatorMode.armed,
        'refresh': RefreshIndicatorMode.refresh,
        'done': RefreshIndicatorMode.done,
      },
      'CupertinoSwitch': (props) => CupertinoSwitch(
            key: props['key'],
            value: props['value'],
            onChanged: props['onChanged'],
            activeColor: props['activeColor'],
            trackColor: props['trackColor'],
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
          ),
      'CupertinoTabBar': (props) => CupertinoTabBar(
            key: props['key'],
            items: as<BottomNavigationBarItem>(props['items']),
            onTap: props['onTap'],
            currentIndex: props['currentIndex'] ?? 0,
            backgroundColor: props['backgroundColor'],
            activeColor: props['activeColor'],
            inactiveColor:
                props['inactiveColor'] ?? _kDefaultTabBarInactiveColor,
            iconSize: props['iconSize']?.toDouble() ?? 30.0,
            border: props['border'] ??
                const Border(
                    top: BorderSide(
                        color: _kDefaultTabBarBorderColor,
                        width: 0.0,
                        style: BorderStyle.solid)),
          ),
      'CupertinoTabScaffold': (props) => CupertinoTabScaffold(
            key: props['key'],
            tabBar: props['tabBar'],
            tabBuilder: props['tabBuilder'],
            controller: props['controller'],
            backgroundColor: props['backgroundColor'],
            resizeToAvoidBottomInset: props['resizeToAvoidBottomInset'] ?? true,
          ),
      'CupertinoTabView': (props) => CupertinoTabView(
            key: props['key'],
            builder: props['builder'],
            navigatorKey: props['navigatorKey'],
            defaultTitle: props['defaultTitle'],
            routes: props['routes'],
            onGenerateRoute: props['onGenerateRoute'],
            onUnknownRoute: props['onUnknownRoute'],
            navigatorObservers:
                props['navigatorObservers'] ?? const <NavigatorObserver>[],
          ),
      'CupertinoTextField': (props) => CupertinoTextField(
            key: props['key'],
            controller: props['controller'],
            focusNode: props['focusNode'],
            decoration: props['decoration'] ?? _kDefaultRoundedBorderDecoration,
            padding: props['padding'] ?? const EdgeInsets.all(6.0),
            placeholder: props['placeholder'],
            placeholderStyle: props['placeholderStyle'] ??
                const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: CupertinoColors.placeholderText),
            prefix: props['prefix'],
            prefixMode: props['prefixMode'] ?? OverlayVisibilityMode.always,
            suffix: props['suffix'],
            suffixMode: props['suffixMode'] ?? OverlayVisibilityMode.always,
            clearButtonMode:
                props['clearButtonMode'] ?? OverlayVisibilityMode.never,
            keyboardType: props['keyboardType'],
            textInputAction: props['textInputAction'],
            textCapitalization:
                props['textCapitalization'] ?? TextCapitalization.none,
            style: props['style'],
            strutStyle: props['strutStyle'],
            textAlign: props['textAlign'] ?? TextAlign.start,
            textAlignVertical: props['textAlignVertical'],
            readOnly: props['readOnly'] ?? false,
            toolbarOptions: props['toolbarOptions'],
            showCursor: props['showCursor'],
            autofocus: props['autofocus'] ?? false,
            obscureText: props['obscureText'] ?? false,
            autocorrect: props['autocorrect'] ?? true,
            smartDashesType: props['smartDashesType'],
            smartQuotesType: props['smartQuotesType'],
            enableSuggestions: props['enableSuggestions'] ?? true,
            maxLines: props['maxLines'] ?? 1,
            minLines: props['minLines'],
            expands: props['expands'] ?? false,
            maxLength: props['maxLength'],
            maxLengthEnforced: props['maxLengthEnforced'] ?? true,
            onChanged: props['onChanged'],
            onEditingComplete: props['onEditingComplete'],
            onSubmitted: props['onSubmitted'],
            inputFormatters: as<TextInputFormatter>(props['inputFormatters']),
            enabled: props['enabled'],
            cursorWidth: props['cursorWidth']?.toDouble() ?? 2.0,
            cursorRadius: props['cursorRadius'] ?? const Radius.circular(2.0),
            cursorColor: props['cursorColor'],
            selectionHeightStyle:
                props['selectionHeightStyle'] ?? ui.BoxHeightStyle.tight,
            selectionWidthStyle:
                props['selectionWidthStyle'] ?? ui.BoxWidthStyle.tight,
            keyboardAppearance: props['keyboardAppearance'],
            scrollPadding: props['scrollPadding'] ?? const EdgeInsets.all(20.0),
            dragStartBehavior:
                props['dragStartBehavior'] ?? DragStartBehavior.start,
            enableInteractiveSelection:
                props['enableInteractiveSelection'] ?? true,
            onTap: props['onTap'],
            scrollController: props['scrollController'],
            scrollPhysics: props['scrollPhysics'],
          ),
      'OverlayVisibilityMode': {
        'values': OverlayVisibilityMode.values,
        'never': OverlayVisibilityMode.never,
        'editing': OverlayVisibilityMode.editing,
        'notEditing': OverlayVisibilityMode.notEditing,
        'always': OverlayVisibilityMode.always,
      },
      'CupertinoTheme': (props) => CupertinoTheme(
            key: props['key'],
            data: props['data'],
            child: props['child'],
          ),
      'CupertinoThumbPainter': {
        'radius': CupertinoThumbPainter.radius,
        'extension': CupertinoThumbPainter.extension,
      },
      'CupertinoUserInterfaceLevel': (props) => CupertinoUserInterfaceLevel(
            key: props['key'],
            data: props['data'],
            child: props['child'],
          ),
      'CupertinoUserInterfaceLevelData': {
        'values': CupertinoUserInterfaceLevelData.values,
        'base': CupertinoUserInterfaceLevelData.base,
        'elevated': CupertinoUserInterfaceLevelData.elevated,
      },
      'DatePickerDateOrder': {
        'values': DatePickerDateOrder.values,
        'dmy': DatePickerDateOrder.dmy,
        'mdy': DatePickerDateOrder.mdy,
        'ymd': DatePickerDateOrder.ymd,
        'ydm': DatePickerDateOrder.ydm,
      },
      'DatePickerDateTimeOrder': {
        'values': DatePickerDateTimeOrder.values,
        'date_time_dayPeriod': DatePickerDateTimeOrder.date_time_dayPeriod,
        'date_dayPeriod_time': DatePickerDateTimeOrder.date_dayPeriod_time,
        'time_dayPeriod_date': DatePickerDateTimeOrder.time_dayPeriod_date,
        'dayPeriod_time_date': DatePickerDateTimeOrder.dayPeriod_time_date,
      },
      'DefaultCupertinoLocalizations': {
        'delegate': DefaultCupertinoLocalizations.delegate,
      },
    };
