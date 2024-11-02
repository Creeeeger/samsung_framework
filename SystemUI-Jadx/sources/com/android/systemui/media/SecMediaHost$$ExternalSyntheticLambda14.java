package com.android.systemui.media;

import android.view.View;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class SecMediaHost$$ExternalSyntheticLambda14 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SecMediaHost$$ExternalSyntheticLambda14(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((SecMediaControlPanel) obj).updateResources();
                return;
            case 1:
                QSMediaCornerRoundedView qSMediaCornerRoundedView = (QSMediaCornerRoundedView) ((View) obj);
                qSMediaCornerRoundedView.mIsCornerRound = false;
                qSMediaCornerRoundedView.invalidate();
                return;
            default:
                SecMediaControlPanel secMediaControlPanel = (SecMediaControlPanel) obj;
                if (secMediaControlPanel.mType.getSupportCapsule() && secMediaControlPanel.mIsPlayerCoverPlayed) {
                    secMediaControlPanel.mIsPlayerCoverPlayed = false;
                    return;
                }
                return;
        }
    }
}
