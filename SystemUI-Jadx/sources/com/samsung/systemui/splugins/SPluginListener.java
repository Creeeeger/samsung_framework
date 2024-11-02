package com.samsung.systemui.splugins;

import android.content.Context;
import com.samsung.systemui.splugins.SPlugin;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface SPluginListener<T extends SPlugin> {
    void onPluginConnected(T t, Context context);

    default void onPluginLoadFailed(int i) {
    }

    default void onPluginDisconnected(T t, int i) {
    }
}
