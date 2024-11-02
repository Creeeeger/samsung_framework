package com.android.systemui.globalactions;

import com.android.systemui.globalactions.GlobalActionsDialogLite;
import com.android.systemui.settings.UserTrackerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GlobalActionsDialogLite.SinglePressAction f$0;

    public /* synthetic */ GlobalActionsDialogLite$LogoutAction$$ExternalSyntheticLambda0(GlobalActionsDialogLite.SinglePressAction singlePressAction, int i) {
        this.$r8$classId = i;
        this.f$0 = singlePressAction;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((GlobalActionsDialogLite.LogoutAction) this.f$0).this$0.mDevicePolicyManager.logoutUser();
                return;
            default:
                GlobalActionsDialogLite globalActionsDialogLite = ((GlobalActionsDialogLite.LockDownAction) this.f$0).this$0;
                int i = ((UserTrackerImpl) globalActionsDialogLite.mUserTracker).getUserInfo().id;
                for (int i2 : globalActionsDialogLite.mUserManager.getEnabledProfileIds(i)) {
                    if (i2 != i) {
                        globalActionsDialogLite.mTrustManager.setDeviceLockedForUser(i2, true);
                    }
                }
                return;
        }
    }
}
