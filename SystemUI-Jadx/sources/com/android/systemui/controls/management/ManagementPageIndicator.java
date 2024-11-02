package com.android.systemui.controls.management;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.systemui.qs.PageIndicator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ManagementPageIndicator extends PageIndicator {
    public Function1 visibilityListener;

    public ManagementPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.visibilityListener = new Function1() { // from class: com.android.systemui.controls.management.ManagementPageIndicator$visibilityListener$1
            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                ((Number) obj).intValue();
                return Unit.INSTANCE;
            }
        };
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (Intrinsics.areEqual(view, this)) {
            this.visibilityListener.invoke(Integer.valueOf(i));
        }
    }

    @Override // com.android.systemui.qs.PageIndicator
    public final void setLocation(float f) {
        if (getLayoutDirection() == 1) {
            super.setLocation((getChildCount() - 1) - f);
        } else {
            super.setLocation(f);
        }
    }
}
