package com.android.systemui.plugins.aod;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginAODParameter {
    boolean getBoolean(int i, boolean z);

    int getInt(int i, int i2);

    int[] getSensorToBrightness();

    String getString(int i, String str);
}
