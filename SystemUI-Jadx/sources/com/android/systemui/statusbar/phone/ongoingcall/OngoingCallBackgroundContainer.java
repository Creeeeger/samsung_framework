package com.android.systemui.statusbar.phone.ongoingcall;

import android.content.Context;
import android.util.AttributeSet;
import com.android.systemui.animation.view.LaunchableLinearLayout;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OngoingCallBackgroundContainer extends LaunchableLinearLayout {
    public Function0 maxHeightFetcher;

    public OngoingCallBackgroundContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        Integer num;
        int measuredHeight;
        super.onMeasure(i, i2);
        Function0 function0 = this.maxHeightFetcher;
        if (function0 != null) {
            num = (Integer) function0.invoke();
        } else {
            num = null;
        }
        if (num != null) {
            measuredHeight = getMeasuredHeight();
            int intValue = num.intValue() - 1;
            if (measuredHeight > intValue) {
                measuredHeight = intValue;
            }
        } else {
            measuredHeight = getMeasuredHeight();
        }
        setMeasuredDimension(getMeasuredWidth(), measuredHeight);
    }
}
