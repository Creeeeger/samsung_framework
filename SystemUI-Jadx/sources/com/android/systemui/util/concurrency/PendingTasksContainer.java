package com.android.systemui.util.concurrency;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PendingTasksContainer {
    public volatile AtomicInteger pendingTasksCount = new AtomicInteger(0);
    public volatile AtomicReference completionCallback = new AtomicReference();
}
