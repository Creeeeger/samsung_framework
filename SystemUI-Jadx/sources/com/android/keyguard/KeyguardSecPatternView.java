package com.android.keyguard;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.samsung.android.tsp.SemTspStateManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardSecPatternView extends KeyguardPatternView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mAttached;

    public KeyguardSecPatternView(Context context) {
        this(context, null);
    }

    @Override // com.android.keyguard.KeyguardPatternView, com.android.keyguard.KeyguardInputView
    public final CharSequence getTitle() {
        return null;
    }

    @Override // com.android.keyguard.KeyguardPatternView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (LsRune.SECURITY_DEAD_ZONE) {
            this.mAttached = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (LsRune.SECURITY_DEAD_ZONE) {
            this.mAttached = false;
        }
    }

    @Override // com.android.keyguard.KeyguardPatternView, com.android.keyguard.KeyguardInputView, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ((LinearLayout) findViewById(R.id.split_touch_top_container)).setOnTouchListener(new KeyguardSecPatternView$$ExternalSyntheticLambda0());
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (LsRune.SECURITY_DEAD_ZONE && this.mAttached) {
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m("onVisibilityChanged() visibility : ", i, "KeyguardSecPatternView");
            if (i == 0) {
                Bundle bundle = new Bundle();
                bundle.putString("deadzone_v2", "3.33%,3.33%,0%");
                SemTspStateManager.setDeadZone(getRootView(), bundle);
            } else if (!LsRune.SECURITY_BOUNCER_WINDOW) {
                SemTspStateManager.clearDeadZone(getRootView());
            }
        }
    }

    public KeyguardSecPatternView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
