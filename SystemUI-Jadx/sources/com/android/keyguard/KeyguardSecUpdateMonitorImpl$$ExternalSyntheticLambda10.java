package com.android.keyguard;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10(boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((KeyguardUpdateMonitorCallback) obj).onKeyguardVisibilityChanged(this.f$0);
                return;
            case 1:
                ((KeyguardUpdateMonitorCallback) obj).getClass();
                return;
            case 2:
                ((KeyguardUpdateMonitorCallback) obj).onTableModeChanged(this.f$0);
                return;
            default:
                ((KeyguardUpdateMonitorCallback) obj).onPrimaryBouncerVisibilityChanged(this.f$0);
                return;
        }
    }
}
