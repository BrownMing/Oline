import '../olineCharacte_fableVerse/olineCharacte_fableVerse_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'oline_persona_voice_chronicle_like_model.dart';
export 'oline_persona_voice_chronicle_like_model.dart';

class OlinePersonaVoiceChronicleLikeWidget extends StatefulWidget {
  const OlinePersonaVoiceChronicleLikeWidget({
    super.key,
    this.parameter1,
  });

  final int? parameter1;

  @override
  State<OlinePersonaVoiceChronicleLikeWidget> createState() =>
      _OlinePersonaVoiceChronicleLikeWidgetState();
}

class _OlinePersonaVoiceChronicleLikeWidgetState
    extends State<OlinePersonaVoiceChronicleLikeWidget> {
  late OlinePersonaVoiceChronicleLikeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OlinePersonaVoiceChronicleLikeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<OlineImmersiveRoleplayEngine>();

    return Builder(
      builder: (context) {
        if (!OlineImmersiveRoleplayEngine()
            .olinePersonaChannelPosts
            .elementAtOrNull(widget.parameter1!)!
            .olineFictionVoiceHallPostLikeUsers
            .contains(OlineImmersiveRoleplayEngine()
                .olinePersonaUniverseLoginToken)) {
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              HapticFeedback.heavyImpact();
              OlineImmersiveRoleplayEngine()
                  .updateOlinePersonaChannelPostsAtIndex(
                widget.parameter1!,
                (e) => e
                  ..updateOlineFictionVoiceHallPostLikeUsers(
                    (e) => e.add(OlineImmersiveRoleplayEngine()
                        .olinePersonaUniverseLoginToken),
                  ),
              );
              OlineImmersiveRoleplayEngine().update(() {});
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/rhudifhuidohfgi_dfgdufhguiodhfGIUD.png',
                  ).image,
                ),
              ),
            ),
          );
        } else {
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              HapticFeedback.heavyImpact();
              OlineImmersiveRoleplayEngine()
                  .updateOlinePersonaChannelPostsAtIndex(
                widget.parameter1!,
                (e) => e
                  ..updateOlineFictionVoiceHallPostLikeUsers(
                    (e) => e.remove(OlineImmersiveRoleplayEngine()
                        .olinePersonaUniverseLoginToken),
                  ),
              );
              OlineImmersiveRoleplayEngine().update(() {});
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.linear,
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/sgoidfguiohjifogp_sdfoigudjfgipodf.png',
                  ).image,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
