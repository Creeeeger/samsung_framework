package com.android.wm.shell.compatui;

import android.widget.FrameLayout;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ReachabilityEduLayout$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                int i = ReachabilityEduLayout.$r8$clinit;
                return Integer.valueOf(((FrameLayout.LayoutParams) obj).topMargin);
            case 1:
                int i2 = ReachabilityEduLayout.$r8$clinit;
                return Integer.valueOf(((FrameLayout.LayoutParams) obj).bottomMargin);
            case 2:
                int i3 = ReachabilityEduLayout.$r8$clinit;
                return Integer.valueOf(((FrameLayout.LayoutParams) obj).leftMargin);
            default:
                int i4 = ReachabilityEduLayout.$r8$clinit;
                return Integer.valueOf(((FrameLayout.LayoutParams) obj).rightMargin);
        }
    }
}
