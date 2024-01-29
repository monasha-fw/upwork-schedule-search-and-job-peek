import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';
import 'package:schedule_search_and_job_peek/presentation/extensions/index.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PageAppBar({
    required this.title,
    this.subTitle,
    this.actions = const [],
    super.key,
  });

  final String title;
  final String? subTitle;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: context.router.canNavigateBack
          ? IconButton(
              onPressed: () => context.popRoute(),
              icon: const Icon(Icons.chevron_left),
            )
          : null,
      centerTitle: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: context.theme.appBarTheme.titleTextStyle),
          if (subTitle != null)
            Text(
              subTitle!,
              style: context.theme.appBarTheme.titleTextStyle?.copyWith(
                fontSize: context.textTheme.headlineMedium?.fontSize,
              ),
            ),
        ],
      ),
      actions: [...actions, WSB(16.w)],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
