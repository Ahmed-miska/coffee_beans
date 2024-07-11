import 'package:coffee_beans/core/helpers/app_styles.dart';
import 'package:coffee_beans/features/create_account/ui/widgets/name_text_field.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/helpers/spacing.dart';

class FirstAndLastName extends StatelessWidget {
  const FirstAndLastName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('الاسم الثاني', style: AppStyles.font20lightPrimary700),
            verticalSpace(16),
            const NameTextField(name: 'اسم العائلة'),
          ],
        ),
        horizontalSpace(27),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('الاسم الاول', style: AppStyles.font20lightPrimary700),
            verticalSpace(16),
            const NameTextField(name: 'الاسم الاول'),
          ],
        ),
      ],
    );
  }
}
