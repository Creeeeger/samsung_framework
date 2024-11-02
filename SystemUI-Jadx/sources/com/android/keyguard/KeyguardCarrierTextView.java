package com.android.keyguard;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.systemui.Dependency;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardCarrierTextView extends FrameLayout {
    public KeyguardCarrierTextView(Context context) {
        this(context, null, 0);
    }

    public final void updateVisibility() {
        int i;
        if (((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isForcedLock()) {
            i = 0;
        } else {
            i = 8;
        }
        setVisibility(i);
    }

    public KeyguardCarrierTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyguardCarrierTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
