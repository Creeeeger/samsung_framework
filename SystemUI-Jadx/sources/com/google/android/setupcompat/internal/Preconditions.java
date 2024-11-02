package com.google.android.setupcompat.internal;

import android.os.Looper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Preconditions {
    public static void checkArgument(String str, boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException(str);
        }
    }

    public static void ensureOnMainThread(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
        } else {
            throw new IllegalStateException(str.concat(" must be called from the UI thread."));
        }
    }
}
