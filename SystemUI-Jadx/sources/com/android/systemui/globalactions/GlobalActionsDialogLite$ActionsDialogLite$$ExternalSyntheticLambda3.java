package com.android.systemui.globalactions;

import com.android.systemui.globalactions.GlobalActionsDialogLite;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GlobalActionsDialogLite.ActionsDialogLite f$0;

    public /* synthetic */ GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda3(GlobalActionsDialogLite.ActionsDialogLite actionsDialogLite, int i) {
        this.$r8$classId = i;
        this.f$0 = actionsDialogLite;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                GlobalActionsDialogLite.ActionsDialogLite actionsDialogLite = this.f$0;
                int i = GlobalActionsDialogLite.ActionsDialogLite.$r8$clinit;
                actionsDialogLite.getClass();
                actionsDialogLite.startAnimation(new GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda3(actionsDialogLite, 1), false);
                return;
            default:
                GlobalActionsDialogLite.ActionsDialogLite actionsDialogLite2 = this.f$0;
                int i2 = GlobalActionsDialogLite.ActionsDialogLite.$r8$clinit;
                actionsDialogLite2.setDismissOverride(null);
                actionsDialogLite2.hide();
                actionsDialogLite2.dismiss();
                return;
        }
    }
}
