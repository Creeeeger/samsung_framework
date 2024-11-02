package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.util.AttributeSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSClockHeaderView extends QSClock {
    public QSClockHeaderView(Context context) {
        super(context);
    }

    @Override // com.android.systemui.statusbar.policy.QSClock, com.android.systemui.statusbar.policy.QSClockBellTower.TimeAudience
    public final void notifyTimeChanged(QSClockBellSound qSClockBellSound) {
        if (qSClockBellSound.ShowSecondsClock) {
            if (qSClockBellSound.Demo) {
                return;
            }
            setText(qSClockBellSound.TimeTextWithSeconds);
            setContentDescription(qSClockBellSound.TimeContentDescription);
            return;
        }
        super.notifyTimeChanged(qSClockBellSound);
        setText(getText());
    }

    public QSClockHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public QSClockHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
