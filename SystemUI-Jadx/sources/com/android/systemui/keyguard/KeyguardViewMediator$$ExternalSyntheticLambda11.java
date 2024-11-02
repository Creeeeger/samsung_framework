package com.android.systemui.keyguard;

import com.android.keyguard.KeyguardDisplayManager;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardViewMediator$$ExternalSyntheticLambda11 implements BiConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardViewMediatorHelperImpl f$0;

    public /* synthetic */ KeyguardViewMediator$$ExternalSyntheticLambda11(KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardViewMediatorHelperImpl;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.enableLooperLogController(((Integer) obj).intValue(), ((Long) obj2).longValue());
                return;
            default:
                KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.f$0;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                boolean booleanValue2 = ((Boolean) obj2).booleanValue();
                keyguardViewMediatorHelperImpl.getClass();
                if (!booleanValue && booleanValue2) {
                    KeyguardUnlockInfo.reset();
                }
                KeyguardDumpLog.state$default(KeyguardDumpLog.INSTANCE, 4, booleanValue, false, false, 0, 0, 60);
                ((KeyguardViewMediator) keyguardViewMediatorHelperImpl.viewMediatorLazy.get()).userActivity();
                String str = LsRune.VALUE_CONFIG_CARRIER_TEXT_POLICY;
                if (booleanValue2) {
                    boolean z2 = LsRune.KEYGUARD_SUB_DISPLAY_COVER;
                    KeyguardDisplayManager keyguardDisplayManager = keyguardViewMediatorHelperImpl.keyguardDisplayManager;
                    if ((!z2 || keyguardViewMediatorHelperImpl.foldControllerImpl.isFoldOpened()) && booleanValue) {
                        keyguardDisplayManager.getClass();
                        KeyguardVisibilityMonitor keyguardVisibilityMonitor = (KeyguardVisibilityMonitor) Dependency.get(KeyguardVisibilityMonitor.class);
                        if (keyguardVisibilityMonitor.curVisibility == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            keyguardVisibilityMonitor.addVisibilityChangedListener(keyguardDisplayManager.mVisibilityListener);
                            return;
                        } else {
                            keyguardDisplayManager.hide();
                            return;
                        }
                    }
                    keyguardDisplayManager.show();
                    return;
                }
                return;
        }
    }
}
