package com.android.systemui.util;

import android.graphics.drawable.Drawable;
import com.android.systemui.shared.shadow.DoubleShadowIconDrawable;
import com.android.systemui.shared.shadow.DoubleShadowTextHelper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadowDelegateUtil {
    public static final ShadowDelegateUtil INSTANCE = new ShadowDelegateUtil();

    private ShadowDelegateUtil() {
    }

    public static DoubleShadowIconDrawable createShadowDrawable(Drawable drawable, float f, float f2, int i) {
        return new DoubleShadowIconDrawable(new DoubleShadowTextHelper.ShadowInfo(f, 0.0f, 0.0f, f2), new DoubleShadowTextHelper.ShadowInfo(f, 0.0f, 0.0f, 0.0f), drawable, i, 0);
    }
}
