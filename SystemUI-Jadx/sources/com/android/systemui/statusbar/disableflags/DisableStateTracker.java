package com.android.systemui.statusbar.disableflags;

import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.phone.KeyguardStatusBarViewController$$ExternalSyntheticLambda2;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DisableStateTracker implements CommandQueue.Callbacks {
    public final Callback callback;
    public Integer displayId;
    public boolean isDisabled;
    public final int mask1;
    public final int mask2;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callback {
    }

    public DisableStateTracker(int i, int i2, Callback callback) {
        this.mask1 = i;
        this.mask2 = i2;
        this.callback = callback;
    }

    @Override // com.android.systemui.statusbar.CommandQueue.Callbacks
    public final void disable(int i, int i2, int i3, boolean z) {
        boolean z2;
        Integer num = this.displayId;
        if (num != null && i == num.intValue()) {
            if ((this.mask1 & i2) == 0 && (this.mask2 & i3) == 0) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (this.isDisabled != z2) {
                this.isDisabled = z2;
                ((KeyguardStatusBarViewController$$ExternalSyntheticLambda2) this.callback).f$0.updateViewState();
            }
        }
    }
}
