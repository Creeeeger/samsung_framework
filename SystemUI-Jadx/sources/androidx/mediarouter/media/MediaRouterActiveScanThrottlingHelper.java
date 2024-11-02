package androidx.mediarouter.media;

import android.os.Handler;
import android.os.Looper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouterActiveScanThrottlingHelper {
    public boolean mActiveScan;
    public long mCurrentTime;
    public final Handler mHandler = new Handler(Looper.getMainLooper());
    public long mSuppressActiveScanTimeout;
    public final Runnable mUpdateDiscoveryRequestRunnable;

    public MediaRouterActiveScanThrottlingHelper(Runnable runnable) {
        this.mUpdateDiscoveryRequestRunnable = runnable;
    }
}
