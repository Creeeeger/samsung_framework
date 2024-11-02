package com.android.systemui.statusbar.notification.collection.coalescer;

import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class EventBatch {
    public ExecutorImpl.ExecutionToken mCancelShortTimeout;
    public final long mCreatedTimestamp;
    public final String mGroupKey;
    public final List mMembers = new ArrayList();

    public EventBatch(long j, String str) {
        this.mCreatedTimestamp = j;
        this.mGroupKey = str;
    }
}
