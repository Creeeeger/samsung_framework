package com.android.keyguard;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.android.settingslib.Utils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class PinShapeNonHintingView extends LinearLayout {
    public final Rect mFirstChildVisibleRect;
    public int mPosition;
    public final ValueAnimator mValueAnimator;

    public PinShapeNonHintingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Utils.getColorAttr(R.^attr-private.pointerIconGrabbing, getContext()).getDefaultColor();
        this.mPosition = 0;
        this.mValueAnimator = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.mFirstChildVisibleRect = new Rect();
        new PinShapeAdapter(context);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getChildCount() > 0) {
            boolean z2 = false;
            View childAt = getChildAt(0);
            boolean localVisibleRect = childAt.getLocalVisibleRect(this.mFirstChildVisibleRect);
            Rect rect = this.mFirstChildVisibleRect;
            if (rect.left > 0 || rect.right < childAt.getWidth()) {
                z2 = true;
            }
            if (!localVisibleRect || z2) {
                setGravity(8388629);
                return;
            }
        }
        setGravity(17);
    }
}
