package com.android.systemui.globalactions;

import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda8 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda8(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return Boolean.valueOf(((CentralSurfacesImpl) ((CentralSurfaces) obj)).isKeyguardShowing());
            case 1:
                return Integer.valueOf(((CentralSurfacesImpl) ((CentralSurfaces) obj)).mStatusBarWindowController.mBarHeight);
            default:
                return Integer.valueOf(((CentralSurfacesImpl) ((CentralSurfaces) obj)).mStatusBarWindowController.mBarHeight);
        }
    }
}
