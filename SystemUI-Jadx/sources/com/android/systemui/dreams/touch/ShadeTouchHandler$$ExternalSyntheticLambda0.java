package com.android.systemui.dreams.touch;

import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class ShadeTouchHandler$$ExternalSyntheticLambda0 implements Function {
    public final /* synthetic */ int $r8$classId;

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return Boolean.valueOf(((CentralSurfacesImpl) ((CentralSurfaces) obj)).mBouncerShowing);
            default:
                return ((CentralSurfacesImpl) ((CentralSurfaces) obj)).getShadeViewController();
        }
    }
}
