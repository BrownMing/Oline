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
          prefs.getInt('Oline_olinePersonaUniverseLoginToken') ??
              _olinePersonaUniverseLoginToken;
    });
    _safeInit(() {
      _olineImmersiveVoiceUsers = prefs
              .getStringList('Oline_olineImmersiveVoiceUsers')
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
              .getStringList('Oline_olinePersonaChannelPosts')
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
              .getStringList('Oline_olineVoiceRoleFieldChatRooms')
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
              .getStringList('Oline_olineCosplayAudioChats')
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
              .getStringList('Oline_olineCharacterWaveGifts')
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
              .getStringList('Oline_olineRoleplayStreamMessages')
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
          prefs.getStringList('Oline_olineCharacterLoreSphereSystemMsg') ??
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
    prefs.setInt('Oline_olinePersonaUniverseLoginToken', value);
  }

  List<OlineRoleplayLoungeUserStruct> _olineImmersiveVoiceUsers = [
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"0\",\"OlineRoleplayLoungeUser_email\":\"stacy@gmail.com\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Stacy\",\"OlineRoleplayLoungeUser_avator\":\"assets/images/tgsd8fudgfiou_dfioghduifgo.png\",\"OlineRoleplayLoungeUser_describe\":\"✨ Anime voice actress | Love cosplaying magical girls | Join my voice chat room for fun roleplay sessions! 🎭\",\"OlineRoleplayLoungeUser_balance\":\"200\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"1\\\",\\\"2\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[\\\"1\\\",\\\"3\\\",\\\"4\\\",\\\"5\\\"]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684149919\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"1\",\"OlineRoleplayLoungeUser_email\":\"ettixy@gmail.com\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Ettixy\",\"OlineRoleplayLoungeUser_avator\":\"assets/images/ergduhfgoduifg_difhgdouifgh.png\",\"OlineRoleplayLoungeUser_describe\":\"� Professionals voice actor | Specializing in villain characters | DM for collab! 🖤\",\"OlineRoleplayLoungeUser_balance\":\"200\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"0\\\",\\\"3\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[\\\"0\\\",\\\"2\\\"]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684766664\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"2\",\"OlineRoleplayLoungeUser_email\":\"tooti@gmail.com\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Tooti\",\"OlineRoleplayLoungeUser_avator\":\"assets/images/ihdufsihogsudfg_doiufghudiof.png\",\"OlineRoleplayLoungeUser_describe\":\"🌸 Kawaii voice enthusiast | Cosplay lover | Creating cute character voices daily~ 💕\",\"OlineRoleplayLoungeUser_balance\":\"200\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"1\\\",\\\"4\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[\\\"0\\\",\\\"3\\\"]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684767529\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"3\",\"OlineRoleplayLoungeUser_email\":\"kyrie@gmail.com\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Kyrie\",\"OlineRoleplayLoungeUser_avator\":\"assets/images/irhuidhfogiud_viubdsfhguiodfg.png\",\"OlineRoleplayLoungeUser_describe\":\"🎭 Fantasy roleplay master | Voice acting for games | Let us create amazing stories together! ⚔️\",\"OlineRoleplayLoungeUser_balance\":\"200\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"0\\\",\\\"2\\\",\\\"5\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[\\\"1\\\",\\\"5\\\"]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684768262\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"4\",\"OlineRoleplayLoungeUser_email\":\"marumaru@gmail.com\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"Marumaru\",\"OlineRoleplayLoungeUser_avator\":\"assets/images/errdfuighdfioug_xcuivudhfiogu.png\",\"OlineRoleplayLoungeUser_describe\":\"🐱 Neko voice specialist | Cosplay photographer | Hosting daily voice chat parties! 📸\",\"OlineRoleplayLoungeUser_balance\":\"200\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"0\\\",\\\"5\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[\\\"2\\\"]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684769350\"}')),
    OlineRoleplayLoungeUserStruct.fromSerializableMap(jsonDecode(
        '{\"OlineRoleplayLoungeUser_id\":\"5\",\"OlineRoleplayLoungeUser_email\":\"m1ntyzz@gmail.com\",\"OlineRoleplayLoungeUser_password\":\"123456\",\"OlineRoleplayLoungeUser_name\":\"M1ntyzZ\",\"OlineRoleplayLoungeUser_avator\":\"assets/images/ghsdfughsdouifg_wieriuhafduigo.png\",\"OlineRoleplayLoungeUser_describe\":\"🎧 ASMR & Voice roleplay creator | Cosplay streamer | Join my chill voice room~ 🌙\",\"OlineRoleplayLoungeUser_balance\":\"200\",\"OlineRoleplayLoungeUser_followings\":\"[\\\"0\\\",\\\"3\\\"]\",\"OlineRoleplayLoungeUser_fans\":\"[\\\"3\\\",\\\"4\\\"]\",\"OlineRoleplayLoungeUser_blocklist\":\"[]\",\"OlineRoleplayLoungeUser_create_time\":\"1767684770149\"}'))
  ];
  List<OlineRoleplayLoungeUserStruct> get olineImmersiveVoiceUsers =>
      _olineImmersiveVoiceUsers;
  set olineImmersiveVoiceUsers(List<OlineRoleplayLoungeUserStruct> value) {
    _olineImmersiveVoiceUsers = value;
    prefs.setStringList('Oline_olineImmersiveVoiceUsers',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineImmersiveVoiceUsers(OlineRoleplayLoungeUserStruct value) {
    olineImmersiveVoiceUsers.add(value);
    prefs.setStringList('Oline_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void removeFromOlineImmersiveVoiceUsers(OlineRoleplayLoungeUserStruct value) {
    olineImmersiveVoiceUsers.remove(value);
    prefs.setStringList('Oline_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineImmersiveVoiceUsers(int index) {
    olineImmersiveVoiceUsers.removeAt(index);
    prefs.setStringList('Oline_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  void updateOlineImmersiveVoiceUsersAtIndex(
    int index,
    OlineRoleplayLoungeUserStruct Function(OlineRoleplayLoungeUserStruct)
        updateFn,
  ) {
    olineImmersiveVoiceUsers[index] =
        updateFn(_olineImmersiveVoiceUsers[index]);
    prefs.setStringList('Oline_olineImmersiveVoiceUsers',
        _olineImmersiveVoiceUsers.map((x) => x.serialize()).toList());
  }

  List<OlineFictionVoiceHallPostStruct> _olinePersonaChannelPosts = [
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"0\",\"OlineFictionVoiceHallPost_show\":\"[\\\"assets/images/rudifhgiodfghdufu.png\\\",\\\"assets/images/reuighusdfhgodsfg_sdfiguhsduifog.png\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"5\",\"OlineFictionVoiceHallPost_describe\":\"I dare to imitate Wonder Woman\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685423924\",\"OlineFictionVoiceHallPost_comments\":\"[]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"1\",\"OlineFictionVoiceHallPost_show\":\"[\\\"assets/images/erigdfuhghodiufg_dfiughdasfghs.png\\\",\\\"assets/images/rtiogdfuhgdosifgudiuofhgui.png\\\",\\\"assets/images/eurghdsufghoidsufg_dsfyugihdusifg.png\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"4\",\"OlineFictionVoiceHallPost_describe\":\"Tried to be a Maid in London MaidCafe💗\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685424997\",\"OlineFictionVoiceHallPost_comments\":\"[]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"2\",\"OlineFictionVoiceHallPost_show\":\"[\\\"assets/images/rhduigohdifughudi.png\\\",\\\"assets/images/ergdfuhgudiosfg_dighudisohfgiud.png\\\",\\\"assets/images/reuiygdsuiofhguiodfg_xcihvuashiodf.png\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"3\",\"OlineFictionVoiceHallPost_describe\":\"Hahaha, imitate that kind of sassy feeling\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685426108\",\"OlineFictionVoiceHallPost_comments\":\"[]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"3\",\"OlineFictionVoiceHallPost_show\":\"[\\\"assets/images/rhdfuoighuid_dfguyiuydfhg.png\\\",\\\"assets/images/reughudhfgouid_dfgoudfhgoi.png\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"2\",\"OlineFictionVoiceHallPost_describe\":\"My favorite anime character in the past was Ichigo Kurosaki\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685427171\",\"OlineFictionVoiceHallPost_comments\":\"[]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"4\",\"OlineFictionVoiceHallPost_show\":\"[\\\"assets/images/ruhidsfugahouif_dufiguydhfuio.png\\\",\\\"assets/images/eruiudhfuioghd_dfighduiog.png\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"1\",\"OlineFictionVoiceHallPost_describe\":\"How about it, should we restore it\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685428396\",\"OlineFictionVoiceHallPost_comments\":\"[]\"}')),
    OlineFictionVoiceHallPostStruct.fromSerializableMap(jsonDecode(
        '{\"OlineFictionVoiceHallPost_id\":\"5\",\"OlineFictionVoiceHallPost_show\":\"[\\\"assets/images/hdsufioghdui_dfsioghsduifgho.png\\\",\\\"assets/images/riuyudshfguiod_difgudifhog.png\\\",\\\"assets/images/hdfiugoudsfhg_dfghduiofgh.png\\\"]\",\"OlineFictionVoiceHallPost_create_id\":\"0\",\"OlineFictionVoiceHallPost_describe\":\"2025 Cos Annual Summary🤍\",\"OlineFictionVoiceHallPost_like_users\":\"[]\",\"OlineFictionVoiceHallPost_create_time\":\"1767685429614\",\"OlineFictionVoiceHallPost_comments\":\"[]\"}'))
  ];
  List<OlineFictionVoiceHallPostStruct> get olinePersonaChannelPosts =>
      _olinePersonaChannelPosts;
  set olinePersonaChannelPosts(List<OlineFictionVoiceHallPostStruct> value) {
    _olinePersonaChannelPosts = value;
    prefs.setStringList('Oline_olinePersonaChannelPosts',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlinePersonaChannelPosts(OlineFictionVoiceHallPostStruct value) {
    olinePersonaChannelPosts.add(value);
    prefs.setStringList('Oline_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  void updateOlinePersonaChannelPostsAtIndex(
    int index,
    OlineFictionVoiceHallPostStruct Function(OlineFictionVoiceHallPostStruct)
        updateFn,
  ) {
    olinePersonaChannelPosts[index] =
        updateFn(_olinePersonaChannelPosts[index]);
    prefs.setStringList('Oline_olinePersonaChannelPosts',
        _olinePersonaChannelPosts.map((x) => x.serialize()).toList());
  }

  List<OlineVoiceMaskRealmChatRoomStruct> _olineVoiceRoleFieldChatRooms = [
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_name\":\"Cosplay Dimension Voice Room\",\"OlineVoiceMaskRealmChatRoom_show\":\"assets/images/eihidhsfguidofg_dufioghuidfog.png\",\"OlineVoiceMaskRealmChatRoom_number\":\"300\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"1\\\",\\\"2\\\",\\\"3\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685435129\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"0\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"American comics\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"1\",\"OlineVoiceMaskRealmChatRoom_name\":\"Into the Cosplay Realm\",\"OlineVoiceMaskRealmChatRoom_show\":\"assets/images/ruhsdufighoid_dfgodufgh.png\",\"OlineVoiceMaskRealmChatRoom_number\":\"400\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\",\\\"2\\\",\\\"4\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685435907\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"5\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Manga\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"2\",\"OlineVoiceMaskRealmChatRoom_name\":\"Echoes of the Cosplay World\",\"OlineVoiceMaskRealmChatRoom_show\":\"assets/images/yiregdhfuigodg_difuohguidfhog.png\",\"OlineVoiceMaskRealmChatRoom_number\":\"560\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\",\\\"1\\\",\\\"3\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685437071\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"4\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Warm blood\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"3\",\"OlineVoiceMaskRealmChatRoom_name\":\"Anime Heroes Voice Lounge\",\"OlineVoiceMaskRealmChatRoom_show\":\"assets/images/tguihdfgouifdfhg_dyfugydfoghu.jpeg\",\"OlineVoiceMaskRealmChatRoom_number\":\"660\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\",\\\"2\\\",\\\"5\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"true\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685438000\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"1\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"American comics\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"4\",\"OlineVoiceMaskRealmChatRoom_name\":\"Fantasy Roleplay Kingdom\",\"OlineVoiceMaskRealmChatRoom_show\":\"assets/images/ergdhfuihodfgu_dfuyghdfugio.jpeg\",\"OlineVoiceMaskRealmChatRoom_number\":\"800\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\",\\\"1\\\",\\\"5\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"true\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685439000\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"3\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Manga\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[]\"}')),
    OlineVoiceMaskRealmChatRoomStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoiceMaskRealmChatRoom_id\":\"5\",\"OlineVoiceMaskRealmChatRoom_name\":\"Kawaii Voice Paradise\",\"OlineVoiceMaskRealmChatRoom_show\":\"assets/images/rehuighdofogui_dfghdufgih.jpeg\",\"OlineVoiceMaskRealmChatRoom_number\":\"520\",\"OlineVoiceMaskRealmChatRoom_join_users\":\"[\\\"0\\\",\\\"3\\\",\\\"4\\\"]\",\"OlineVoiceMaskRealmChatRoom_hot\":\"false\",\"OlineVoiceMaskRealmChatRoom_create_time\":\"1767685440000\",\"OlineVoiceMaskRealmChatRoom_create_id\":\"2\",\"OlineVoiceMaskRealmChatRoom_create_type\":\"Warm blood\",\"OlineVoiceMaskRealmChatRoom_comments\":\"[]\"}'))
  ];
  List<OlineVoiceMaskRealmChatRoomStruct> get olineVoiceRoleFieldChatRooms =>
      _olineVoiceRoleFieldChatRooms;
  set olineVoiceRoleFieldChatRooms(
      List<OlineVoiceMaskRealmChatRoomStruct> value) {
    _olineVoiceRoleFieldChatRooms = value;
    prefs.setStringList('Oline_olineVoiceRoleFieldChatRooms',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineVoiceRoleFieldChatRooms(
      OlineVoiceMaskRealmChatRoomStruct value) {
    olineVoiceRoleFieldChatRooms.add(value);
    prefs.setStringList('Oline_olineVoiceRoleFieldChatRooms',
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
    prefs.setStringList('Oline_olineVoiceRoleFieldChatRooms',
        _olineVoiceRoleFieldChatRooms.map((x) => x.serialize()).toList());
  }

  List<OlineVoicePersonaRoleplayChatStruct> _olineCosplayAudioChats = [
    OlineVoicePersonaRoleplayChatStruct.fromSerializableMap(jsonDecode(
        '{\"OlineVoicePersonaRoleplayChat_id\":\"0\",\"OlineVoicePersonaRoleplayChat_last_message\":\"Hello! Nice to meet you~\",\"OlineVoicePersonaRoleplayChat_last_time\":\"1736265600000\",\"OlineVoicePersonaRoleplayChat_send_user\":\"0\",\"OlineVoicePersonaRoleplayChat_receive_user\":\"2\",\"OlineVoicePersonaRoleplayChat_unread\":\"1\"}'))
  ];
  List<OlineVoicePersonaRoleplayChatStruct> get olineCosplayAudioChats =>
      _olineCosplayAudioChats;
  set olineCosplayAudioChats(List<OlineVoicePersonaRoleplayChatStruct> value) {
    _olineCosplayAudioChats = value;
    prefs.setStringList('Oline_olineCosplayAudioChats',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineCosplayAudioChats(OlineVoicePersonaRoleplayChatStruct value) {
    olineCosplayAudioChats.add(value);
    prefs.setStringList('Oline_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  void updateOlineCosplayAudioChatsAtIndex(
    int index,
    OlineVoicePersonaRoleplayChatStruct Function(
            OlineVoicePersonaRoleplayChatStruct)
        updateFn,
  ) {
    olineCosplayAudioChats[index] = updateFn(_olineCosplayAudioChats[index]);
    prefs.setStringList('Oline_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineCosplayAudioChats(
      int index, OlineVoicePersonaRoleplayChatStruct value) {
    olineCosplayAudioChats.insert(index, value);
    prefs.setStringList('Oline_olineCosplayAudioChats',
        _olineCosplayAudioChats.map((x) => x.serialize()).toList());
  }

  List<OlineCharacterLinkGiftStruct> _olineCharacterWaveGifts = [
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"0\",\"OlineCharacterLinkGift_show\":\"assets/images/urygsdyuifghyoudifg.png\",\"OlineCharacterLinkGift_balance\":\"199\"}')),
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"1\",\"OlineCharacterLinkGift_show\":\"assets/images/dkfuhguiodhfg_difughidofg.png\",\"OlineCharacterLinkGift_balance\":\"299\"}')),
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"2\",\"OlineCharacterLinkGift_show\":\"assets/images/eruighdfuigo_ifugvyadsfhuso.png\",\"OlineCharacterLinkGift_balance\":\"399\"}')),
    OlineCharacterLinkGiftStruct.fromSerializableMap(jsonDecode(
        '{\"OlineCharacterLinkGift_id\":\"3\",\"OlineCharacterLinkGift_show\":\"assets/images/ruiydhfuioghdf_dfughduofig.png\",\"OlineCharacterLinkGift_balance\":\"499\"}'))
  ];
  List<OlineCharacterLinkGiftStruct> get olineCharacterWaveGifts =>
      _olineCharacterWaveGifts;
  set olineCharacterWaveGifts(List<OlineCharacterLinkGiftStruct> value) {
    _olineCharacterWaveGifts = value;
    prefs.setStringList('Oline_olineCharacterWaveGifts',
        value.map((x) => x.serialize()).toList());
  }

  void updateOlineCharacterWaveGiftsAtIndex(
    int index,
    OlineCharacterLinkGiftStruct Function(OlineCharacterLinkGiftStruct)
        updateFn,
  ) {
    olineCharacterWaveGifts[index] = updateFn(_olineCharacterWaveGifts[index]);
    prefs.setStringList('Oline_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOlineCharacterWaveGifts(
      int index, OlineCharacterLinkGiftStruct value) {
    olineCharacterWaveGifts.insert(index, value);
    prefs.setStringList('Oline_olineCharacterWaveGifts',
        _olineCharacterWaveGifts.map((x) => x.serialize()).toList());
  }

  List<OlinePersonaStageMessageStruct> _olineRoleplayStreamMessages = [];
  List<OlinePersonaStageMessageStruct> get olineRoleplayStreamMessages =>
      _olineRoleplayStreamMessages;
  set olineRoleplayStreamMessages(List<OlinePersonaStageMessageStruct> value) {
    _olineRoleplayStreamMessages = value;
    prefs.setStringList('Oline_olineRoleplayStreamMessages',
        value.map((x) => x.serialize()).toList());
  }

  void addToOlineRoleplayStreamMessages(OlinePersonaStageMessageStruct value) {
    olineRoleplayStreamMessages.add(value);
    prefs.setStringList('Oline_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void removeFromOlineRoleplayStreamMessages(
      OlinePersonaStageMessageStruct value) {
    olineRoleplayStreamMessages.remove(value);
    prefs.setStringList('Oline_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOlineRoleplayStreamMessages(int index) {
    olineRoleplayStreamMessages.removeAt(index);
    prefs.setStringList('Oline_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  void updateOlineRoleplayStreamMessagesAtIndex(
    int index,
    OlinePersonaStageMessageStruct Function(OlinePersonaStageMessageStruct)
        updateFn,
  ) {
    olineRoleplayStreamMessages[index] =
        updateFn(_olineRoleplayStreamMessages[index]);
    prefs.setStringList('Oline_olineRoleplayStreamMessages',
        _olineRoleplayStreamMessages.map((x) => x.serialize()).toList());
  }

  List<String> _olineCharacterLoreSphereSystemMsg = [
    'Greetings! Any new cosplay plans?'
  ];
  List<String> get olineCharacterLoreSphereSystemMsg =>
      _olineCharacterLoreSphereSystemMsg;
  set olineCharacterLoreSphereSystemMsg(List<String> value) {
    _olineCharacterLoreSphereSystemMsg = value;
    prefs.setStringList('Oline_olineCharacterLoreSphereSystemMsg', value);
  }

  void addToOlineCharacterLoreSphereSystemMsg(String value) {
    _olineCharacterLoreSphereSystemMsg.add(value);
    prefs.setStringList('Oline_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
    // 添加新消息时显示气泡
    _olineSystemMsgBadgeVisible = true;
  }

  void removeFromOlineCharacterLoreSphereSystemMsg(String value) {
    _olineCharacterLoreSphereSystemMsg.remove(value);
    prefs.setStringList('Oline_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }

  void removeAtIndexFromOlineCharacterLoreSphereSystemMsg(int index) {
    _olineCharacterLoreSphereSystemMsg.removeAt(index);
    prefs.setStringList('Oline_olineCharacterLoreSphereSystemMsg',
        _olineCharacterLoreSphereSystemMsg);
  }

  bool _olineSystemMsgBadgeVisible = true;
  bool get olineSystemMsgBadgeVisible => _olineSystemMsgBadgeVisible;
  set olineSystemMsgBadgeVisible(bool value) {
    _olineSystemMsgBadgeVisible = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}
