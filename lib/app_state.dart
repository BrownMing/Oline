import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _olinePersonaUniverseLoginToken =
          prefs.getInt('ff_olinePersonaUniverseLoginToken') ??
              _olinePersonaUniverseLoginToken;
    });
    _safeInit(() {
      _olineImmersiveVoiceUsers = prefs
              .getStringList('ff_olineImmersiveVoiceUsers')
              ?.map((x) {
                try {
                  return OlineRoleplayLoungeUserStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _olineImmersiveVoiceUsers;
    });
    _safeInit(() {
      _olinePersonaChannelPosts = prefs
              .getStringList('ff_olinePersonaChannelPosts')
              ?.map((x) {
                try {
                  return OlineFictionVoiceHallPostStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _olinePersonaChannelPosts;
    });
    _safeInit(() {
      _olineVoiceRoleFieldChatRooms = prefs
              .getStringList('ff_olineVoiceRoleFieldChatRooms')
              ?.map((x) {
                try {
                  return OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _olineVoiceRoleFieldChatRooms;
    });
    _safeInit(() {
      _olineCosplayAudioChats = prefs
              .getStringList('ff_olineCosplayAudioChats')
              ?.map((x) {
                try {
                  return OlineVoicePersonaRoleplayChatStruct
                      .fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _olineCosplayAudioChats;
    });
    _safeInit(() {
      _olineCharacterWaveGifts = prefs
              .getStringList('ff_olineCharacterWaveGifts')
              ?.map((x) {
                try {
                  return OlineCharacterLinkGiftStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _olineCharacterWaveGifts;
    });
    _safeInit(() {
      _olineRoleplayStreamMessages = prefs
              .getStringList('ff_olineRoleplayStreamMessages')
              ?.map((x) {
                try {
                  return OlinePersonaStageMessageStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _olineRoleplayStreamMessages;
    });
    _safeInit(() {
      _olineCharacterLoreSphereSystemMsg =
          prefs.getStringList('ff_olineCharacterLoreSphereSystemMsg') ??
              _olineCharacterLoreSphereSystemMsg;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _olinePersonaUniverseLoginToken = 0;
  int get olinePersonaUniverseLoginToken => _olinePersonaUniverseLoginToken;
  set olinePersonaUniverseLoginToken(int value) {
    _olinePersonaUniverseLoginToken = value;
    prefs.setInt('ff_olinePersonaUniverseLoginToken', value);
  }

  List<OlineRoleplayLoungeUserStruct> _olineImmersiveVoiceUsers = [
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"0\",\"OlineRoleplayLoungeUser_email\":\"Hello World\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Stacy\",\"OlineRoleplayLoungeUser_avator\":\"https://picsum.photos/seed/862/600\",\"OlineRoleplayLoungeUser_describe\":\"Hello World\",\"OlineRoleplayLoungeUser_balance\":\"0\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"0\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684149919\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"1\",\"OlineRoleplayLoungeUser_email\":\"Hello World\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Ettixy\",\"OlineRoleplayLoungeUser_avator\":\"https://picsum.photos/seed/415/600\",\"OlineRoleplayLoungeUser_describe\":\"Hello World\",\"OlineRoleplayLoungeUser_balance\":\"0\",\"OlineRoleplayLoungeUser_followings\":\"[]\",\"OlineRoleplayLoungeUser_fans\":\"[]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684766664\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"2\",\"OlineRoleplayLoungeUser_email\":\"Hello World\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Tooti\",\"OlineRoleplayLoungeUser_avator\":\"https://picsum.photos/seed/941/600\",\"OlineRoleplayLoungeUser_describe\":\"Hello World\",\"OlineRoleplayLoungeUser_balance\":\"0\",\"OlineRoleplayLoungeUser_followings\":\"[]\",\"OlineRoleplayLoungeUser_fans\":\"[]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684767529\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"3\",\"OlineRoleplayLoungeUser_email\":\"Hello World\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Kyrie\",\"OlineRoleplayLoungeUser_avator\":\"https://picsum.photos/seed/462/600\",\"OlineRoleplayLoungeUser_describe\":\"Hello World\",\"OlineRoleplayLoungeUser_balance\":\"0\",\"OlineRoleplayLoungeUser_followings\":\"[]\",\"OlineRoleplayLoungeUser_fans\":\"[]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684768262\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"4\",\"OlineRoleplayLoungeUser_email\":\"Hello World\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Marumaru\",\"OlineRoleplayLoungeUser_avator\":\"https://picsum.photos/seed/436/600\",\"OlineRoleplayLoungeUser_describe\":\"Hello World\",\"OlineRoleplayLoungeUser_balance\":\"0\",\"OlineRoleplayLoungeUser_followings\":\"[]\",\"OlineRoleplayLoungeUser_fans\":\"[]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684769350\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"5\",\"OlineRoleplayLoungeUser_email\":\"Hello World\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"M1ntyzZ\",\"OlineRoleplayLoungeUser_avator\":\"https://picsum.photos/seed/560/600\",\"OlineRoleplayLoungeUser_describe\":\"Hello World\",\"OlineRoleplayLoungeUser_balance\":\"0\",\"OlineRoleplayLoungeUser_followings\":\"[]\",\"OlineRoleplayLoungeUser_fans\":\"[]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684770149\"}'))
  ];
  List<OlineRoleplayLoungeUserStruct> get olineImmersiveVoiceUsers =>
      _olineImmersiveVoiceUsers;
  set olineImmersiveVoiceUsers(List<OlineRoleplayLoungeUserStruct> value) {
    _olineImmersiveVoiceUsers = value;
    prefs.setStringList('ff_olineImmersiveVoiceUsers',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineImmersiveVoiceUsers(OlineRoleplayLoungeUserStruct value) {
    olineImmersiveVoiceUsers.add(value);
    prefs.setStringList('ff_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void removeFromOlineImmersiveVoiceUsers(OlineRoleplayLoungeUserStruct value) {
    olineImmersiveVoiceUsers.remove(value);
    prefs.setStringList('ff_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineImmersiveVoiceUsers(int index) {
    olineImmersiveVoiceUsers.removeAt(index);
    prefs.setStringList('ff_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void updateOlineImmersiveVoiceUsersAtIndex(
    int index,
    OlineRoleplayLoungeUserStruct Function(OlineRoleplayLoungeUserStruct)
        updateFn,
  ) {
    olineImmersiveVoiceUsers[index] =
        updateFn(_olineImmersiveVoiceUsers[index]);
    prefs.setStringList('ff_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineImmersiveVoiceUsers(
      int index, OlineRoleplayLoungeUserStruct value) {
    olineImmersiveVoiceUsers.insert(index, value);
    prefs.setStringList('ff_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  List<OlineFictionVoiceHallPostStruct> _olinePersonaChannelPosts = [
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"https://picsum.photos/seed/293/600\\\",\\\"https://picsum.photos/seed/799/600\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"I dare to imitate Wonder Woman\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685423924\",\"OlineFictionVoiceHallPost_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685423925\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"https://picsum.photos/seed/779/600\\\",\\\"https://picsum.photos/seed/899/600\\\",\\\"https://picsum.photos/seed/520/600\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"Tried to be a Maid in London MaidCafe💗\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685424997\",\"OlineFictionVoiceHallPost_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685424997\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"https://picsum.photos/seed/62/600\\\",\\\"https://picsum.photos/seed/186/600\\\",\\\"https://picsum.photos/seed/697/600\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"Hahaha, imitate that kind of sassy feeling\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685426108\",\"OlineFictionVoiceHallPost_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685426108\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"https://picsum.photos/seed/778/600\\\",\\\"https://picsum.photos/seed/809/600\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"My favorite anime character in the past was Ichigo Kurosaki\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685427171\",\"OlineFictionVoiceHallPost_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685427171\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"https://picsum.photos/seed/403/600\\\",\\\"https://picsum.photos/seed/142/600\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"How about it, should we restore it\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685428396\",\"OlineFictionVoiceHallPost_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685428396\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"https://picsum.photos/seed/489/600\\\",\\\"https://picsum.photos/seed/965/600\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"2025 Cos Annual Summary🤍\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685429614\",\"OlineFictionVoiceHallPost_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685429614\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}'))
  ];
  List<OlineFictionVoiceHallPostStruct> get olinePersonaChannelPosts =>
      _olinePersonaChannelPosts;
  set olinePersonaChannelPosts(List<OlineFictionVoiceHallPostStruct> value) {
    _olinePersonaChannelPosts = value;
    prefs.setStringList('ff_olinePersonaChannelPosts',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlinePersonaChannelPosts(OlineFictionVoiceHallPostStruct value) {
    olinePersonaChannelPosts.add(value);
    prefs.setStringList('ff_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  void removeFromOlinePersonaChannelPosts(
      OlineFictionVoiceHallPostStruct value) {
    olinePersonaChannelPosts.remove(value);
    prefs.setStringList('ff_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlinePersonaChannelPosts(int index) {
    olinePersonaChannelPosts.removeAt(index);
    prefs.setStringList('ff_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  void updateOlinePersonaChannelPostsAtIndex(
    int index,
    OlineFictionVoiceHallPostStruct Function(OlineFictionVoiceHallPostStruct)
        updateFn,
  ) {
    olinePersonaChannelPosts[index] =
        updateFn(_olinePersonaChannelPosts[index]);
    prefs.setStringList('ff_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlinePersonaChannelPosts(
      int index, OlineFictionVoiceHallPostStruct value) {
    olinePersonaChannelPosts.insert(index, value);
    prefs.setStringList('ff_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  List<OlineVoiceMaskRealmChatRoomStruct> _olineVoiceRoleFieldChatRooms = [
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_name\":\"Cosplay Dimension Voice Room\",\"OlineVoiceMaskRealmChatRoom_show\":\"https://picsum.photos/seed/288/600\",\"OlineVoiceMaskRealmChatRoom_number\":\"0\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685435129\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Hello World\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685435129\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_name\":\"Hello World\",\"OlineVoiceMaskRealmChatRoom_show\":\"https://picsum.photos/seed/445/600\",\"OlineVoiceMaskRealmChatRoom_number\":\"0\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685435907\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Hello World\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685435907\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_name\":\"Hello World\",\"OlineVoiceMaskRealmChatRoom_show\":\"https://picsum.photos/seed/544/600\",\"OlineVoiceMaskRealmChatRoom_number\":\"0\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685437071\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Hello World\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[\\\"{\\\\\\\"OlineRoleplayNexusComment_content\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_create_id\\\\\\\":\\\\\\\"0\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_date\\\\\\\":\\\\\\\"1767685437071\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio\\\\\\\":\\\\\\\"https://filesamples.com/samples/audio/mp3/sample3.mp3\\\\\\\",\\\\\\\"OlineRoleplayNexusComment_audio_time\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}'))
  ];
  List<OlineVoiceMaskRealmChatRoomStruct> get olineVoiceRoleFieldChatRooms =>
      _olineVoiceRoleFieldChatRooms;
  set olineVoiceRoleFieldChatRooms(
      List<OlineVoiceMaskRealmChatRoomStruct> value) {
    _olineVoiceRoleFieldChatRooms = value;
    prefs.setStringList('ff_olineVoiceRoleFieldChatRooms',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineVoiceRoleFieldChatRooms(
      OlineVoiceMaskRealmChatRoomStruct value) {
    olineVoiceRoleFieldChatRooms.add(value);
    prefs.setStringList('ff_olineVoiceRoleFieldChatRooms',
        _olineVoiceRoleFieldChatRooms.map((x) => x.serialize()).toList());
  }

  void removeFromOlineVoiceRoleFieldChatRooms(
      OlineVoiceMaskRealmChatRoomStruct value) {
    olineVoiceRoleFieldChatRooms.remove(value);
    prefs.setStringList('ff_olineVoiceRoleFieldChatRooms',
        _olineVoiceRoleFieldChatRooms.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineVoiceRoleFieldChatRooms(int index) {
    olineVoiceRoleFieldChatRooms.removeAt(index);
    prefs.setStringList('ff_olineVoiceRoleFieldChatRooms',
        _olineVoiceRoleFieldChatRooms.map((x) => x.serialize()).toList());
  }

  void updateOlineVoiceRoleFieldChatRoomsAtIndex(
    int index,
    OlineVoiceMaskRealmChatRoomStruct Function(
            OlineVoiceMaskRealmChatRoomStruct)
        updateFn,
  ) {
    olineVoiceRoleFieldChatRooms[index] =
        updateFn(_olineVoiceRoleFieldChatRooms[index]);
    prefs.setStringList('ff_olineVoiceRoleFieldChatRooms',
        _olineVoiceRoleFieldChatRooms.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineVoiceRoleFieldChatRooms(
      int index, OlineVoiceMaskRealmChatRoomStruct value) {
    olineVoiceRoleFieldChatRooms.insert(index, value);
    prefs.setStringList('ff_olineVoiceRoleFieldChatRooms',
        _olineVoiceRoleFieldChatRooms.map((x) => x.serialize()).toList());
  }

  List<OlineVoicePersonaRoleplayChatStruct> _olineCosplayAudioChats = [];
  List<OlineVoicePersonaRoleplayChatStruct> get olineCosplayAudioChats =>
      _olineCosplayAudioChats;
  set olineCosplayAudioChats(List<OlineVoicePersonaRoleplayChatStruct> value) {
    _olineCosplayAudioChats = value;
    prefs.setStringList(
        'ff_olineCosplayAudioChats', value.map((x) => x.serialize()).toList());
  }

  void addToOlineCosplayAudioChats(OlineVoicePersonaRoleplayChatStruct value) {
    olineCosplayAudioChats.add(value);
    prefs.setStringList('ff_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  void removeFromOlineCosplayAudioChats(
      OlineVoicePersonaRoleplayChatStruct value) {
    olineCosplayAudioChats.remove(value);
    prefs.setStringList('ff_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineCosplayAudioChats(int index) {
    olineCosplayAudioChats.removeAt(index);
    prefs.setStringList('ff_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  void updateOlineCosplayAudioChatsAtIndex(
    int index,
    OlineVoicePersonaRoleplayChatStruct Function(
            OlineVoicePersonaRoleplayChatStruct)
        updateFn,
  ) {
    olineCosplayAudioChats[index] = updateFn(_olineCosplayAudioChats[index]);
    prefs.setStringList('ff_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineCosplayAudioChats(
      int index, OlineVoicePersonaRoleplayChatStruct value) {
    olineCosplayAudioChats.insert(index, value);
    prefs.setStringList('ff_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  List<OlineCharacterLinkGiftStruct> _olineCharacterWaveGifts = [
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"0\",\"OlineCharacterLinkGift_show\":\"https://picsum.photos/seed/646/600\",\"OlineCharacterLinkGift_balance\":\"199\"}')),
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"1\",\"OlineCharacterLinkGift_show\":\"https://picsum.photos/seed/111/600\",\"OlineCharacterLinkGift_balance\":\"299\"}')),
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"2\",\"OlineCharacterLinkGift_show\":\"https://picsum.photos/seed/215/600\",\"OlineCharacterLinkGift_balance\":\"399\"}')),
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"3\",\"OlineCharacterLinkGift_show\":\"https://picsum.photos/seed/206/600\",\"OlineCharacterLinkGift_balance\":\"499\"}'))
  ];
  List<OlineCharacterLinkGiftStruct> get olineCharacterWaveGifts =>
      _olineCharacterWaveGifts;
  set olineCharacterWaveGifts(List<OlineCharacterLinkGiftStruct> value) {
    _olineCharacterWaveGifts = value;
    prefs.setStringList(
        'ff_olineCharacterWaveGifts', value.map((x) => x.serialize()).toList());
  }

  void addToOlineCharacterWaveGifts(OlineCharacterLinkGiftStruct value) {
    olineCharacterWaveGifts.add(value);
    prefs.setStringList('ff_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  void removeFromOlineCharacterWaveGifts(OlineCharacterLinkGiftStruct value) {
    olineCharacterWaveGifts.remove(value);
    prefs.setStringList('ff_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineCharacterWaveGifts(int index) {
    olineCharacterWaveGifts.removeAt(index);
    prefs.setStringList('ff_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  void updateOlineCharacterWaveGiftsAtIndex(
    int index,
    OlineCharacterLinkGiftStruct Function(OlineCharacterLinkGiftStruct)
        updateFn,
  ) {
    olineCharacterWaveGifts[index] = updateFn(_olineCharacterWaveGifts[index]);
    prefs.setStringList('ff_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineCharacterWaveGifts(
      int index, OlineCharacterLinkGiftStruct value) {
    olineCharacterWaveGifts.insert(index, value);
    prefs.setStringList('ff_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  List<OlinePersonaStageMessageStruct> _olineRoleplayStreamMessages = [];
  List<OlinePersonaStageMessageStruct> get olineRoleplayStreamMessages =>
      _olineRoleplayStreamMessages;
  set olineRoleplayStreamMessages(List<OlinePersonaStageMessageStruct> value) {
    _olineRoleplayStreamMessages = value;
    prefs.setStringList('ff_olineRoleplayStreamMessages',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineRoleplayStreamMessages(OlinePersonaStageMessageStruct value) {
    olineRoleplayStreamMessages.add(value);
    prefs.setStringList('ff_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void removeFromOlineRoleplayStreamMessages(
      OlinePersonaStageMessageStruct value) {
    olineRoleplayStreamMessages.remove(value);
    prefs.setStringList('ff_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineRoleplayStreamMessages(int index) {
    olineRoleplayStreamMessages.removeAt(index);
    prefs.setStringList('ff_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void updateOlineRoleplayStreamMessagesAtIndex(
    int index,
    OlinePersonaStageMessageStruct Function(OlinePersonaStageMessageStruct)
        updateFn,
  ) {
    olineRoleplayStreamMessages[index] =
        updateFn(_olineRoleplayStreamMessages[index]);
    prefs.setStringList('ff_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineRoleplayStreamMessages(
      int index, OlinePersonaStageMessageStruct value) {
    olineRoleplayStreamMessages.insert(index, value);
    prefs.setStringList('ff_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  List<String> _olineCharacterLoreSphereSystemMsg = [
    'Greetings! Any new cosplay plans?'
  ];
  List<String> get olineCharacterLoreSphereSystemMsg =>
      _olineCharacterLoreSphereSystemMsg;
  set olineCharacterLoreSphereSystemMsg(List<String> value) {
    _olineCharacterLoreSphereSystemMsg = value;
    prefs.setStringList('ff_olineCharacterLoreSphereSystemMsg', value);
  }

  void addToOlineCharacterLoreSphereSystemMsg(String value) {
    olineCharacterLoreSphereSystemMsg.add(value);
    prefs.setStringList('ff_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }

  void removeFromOlineCharacterLoreSphereSystemMsg(String value) {
    olineCharacterLoreSphereSystemMsg.remove(value);
    prefs.setStringList('ff_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }

  void removeAtIndexFromOlineCharacterLoreSphereSystemMsg(int index) {
    olineCharacterLoreSphereSystemMsg.removeAt(index);
    prefs.setStringList('ff_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }

  void updateOlineCharacterLoreSphereSystemMsgAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    olineCharacterLoreSphereSystemMsg[index] =
        updateFn(_olineCharacterLoreSphereSystemMsg[index]);
    prefs.setStringList('ff_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }

  void insertAtIndexInOlineCharacterLoreSphereSystemMsg(
      int index, String value) {
    olineCharacterLoreSphereSystemMsg.insert(index, value);
    prefs.setStringList('ff_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
