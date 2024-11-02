package com.android.systemui.keyguard;

import android.app.IWallpaperManager;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.util.time.SystemClock;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WakefulnessLifecycle extends SecLifecycle implements Dumpable {
    public final Context mContext;
    public final DisplayMetrics mDisplayMetrics;
    public final SystemClock mSystemClock;
    public final IWallpaperManager mWallpaperManagerService;
    public int mWakefulness = 2;
    public int mLastWakeReason = 0;
    public Point mLastWakeOriginLocation = null;
    public int mLastSleepReason = 0;
    public Point mLastSleepOriginLocation = null;

    public WakefulnessLifecycle(Context context, IWallpaperManager iWallpaperManager, SystemClock systemClock, DumpManager dumpManager) {
        this.mContext = context;
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
        this.mWallpaperManagerService = iWallpaperManager;
        this.mSystemClock = systemClock;
        dumpManager.registerDumpable("WakefulnessLifecycle", this);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(printWriter, "WakefulnessLifecycle:", "  mWakefulness=");
        m.append(this.mWakefulness);
        printWriter.println(m.toString());
    }

    public final Point getPowerButtonOrigin() {
        Context context = this.mContext;
        boolean z = true;
        if (context.getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        DisplayMetrics displayMetrics = this.mDisplayMetrics;
        if (z) {
            return new Point(displayMetrics.widthPixels, context.getResources().getDimensionPixelSize(R.dimen.physical_power_button_center_screen_location_y));
        }
        return new Point(context.getResources().getDimensionPixelSize(R.dimen.physical_power_button_center_screen_location_y), displayMetrics.heightPixels);
    }

    @Override // com.android.systemui.keyguard.SecLifecycle
    public final int getWakefulness() {
        return this.mWakefulness;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Observer {
        default void onFinishedGoingToSleep() {
        }

        default void onFinishedWakingUp() {
        }

        default void onPostFinishedWakingUp() {
        }

        default void onStartedGoingToSleep() {
        }

        default void onStartedWakingUp() {
        }
    }
}
