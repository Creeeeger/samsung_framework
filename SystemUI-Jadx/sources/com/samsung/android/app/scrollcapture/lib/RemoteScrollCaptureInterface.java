package com.samsung.android.app.scrollcapture.lib;

import android.content.Context;
import android.util.Log;
import com.android.systemui.screenshot.SaveImageInBackgroundTask;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RemoteScrollCaptureInterface {
    public AnonymousClass1 mConnection;
    public SaveImageInBackgroundTask.AnonymousClass1 mConnectionListener;
    public Context mContext;
    public IScrollCaptureService mService;

    public final void disconnect() {
        Log.d("[ScrCap]_RemoteScrollCaptureInterface", "disconnect");
        AnonymousClass1 anonymousClass1 = this.mConnection;
        if (anonymousClass1 != null) {
            try {
                this.mContext.unbindService(anonymousClass1);
            } catch (Exception e) {
                Log.e("[ScrCap]_RemoteScrollCaptureInterface", "disconnect : e=" + e);
                e.printStackTrace();
            }
        } else {
            Log.e("[ScrCap]_RemoteScrollCaptureInterface", "disconnect : No service connection");
        }
        this.mContext = null;
        this.mConnection = null;
        this.mService = null;
        this.mConnectionListener = null;
    }
}
