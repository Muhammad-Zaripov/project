import 'package:flutter/material.dart';
import 'package:wallet/core/constants/app_colors.dart';
import 'package:wallet/core/constants/app_paddings.dart';
import 'package:wallet/core/constants/app_radius.dart';
import 'package:wallet/core/constants/assets_path.dart';
import 'package:wallet/core/utils/extensions/widget_extensions.dart';
import '../../../../core/constants/app_spacing.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/localization/generated/app_localizations.dart';
import 'fuelz_balance_widget.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({super.key});

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  late AppLocalizations l10n;
  @override
  Widget build(BuildContext context) {
    l10n = AppLocalizations.of(context)!;
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.only(top: AppPaddings.paddingM),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        gradient: LinearGradient(colors: AppColors.blurGradient),
      ),
      child: Stack(
        children: [
          Column(
            spacing: AppPaddings.paddingM,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: AppPaddings.paddingM,
                  right: AppPaddings.paddingM,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.myBalances,
                      style: AppTextStyles.heading2SemiBold,
                    ),
                    Row(
                      spacing: AppSpacing.spacingXs,
                      children: [
                        Text('646', style: AppTextStyles.heading1Bold),
                        Image.asset(AssetsPath.piecee, width: 40, height: 40),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  // ClipRRect(
                  //   borderRadius: BorderRadiusGeometry.only(
                  //     bottomLeft: Radius.circular(AppRadius.medium),
                  //   ),
                  //   child:
                  // ),
                  SizedBox(width: 80),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      spacing: AppSpacing.spacing2xl,
                      children: [
                        ShadowOnScroll(),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: AppPaddings.paddingM,

                            right: AppPaddings.paddingM,
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: AppPaddings.paddingS,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.black,
                              borderRadius: BorderRadius.circular(
                                AppRadius.large,
                              ),
                            ),
                            width: 235,
                            child: Row(
                              spacing: AppPaddings.paddingM,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add, color: AppColors.white),
                                Text(
                                  l10n.add,
                                  style: AppTextStyles.bodyLargeSemiBold
                                      .copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(AssetsPath.pumpStation, width: 136, height: 180),
          ),
        ],
      ),
    );
  }
}

class ShadowOnScroll extends StatefulWidget {
  const ShadowOnScroll({super.key});

  @override
  State<ShadowOnScroll> createState() => _ShadowOnScrollState();
}

class _ShadowOnScrollState extends State<ShadowOnScroll> {
  final ScrollController _controller = ScrollController();
  bool _showLeftShadow = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final show = _controller.offset > 0;
      if (show != _showLeftShadow) {
        setState(() {
          _showLeftShadow = show;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 50),
              Row(
                children: List.generate(
                  10,
                  (index) => FuelzBalanceWidget().paddingOnly(
                    right: AppPaddings.paddingS,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_showLeftShadow)
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(3)),
              child: Container(
                width: 30,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.2), Colors.transparent],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:wallet/core/constants/app_colors.dart';
// import 'package:wallet/core/constants/app_paddings.dart';
// import 'package:wallet/core/constants/app_radius.dart';
// import 'package:wallet/core/constants/assets_path.dart';
// import 'package:wallet/core/utils/extensions/widget_extensions.dart';
// import '../../../../core/constants/app_spacing.dart';
// import '../../../../core/constants/app_text_styles.dart';
// import '../../../../core/localization/generated/app_localizations.dart';
// import 'fuelz_balance_widget.dart';

// class BalanceCard extends StatefulWidget {
//   const BalanceCard({super.key});

//   @override
//   State<BalanceCard> createState() => _BalanceCardState();
// }

// class _BalanceCardState extends State<BalanceCard> {
//   late AppLocalizations l10n;
//   @override
//   Widget build(BuildContext context) {
//     l10n = AppLocalizations.of(context)!;
//     return Container(
//       clipBehavior: Clip.hardEdge,
//       padding: EdgeInsets.only(top: AppPaddings.paddingM),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(AppRadius.medium),
//         gradient: LinearGradient(colors: AppColors.blurGradient),
//       ),
//       child: Stack(
//         children: [
//           Column(
//             spacing: AppPaddings.paddingM,
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(
//                   left: AppPaddings.paddingM,
//                   right: AppPaddings.paddingM,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       l10n.myBalances,
//                       style: AppTextStyles.heading2SemiBold,
//                     ),
//                     Row(
//                       spacing: AppSpacing.spacingXs,
//                       children: [
//                         Text('646', style: AppTextStyles.heading1Bold),
//                         Image.asset(AssetsPath.piecee, width: 40, height: 40),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadiusGeometry.only(
//                       bottomLeft: Radius.circular(AppRadius.medium),
//                     ),
//                     child: Image.asset(
//                       AssetsPath.pumpStation,
//                       width: 136,
//                       height: 180,
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       spacing: AppSpacing.spacing3xl,
//                       children: [
//                         ShadowOnScroll(),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             bottom: AppPaddings.paddingM,
//                           ),
//                           child: Container(
//                             padding: EdgeInsets.symmetric(
//                               vertical: AppPaddings.paddingS,
//                             ),
//                             decoration: BoxDecoration(
//                               color: AppColors.black,
//                               borderRadius: BorderRadius.circular(
//                                 AppRadius.large,
//                               ),
//                             ),
//                             width: 235,
//                             child: Row(
//                               spacing: AppPaddings.paddingM,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(Icons.add, color: AppColors.white),
//                                 Text(
//                                   l10n.add,
//                                   style: AppTextStyles.bodyLargeSemiBold
//                                       .copyWith(color: AppColors.white),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ShadowOnScroll extends StatefulWidget {
//   const ShadowOnScroll({super.key});

//   @override
//   State<ShadowOnScroll> createState() => _ShadowOnScrollState();
// }

// class _ShadowOnScrollState extends State<ShadowOnScroll> {
//   final ScrollController _controller = ScrollController();
//   bool _showLeftShadow = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(() {
//       final show = _controller.offset > 0;
//       if (show != _showLeftShadow) {
//         setState(() {
//           _showLeftShadow = show;
//         });
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SingleChildScrollView(
//           controller: _controller,
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(
//               10,
//               (index) =>
//                   FuelzBalanceWidget().paddingOnly(right: AppPaddings.paddingS),
//             ),
//           ),
//         ),
//         if (_showLeftShadow)
//           Positioned(
//             left: 0,
//             top: 0,
//             bottom: 0,
//             child: ClipRRect(
//               borderRadius: BorderRadius.horizontal(left: Radius.circular(3)),
//               child: Container(
//                 width: 30,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.black.withOpacity(0.2), Colors.transparent],
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
