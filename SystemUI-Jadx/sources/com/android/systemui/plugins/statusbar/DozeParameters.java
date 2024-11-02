package com.android.systemui.plugins.statusbar;

import com.android.systemui.plugins.annotations.ProvidesInterface;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@ProvidesInterface(version = 1)
/* loaded from: classes2.dex */
public interface DozeParameters {
    public static final int VERSION = 1;

    boolean shouldControlScreenOff();
}
