package com.android.systemui.statusbar.model;

import android.graphics.drawable.Drawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StringDrawableContainer {
    public final Drawable mDrawable;
    public final String mDrawableDescription;
    public final String mString;

    public StringDrawableContainer(String str, Drawable drawable, String str2) {
        this.mString = str;
        this.mDrawable = drawable;
        this.mDrawableDescription = str2;
    }
}
