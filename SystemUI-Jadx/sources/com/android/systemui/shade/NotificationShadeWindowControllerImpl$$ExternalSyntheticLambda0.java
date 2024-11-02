package com.android.systemui.shade;

import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.Log;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SecNotificationShadeWindowControllerHelperImpl f$0;

    public /* synthetic */ NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda0(SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = secNotificationShadeWindowControllerHelperImpl;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = this.f$0;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                if (secNotificationShadeWindowControllerHelperImpl.getCurrentState().keyguardFadingAway != booleanValue) {
                    Log.d(SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG, KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("keyguardFadingAway ", booleanValue));
                    return;
                }
                return;
            default:
                SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl2 = this.f$0;
                boolean booleanValue2 = ((Boolean) obj).booleanValue();
                if (secNotificationShadeWindowControllerHelperImpl2.getCurrentState().keyguardGoingAway != booleanValue2) {
                    Log.d(SecNotificationShadeWindowControllerHelperImpl.DEBUG_TAG, KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("keyguardGoingAway ", booleanValue2));
                    return;
                }
                return;
        }
    }
}
