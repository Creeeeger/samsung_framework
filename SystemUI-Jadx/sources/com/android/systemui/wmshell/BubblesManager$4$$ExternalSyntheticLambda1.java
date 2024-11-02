package com.android.systemui.wmshell;

import com.android.systemui.model.SysUiState;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.wmshell.BubblesManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubblesManager$4$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BubblesManager.AnonymousClass4 f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ BubblesManager$4$$ExternalSyntheticLambda1(BubblesManager.AnonymousClass4 anonymousClass4, SysUiState sysUiState, boolean z) {
        this.$r8$classId = 1;
        this.f$0 = anonymousClass4;
        this.f$2 = sysUiState;
        this.f$1 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                BubblesManager.AnonymousClass4 anonymousClass4 = this.f$0;
                boolean z = this.f$1;
                ((NotificationShadeWindowControllerImpl) BubblesManager.this.mNotificationShadeWindowController).setRequestTopUi((String) this.f$2, z);
                return;
            default:
                BubblesManager.AnonymousClass4 anonymousClass42 = this.f$0;
                SysUiState sysUiState = (SysUiState) this.f$2;
                boolean z2 = this.f$1;
                anonymousClass42.getClass();
                sysUiState.setFlag(16384L, z2);
                BubblesManager bubblesManager = BubblesManager.this;
                sysUiState.commitUpdate(bubblesManager.mContext.getDisplayId());
                if (!z2) {
                    sysUiState.setFlag(8388608L, false);
                    sysUiState.commitUpdate(bubblesManager.mContext.getDisplayId());
                    return;
                }
                return;
        }
    }

    public /* synthetic */ BubblesManager$4$$ExternalSyntheticLambda1(BubblesManager.AnonymousClass4 anonymousClass4, boolean z) {
        this.$r8$classId = 0;
        this.f$0 = anonymousClass4;
        this.f$1 = z;
        this.f$2 = "Bubbles";
    }
}
