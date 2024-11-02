package android.filterfw.core;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GLFrame.java */
/* loaded from: classes.dex */
public class GLFrameTimer {
    private static StopWatchMap mTimer = null;

    GLFrameTimer() {
    }

    public static StopWatchMap get() {
        if (mTimer == null) {
            mTimer = new StopWatchMap();
        }
        return mTimer;
    }
}
