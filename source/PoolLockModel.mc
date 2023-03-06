using Toybox.ActivityRecording;

class PoolLockModel
{
    hidden var mSession;

    function initialize() {
        mSession = null;
    }

    function lock() {
        if (mSession == null) {
            mSession = ActivityRecording.createSession({:name=>"Pool Lock"});
            mSession.start();
        }
    }

    function unlock() {
        if (mSession != null) {
            mSession.stop();
            mSession.discard();
            mSession = null;
        }
    }

    function isLocked() {
        if (mSession != null) {
            return mSession.isRecording();
        } else {
            return false;
        }
    }

}
