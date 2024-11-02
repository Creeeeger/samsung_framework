package com.android.systemui.util;

import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.shared.shadow.DoubleShadowTextView;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SafeMarqueeShadowTextView extends DoubleShadowTextView {
    public boolean safelyIgnoreLayout;

    public SafeMarqueeShadowTextView(Context context) {
        this(context, null, 0, 0, 14, null);
    }

    @Override // android.view.View
    public final void requestLayout() {
        if (this.safelyIgnoreLayout) {
            return;
        }
        super.requestLayout();
    }

    public final void startMarquee() {
        boolean z;
        boolean z2 = this.safelyIgnoreLayout;
        if (getLayoutParams().width != -2) {
            z = true;
        } else {
            z = false;
        }
        this.safelyIgnoreLayout = z;
        super.startMarquee();
        this.safelyIgnoreLayout = z2;
    }

    public final void stopMarquee() {
        boolean z;
        boolean z2 = this.safelyIgnoreLayout;
        if (getLayoutParams().width != -2) {
            z = true;
        } else {
            z = false;
        }
        this.safelyIgnoreLayout = z;
        super.stopMarquee();
        this.safelyIgnoreLayout = z2;
    }

    public SafeMarqueeShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
    }

    public SafeMarqueeShadowTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0, 8, null);
    }

    public /* synthetic */ SafeMarqueeShadowTextView(Context context, AttributeSet attributeSet, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2);
    }

    public SafeMarqueeShadowTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
