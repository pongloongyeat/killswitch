public class KillSwitch.MainWindow : Hdy.ApplicationWindow {
    public MainWindow (Gtk.Application application) {
        Object(
            application: application,
            resizable: false,
            width_request: 480,
            height_request: 320
        );
    }

    construct {
        Hdy.init ();

        var headerbar = new Hdy.HeaderBar () {
            show_close_button = true,
            decoration_layout ="close:"
        };
        headerbar.get_style_context ().add_class (Gtk.STYLE_CLASS_FLAT);
        headerbar.get_style_context ().add_class ("default-decoration");

        var applications_icon = new Gtk.Image () {
            gicon = new ThemedIcon ("application-default-icon")
        };

        var desktop_components_icon = new Gtk.Image () {
            gicon = new ThemedIcon ("preferences-desktop-wallpaper")
        };

        var title_label = new Gtk.Label ("KillSwitch") {
            justify = Gtk.Justification.CENTER,
            hexpand = true
        };
        title_label.get_style_context ().add_class (Granite.STYLE_CLASS_H1_LABEL);

        var subtitle_label = new Gtk.Label ("Kills Running Applications") {
            justify = Gtk.Justification.CENTER,
            hexpand = true
        };
        subtitle_label.get_style_context ().add_class (Granite.STYLE_CLASS_H2_LABEL);

        var options = new Gtk.Grid () {
            expand = true,
            margin = 12,
            orientation = Gtk.Orientation.VERTICAL,
            halign = Gtk.Align.CENTER,
            margin_top = 24
        };

        var applications_button = new Granite.Widgets.WelcomeButton (applications_icon,
            "Applications", "Kills all running user-installed applications");

        var desktop_components_button = new Granite.Widgets.WelcomeButton (desktop_components_icon,
            "Desktop components", "Kills the dock and top bar");

        options.add (applications_button);
        options.add (desktop_components_button);

        var content = new Gtk.Grid () {
            expand = true,
            margin = 12,
            orientation = Gtk.Orientation.VERTICAL,
            valign = Gtk.Align.CENTER
        };

        content.add (title_label);
        content.add (subtitle_label);
        content.add (options);

        var grid = new Gtk.Grid ();
        grid.attach (headerbar, 0, 0);
        grid.attach (content, 0, 1);

        var handle = new Hdy.WindowHandle ();
        handle.add (grid);

        add (handle);
    }
}
