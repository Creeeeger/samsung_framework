package com.android.systemui.media;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SecMediaHost$$ExternalSyntheticLambda13 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;

    public /* synthetic */ SecMediaHost$$ExternalSyntheticLambda13(boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SecMediaControlPanel secMediaControlPanel = (SecMediaControlPanel) obj;
                secMediaControlPanel.mFullyExpanded = this.f$0;
                secMediaControlPanel.updateActionButtonEnabled(secMediaControlPanel.mFraction);
                secMediaControlPanel.updateSeekBarVisibility();
                return;
            default:
                ((SecMediaControlPanel) obj).setListening(this.f$0);
                return;
        }
    }
}
