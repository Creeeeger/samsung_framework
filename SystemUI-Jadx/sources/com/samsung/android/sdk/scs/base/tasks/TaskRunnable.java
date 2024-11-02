package com.samsung.android.sdk.scs.base.tasks;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.samsung.android.sdk.scs.base.ResultException;
import com.samsung.android.sdk.scs.base.feature.FeatureStatusCache;
import com.samsung.android.sdk.scs.base.utils.Log;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class TaskRunnable implements Runnable {
    public final TaskCompletionSource mSource;

    public TaskRunnable() {
        this(new TaskCompletionSource());
    }

    public final String createThreadName(String str) {
        if (str != null && !str.isEmpty()) {
            String str2 = str.split("#")[0];
            if (!str2.startsWith("scs")) {
                str2 = "scs-".concat(str2);
            }
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str2, "#");
            m.append(getClass().getSimpleName());
            m.append("@");
            m.append(Integer.toHexString(hashCode()));
            return m.toString();
        }
        return "";
    }

    public abstract void execute();

    public abstract String getFeatureName();

    @Override // java.lang.Runnable
    public final void run() {
        int intValue;
        try {
            boolean interrupted = Thread.interrupted();
            Thread.currentThread().setName(createThreadName(Thread.currentThread().getName()));
            Log.i("ScsApi@TaskRunnable<>", "run() - " + Thread.currentThread() + ", interrupt : " + interrupted);
            Integer num = (Integer) FeatureStatusCache.statusMap.get(getFeatureName());
            if (num == null) {
                intValue = -1000;
            } else {
                intValue = num.intValue();
            }
            if (intValue == 0 && !interrupted) {
                execute();
                return;
            }
            ResultException resultException = new ResultException(intValue, getFeatureName() + " is not available. statusCode: " + intValue + ", isInterrupted: " + interrupted);
            Log.i("ScsApi@TaskRunnable<>", resultException.getMessage());
            this.mSource.setException(resultException);
        } catch (Exception e) {
            android.util.Log.e(Log.concatPrefixTag("ScsApi@TaskRunnable<>"), "Uncaught Exception!!!", e);
            this.mSource.setException(e);
        }
    }

    public TaskRunnable(TaskCompletionSource taskCompletionSource) {
        this.mSource = taskCompletionSource;
    }
}
