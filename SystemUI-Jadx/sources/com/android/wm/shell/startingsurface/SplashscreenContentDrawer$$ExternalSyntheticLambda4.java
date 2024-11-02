package com.android.wm.shell.startingsurface;

import android.content.res.TypedArray;
import java.util.function.UnaryOperator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplashscreenContentDrawer$$ExternalSyntheticLambda4 implements UnaryOperator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TypedArray f$0;

    public /* synthetic */ SplashscreenContentDrawer$$ExternalSyntheticLambda4(TypedArray typedArray, int i) {
        this.$r8$classId = i;
        this.f$0 = typedArray;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return this.f$0.getDrawable(56);
            case 1:
                return Integer.valueOf(this.f$0.getColor(56, ((Integer) obj).intValue()));
            case 2:
                return this.f$0.getDrawable(57);
            case 3:
                return this.f$0.getDrawable(59);
            case 4:
                return Integer.valueOf(this.f$0.getColor(60, ((Integer) obj).intValue()));
            default:
                return Integer.valueOf(this.f$0.getResourceId(47, ((Integer) obj).intValue()));
        }
    }
}
