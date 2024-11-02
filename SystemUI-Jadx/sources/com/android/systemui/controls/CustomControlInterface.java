package com.android.systemui.controls;

import android.content.res.ColorStateList;
import android.graphics.drawable.Icon;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface CustomControlInterface {
    ColorStateList getCustomColor();

    int getCustomIconAnimationEndFrame();

    String getCustomIconAnimationJson();

    String getCustomIconAnimationJsonCache();

    int getCustomIconAnimationRepeatCount();

    int getCustomIconAnimationStartFrame();

    Icon getOverlayCustomIcon();

    boolean getUseCustomIconWithoutPadding();

    boolean getUseCustomIconWithoutShadowBg();
}
