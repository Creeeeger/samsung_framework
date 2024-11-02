package com.android.systemui.statusbar.phone;

import android.os.RemoteException;
import com.android.systemui.shade.ShadeController;
import com.android.systemui.shade.ShadeControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StatusBarNotificationActivityStarter$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StatusBarNotificationActivityStarter$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                StatusBarNotificationActivityStarter statusBarNotificationActivityStarter = (StatusBarNotificationActivityStarter) this.f$0;
                statusBarNotificationActivityStarter.getClass();
                try {
                    statusBarNotificationActivityStarter.mDreamManager.awaken();
                    return;
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return;
                }
            default:
                ((ShadeControllerImpl) ((ShadeController) this.f$0)).collapseShade();
                return;
        }
    }
}
