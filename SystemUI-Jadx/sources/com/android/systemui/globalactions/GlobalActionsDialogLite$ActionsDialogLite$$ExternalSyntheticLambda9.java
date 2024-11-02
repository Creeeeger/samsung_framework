package com.android.systemui.globalactions;

import com.android.systemui.globalactions.GlobalActionsDialogLite;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda9 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda9(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                int i = GlobalActionsDialogLite.ActionsDialogLite.$r8$clinit;
                ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandSettingsPanel(null);
                return;
            case 1:
                int i2 = GlobalActionsDialogLite.ActionsDialogLite.$r8$clinit;
                ((CentralSurfacesImpl) ((CentralSurfaces) obj)).mCommandQueueCallbacks.animateExpandNotificationsPanel();
                return;
            default:
                ((CentralSurfacesImpl) ((CentralSurfaces) obj)).collapseShade();
                return;
        }
    }
}
