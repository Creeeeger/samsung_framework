package com.android.systemui.pluginlock.model;

import com.google.gson.annotations.SerializedName;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CustomShortcut {

    @SerializedName("direction")
    private Integer mDirection;

    @SerializedName("icon_size")
    private Integer mIconSize;

    @SerializedName("position")
    private Integer mPosition;

    @SerializedName("shortcut_info")
    private String mShortCutInfo;

    @SerializedName("margin_bottom")
    private Integer mPaddingBottom = -1;

    @SerializedName("margin_side")
    private Integer mPaddingSide = -1;

    @SerializedName("margin_bottom_land")
    private Integer mPaddingBottomLand = -1;

    @SerializedName("margin_side_land")
    private Integer mPaddingSideLand = -1;
}
