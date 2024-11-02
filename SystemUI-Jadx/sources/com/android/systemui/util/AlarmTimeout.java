package com.android.systemui.util;

import android.app.AlarmManager;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class AlarmTimeout implements AlarmManager.OnAlarmListener {
    public final AlarmManager mAlarmManager;
    public final Handler mHandler;
    public final AlarmManager.OnAlarmListener mListener;
    public boolean mScheduled;
    public final String mTag;

    public AlarmTimeout(AlarmManager alarmManager, AlarmManager.OnAlarmListener onAlarmListener, String str, Handler handler) {
        this.mAlarmManager = alarmManager;
        this.mListener = onAlarmListener;
        this.mTag = str;
        this.mHandler = handler;
    }

    public final void cancel() {
        if (this.mScheduled) {
            this.mAlarmManager.cancel(this);
            this.mScheduled = false;
        }
    }

    @Override // android.app.AlarmManager.OnAlarmListener
    public final void onAlarm() {
        if (!this.mScheduled) {
            return;
        }
        this.mScheduled = false;
        this.mListener.onAlarm();
    }

    public final void schedule(int i, long j) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    if (this.mScheduled) {
                        cancel();
                    }
                } else {
                    throw new IllegalArgumentException(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("Illegal mode: ", i));
                }
            } else if (this.mScheduled) {
                return;
            }
        } else if (this.mScheduled) {
            throw new IllegalStateException(AbstractResolvableFuture$$ExternalSyntheticOutline0.m(new StringBuilder(), this.mTag, " timeout is already scheduled"));
        }
        this.mAlarmManager.setExact(2, SystemClock.elapsedRealtime() + j, this.mTag, this, this.mHandler);
        this.mScheduled = true;
    }
}
