package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.systemui.QpRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class CapturedBlurContainer extends View {
    public CapturedBlurContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (QpRune.QUICK_PANEL_BLUR_MASSIVE) {
            setVisibility(0);
        }
    }
}
