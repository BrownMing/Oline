import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'oline_voice_roleplay_continuum_empty_model.dart';
export 'oline_voice_roleplay_continuum_empty_model.dart';

class OlineVoiceRoleplayContinuumEmptyWidget extends StatefulWidget {
  const OlineVoiceRoleplayContinuumEmptyWidget({super.key});

  @override
  State<OlineVoiceRoleplayContinuumEmptyWidget> createState() =>
      _OlineVoiceRoleplayContinuumEmptyWidgetState();
}

class _OlineVoiceRoleplayContinuumEmptyWidgetState
    extends State<OlineVoiceRoleplayContinuumEmptyWidget> {
  late OlineVoiceRoleplayContinuumEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => OlineVoiceRoleplayContinuumEmptyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.0,
      height: 168.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset(
            'assets/images/gyfughudifhgiu_xcviydufgodfg.png',
          ).image,
        ),
      ),
    );
  }
}
