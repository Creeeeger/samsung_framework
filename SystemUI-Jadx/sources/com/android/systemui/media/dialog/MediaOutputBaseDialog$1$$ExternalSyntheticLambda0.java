package com.android.systemui.media.dialog;

import com.android.systemui.media.dialog.MediaOutputBaseDialog;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class MediaOutputBaseDialog$1$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaOutputBaseDialog.AnonymousClass1 f$0;

    public /* synthetic */ MediaOutputBaseDialog$1$$ExternalSyntheticLambda0(MediaOutputBaseDialog.AnonymousClass1 anonymousClass1, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.this$0.handleLeBroadcastStopped();
                return;
            case 1:
                this.f$0.this$0.handleLeBroadcastStarted();
                return;
            case 2:
                this.f$0.this$0.handleLeBroadcastStartFailed();
                return;
            case 3:
                this.f$0.this$0.handleLeBroadcastStopFailed();
                return;
            case 4:
                this.f$0.this$0.handleLeBroadcastUpdateFailed();
                return;
            case 5:
                this.f$0.this$0.handleLeBroadcastUpdated();
                return;
            default:
                this.f$0.this$0.handleLeBroadcastMetadataChanged();
                return;
        }
    }
}
