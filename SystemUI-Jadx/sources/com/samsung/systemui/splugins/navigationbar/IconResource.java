package com.samsung.systemui.splugins.navigationbar;

import android.graphics.drawable.Drawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class IconResource {
    public Drawable mDarkDrawable;
    public IconType mIconType;
    public Drawable mLightDrawable;
    public boolean mNeedRtlCheck;

    public IconResource(IconType iconType, Drawable drawable, Drawable drawable2, boolean z) {
        this.mIconType = iconType;
        this.mLightDrawable = drawable;
        this.mDarkDrawable = drawable2;
        this.mNeedRtlCheck = z;
    }
}
