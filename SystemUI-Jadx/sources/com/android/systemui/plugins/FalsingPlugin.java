package com.android.systemui.plugins;

import android.content.Context;
import com.android.systemui.plugins.annotations.DependsOn;
import com.android.systemui.plugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(action = FalsingPlugin.ACTION, version = 2)
@DependsOn(target = FalsingManager.class)
/* loaded from: classes2.dex */
public interface FalsingPlugin extends Plugin {
    public static final String ACTION = "com.android.systemui.action.FALSING_PLUGIN";
    public static final int VERSION = 2;

    default FalsingManager getFalsingManager(Context context) {
        return null;
    }

    default void dataCollected(boolean z, byte[] bArr) {
    }
}
