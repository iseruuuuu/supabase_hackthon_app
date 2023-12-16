import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:supabase_hackthon_app/router/router.dart';
import 'package:supabase_hackthon_app/ui/component/app_app_bar.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/setting/setting_view_model.dart';
import 'package:supabase_hackthon_app/utils/mixin/dialog_mixin.dart';
import 'package:supabase_hackthon_app/utils/mixin/snack_bar_mixin.dart';
import 'package:supabase_hackthon_app/utils/mixin/url_launcher_mixin.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends ConsumerState<SettingScreen>
    with UrlLauncherMixin, DialogMixin, SnackBarMixin {
  @override
  Widget build(BuildContext context) {
    final loading = ref.watch(loadingProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppAppBar(),
      body: Stack(
        children: [
          SettingsList(
            sections: [
              SettingsSection(
                title: const Text('Settings'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                    ),
                    title: const Text('Developer'),
                    onPressed: (context) {
                      openSNSUrl(
                        'twitter://user?screen_name=isekiryu',
                        'https://twitter.com/isekiryu',
                      ).then((value) {
                        if (!value) {
                          openErrorSnackBar(context);
                        }
                      });
                    },
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(FontAwesomeIcons.github),
                    title: const Text('GitHub'),
                    onPressed: (context) {
                      launcherUrl(
                        'https://github.com/iseruuuuu/supabase_hackthon_app',
                      ).then((value) {
                        if (!value) {
                          openErrorSnackBar(context);
                        }
                      });
                    },
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.account_balance_wallet_outlined),
                    title: const Text('License'),
                    onPressed: (context) {
                      context.pushNamed(RouterPath.license);
                    },
                  ),
                  SettingsTile(
                    title: const Text('Application Version'),
                    trailing: const Text('1.0.0'),
                  ),
                ],
              ),
              SettingsSection(
                title: const Text('Account'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.logout),
                    title: const Text(
                      'Logout',
                    ),
                    onPressed: (context) {
                      openLogOutDialog(
                        context: context,
                        logout: () => ref
                            .read(settingViewModelProvider().notifier)
                            .signOut()
                            .then((value) {
                          if (value) {
                            if (mounted) {
                              context.pushReplacementNamed(
                                RouterPath.authentication,
                              );
                            }
                          } else {
                            openErrorSnackBar(context);
                          }
                        }),
                      );
                    },
                  ),
                ],
              ),
            ],
            lightTheme: SettingsThemeData(
              settingsSectionBackground: Colors.grey.shade100,
              settingsListBackground: Colors.white,
              dividerColor: Colors.grey,
              leadingIconsColor: Colors.black,
            ),
            darkTheme: SettingsThemeData(
              settingsSectionBackground: Colors.grey.shade100,
              settingsListBackground: Colors.white,
              dividerColor: Colors.grey,
              leadingIconsColor: Colors.black,
            ),
          ),
          AppLoading(
            loading: loading,
            status: '',
          ),
        ],
      ),
    );
  }
}
