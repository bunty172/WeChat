import 'dart:io';
import 'package:chat_room/screens/music.dart';
import 'package:chat_room/screens/chat_list.dart';
import 'package:chat_room/screens/create_new_channel_or_join_channel.dart';
import 'package:chat_room/screens/profile.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:get/get.dart';
import '../screens/chat_bot.dart';
import '../screens/news.dart';

class Controller extends GetxController {
  var _index = 0;
  var isEmojiVisible = false;

  var _isLoading = false;

  get isLoading {
    return _isLoading;
  }

  setIsLoading(val) {
    _isLoading = val;
  }

  var _value = 0;

  get value {
    return _value;
  }

  setValue(val) {
    _value = val;
    update();
  }

  final _screens = [
    // ChatList(),
    Music(),
    News(),
    Profile(),
  ];

  get body {
    return _screens[_index];
  }

  get index {
    return _index;
  }

  setScreen(index) {
    switch (index) {
      case 0:
        _index = index;
        break;
      case 1:
        _index = index;
        break;
      case 2:
        _index = index;
        break;
      case 3:
        _index = index;
        break;
    }
    update();
  }

  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('91');

  get selectedDialogCountry {
    return _selectedDialogCountry;
  }

  setCountry(country) {
    _selectedDialogCountry = country;
    update();
  }

  File? _storedImage;
  File? _storedChannelImage;

  get userProfileImage {
    return _storedImage;
  }

  get channelProfileImage {
    return _storedChannelImage;
  }

  setUserProfileImage(image) {
    _storedImage = image;
    update();
  }

  setChannelProfileImage(image) {
    _storedChannelImage = image;
    update();
  }
}
