import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class PoolLockApp extends Application.AppBase {

    var model;
    var controller;

    function initialize() {
        AppBase.initialize();
        model = new PoolLockModel();
        controller = new PoolLockController();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        return [ new PoolLockView(), new PoolLockDelegate() ] as Array<Views or InputDelegates>;
    }

}

function getApp() as PoolLockApp {
    return Application.getApp() as PoolLockApp;
}