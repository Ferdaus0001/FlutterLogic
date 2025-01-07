//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <file_selector_windows/file_selector_windows.h>
#include <typing_text_animation/typing_text_animation_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FileSelectorWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FileSelectorWindows"));
  TypingTextAnimationPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("TypingTextAnimationPluginCApi"));
}
