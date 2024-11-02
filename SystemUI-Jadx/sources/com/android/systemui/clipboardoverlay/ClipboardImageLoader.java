package com.android.systemui.clipboardoverlay;

import android.content.Context;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ClipboardImageLoader {
    public final String TAG = "ClipboardImageLoader";
    public final CoroutineDispatcher bgDispatcher;
    public final Context context;

    public ClipboardImageLoader(Context context, CoroutineDispatcher coroutineDispatcher, CoroutineScope coroutineScope) {
        this.context = context;
        this.bgDispatcher = coroutineDispatcher;
    }
}
