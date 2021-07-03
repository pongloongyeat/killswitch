public class KillSwitch.Application : Gtk.Application {
    public Application () {
        Object (
            application_id: "com.github.pongloongyeat.killswitch",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var granite_settings = Granite.Settings.get_default ();
        var gtk_settings = Gtk.Settings.get_default ();

        gtk_settings.gtk_application_prefer_dark_theme = granite_settings.prefers_color_scheme == Granite.Settings.ColorScheme.DARK;
        granite_settings.notify["prefers-color-scheme"].connect (() => {
            gtk_settings.gtk_application_prefer_dark_theme = granite_settings.prefers_color_scheme == Granite.Settings.ColorScheme.DARK;
        });

        var MainWin = new KillSwitch.MainWindow(this);
        MainWin.show_all ();
    }

    public static int main (string[] args) {
        return new KillSwitch.Application ().run (args);
    }
}
