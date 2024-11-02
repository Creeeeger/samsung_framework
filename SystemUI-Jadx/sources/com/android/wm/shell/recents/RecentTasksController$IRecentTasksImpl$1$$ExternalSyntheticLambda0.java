package com.android.wm.shell.recents;

import com.android.wm.shell.common.SingleInstanceRemoteListener;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class RecentTasksController$IRecentTasksImpl$1$$ExternalSyntheticLambda0 implements SingleInstanceRemoteListener.RemoteCall {
    @Override // com.android.wm.shell.common.SingleInstanceRemoteListener.RemoteCall
    public final void accept(Object obj) {
        ((IRecentTasksListener) obj).onRecentTasksChanged();
    }
}
