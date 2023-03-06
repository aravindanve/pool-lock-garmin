using Toybox.Timer;
using Toybox.Application;
using Toybox.WatchUi;

using Toybox.WatchUi;
using Toybox.System;

class PoolLockController
{
    hidden var mModel;

    function initialize() {
        mModel = Application.getApp().model;
    }

    function lock() {
        mModel.lock();
    }

    function unlock() {
        mModel.unlock();
    }

    function isLocked() {
        return mModel.isLocked();
    }

    function onLockUnlock() {
        if (isLocked()) {
            unlock();
        } else {
            lock();
        }
    }

}