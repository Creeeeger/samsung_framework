package com.android.wm.shell.common;

import android.content.Context;
import android.content.IntentFilter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DockStateReader {
    public static final IntentFilter DOCK_INTENT_FILTER = new IntentFilter("android.intent.action.DOCK_EVENT");
    public final Context mContext;

    public DockStateReader(Context context) {
        this.mContext = context;
    }
}
