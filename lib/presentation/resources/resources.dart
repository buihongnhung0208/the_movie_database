import 'package:the_movie_database/presentation/resources/generated/l10n.dart';

import 'assets/text_styles.dart';
import 'generated/assets.gen.dart';

class CoreResources {
  const CoreResources._();

  static final images = Assets.lib.presentation.resources.assets.images;
  static final strings = S.current;
  static final textStyles = TextStyles();
}
