package com.android.systemui.util;

import android.content.Context;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Choreographer;
import androidx.constraintlayout.motion.widget.MotionLayout;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NoRemeasureMotionLayout extends MotionLayout {
    public boolean disabled;
    public Long lastFrame;
    public Integer lastHeightSpec;
    public Integer lastWidthSpec;

    public NoRemeasureMotionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout, androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        Integer num;
        Long l;
        Integer num2 = this.lastWidthSpec;
        Long l2 = null;
        if (num2 != null && num2.intValue() == i && (num = this.lastHeightSpec) != null && num.intValue() == i2) {
            Choreographer mainThreadInstance = Choreographer.getMainThreadInstance();
            if (mainThreadInstance != null) {
                l = Long.valueOf(mainThreadInstance.getFrameTime());
            } else {
                l = null;
            }
            if (Intrinsics.areEqual(l, this.lastFrame)) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
        }
        if (Trace.isTagEnabled(4096L)) {
            Trace.traceBegin(4096L, "NoRemeasureMotionLayout - measure");
            try {
                super.onMeasure(i, i2);
                this.lastWidthSpec = Integer.valueOf(i);
                this.lastHeightSpec = Integer.valueOf(i2);
                Choreographer mainThreadInstance2 = Choreographer.getMainThreadInstance();
                if (mainThreadInstance2 != null) {
                    l2 = Long.valueOf(mainThreadInstance2.getFrameTime());
                }
                this.lastFrame = l2;
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        super.onMeasure(i, i2);
        this.lastWidthSpec = Integer.valueOf(i);
        this.lastHeightSpec = Integer.valueOf(i2);
        Choreographer mainThreadInstance3 = Choreographer.getMainThreadInstance();
        if (mainThreadInstance3 != null) {
            l2 = Long.valueOf(mainThreadInstance3.getFrameTime());
        }
        this.lastFrame = l2;
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        if (this.disabled) {
            Log.d("NoRemeasureMotionLayout", "Ignore visibility update since it's disabled");
            super.setVisibility(8);
        } else {
            super.setVisibility(i);
        }
    }

    public /* synthetic */ NoRemeasureMotionLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public NoRemeasureMotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
