from django.utils.translation import gettext_lazy as _
from horizon import extensions

from open_plugin.extensions.panels.dashboard_panel import OpenPluginPanel

class OpenPluginExtension(extensions.ExtensionDescriptor):
    name = _("OpenPlugin Extension")

    def get_panels(self):
        return [OpenPluginPanel]
