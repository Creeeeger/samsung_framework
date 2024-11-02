package com.android.systemui.statusbar.notification.collection.coordinator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TrackedSmartspaceTarget {
    public long alertExceptionExpires;
    public Runnable cancelTimeoutRunnable;
    public final String key;
    public boolean shouldFilter;

    public TrackedSmartspaceTarget(String str) {
        this.key = str;
    }
}
