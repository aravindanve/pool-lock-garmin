import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.System;

class PoolLockDelegate extends WatchUi.BehaviorDelegate {

    hidden var mController;

    function initialize() {
        BehaviorDelegate.initialize();
        mController = Application.getApp().controller;
    }

    function onSelect() as Boolean {
        // System.println("user selected toggle lock");
        mController.onLockUnlock();
        WatchUi.requestUpdate();
        return true;
    }

}