package com.samsung.systemui.splugins.slimindicator;

import android.graphics.drawable.Drawable;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface SPluginSlimIndicatorBoxCallback {
    public static final String ICON_BLACKLIST_SETTING = "icon_blacklist";
    public static final int VERSION = 7005;
    public static final HashMap<String, Drawable> mIconDrawableList = null;
    public static final HashMap<String, Boolean> mIconEnableList = null;
    public static final boolean mIsShowHomeCarrier = true;
    public static final boolean mIsShowLockCarrier = true;

    boolean getIsLockCarrier();

    boolean getIsShowCarrier();
}
