package com.android.systemui.temporarydisplay;

import com.android.internal.logging.InstanceId;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class TemporaryViewInfo {
    public final int timeoutMs = 10000;

    public abstract String getId();

    public abstract InstanceId getInstanceId();

    public abstract ViewPriority getPriority();

    public int getTimeoutMs() {
        return this.timeoutMs;
    }

    public abstract String getWakeReason();

    public abstract String getWindowTitle();
}
