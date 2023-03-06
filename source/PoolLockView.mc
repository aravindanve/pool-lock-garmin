import Toybox.Graphics;
import Toybox.WatchUi;

class PoolLockView extends WatchUi.View {

    hidden var mModel;
    hidden var mController;
    hidden var mStatusValue;
    hidden var mStatusValueLocked;
    hidden var mStatusValueUnlocked;

    function initialize() {
        View.initialize();
        mModel = Application.getApp().model;
        mController = Application.getApp().controller;
        mStatusValue = null;
        mStatusValueLocked = WatchUi.loadResource(Rez.Strings.status_value_locked);
        mStatusValueUnlocked = WatchUi.loadResource(Rez.Strings.status_value_unlocked);
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));

        mStatusValue = View.findDrawableById("status_value");
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        var locked = mController.isLocked();

        if (locked) {
            mStatusValue.setText(mStatusValueLocked);
        } else {
            mStatusValue.setText(mStatusValueUnlocked);
        }

        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);

        if (locked) {
            var lockedIcon = new Rez.Drawables.locked_icon();
            lockedIcon.draw(dc);
        } else {
            var unlockedIcon = new Rez.Drawables.unlocked_icon();
            unlockedIcon.draw(dc);
        }
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

}
