package com.android.systemui.statusbar.policy;

import com.android.systemui.QpRune;
import com.android.systemui.statusbar.policy.QSClockBellTower;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSClockBellTower$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ QSClockBellTower$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((QSClockBellTower) this.f$0).ringBellOfTower();
                return;
            case 1:
                ((QSClockBellTower) this.f$0).ringBellOfTower();
                return;
            case 2:
                ((QSClockBellTower) this.f$0).ringBellOfTower(false);
                return;
            default:
                QSClockBellTower.TimeBroadcastReceiver timeBroadcastReceiver = (QSClockBellTower.TimeBroadcastReceiver) this.f$0;
                Locale locale = timeBroadcastReceiver.this$0.mContext.getResources().getConfiguration().getLocales().get(0);
                if (!locale.equals(timeBroadcastReceiver.this$0.mLocale)) {
                    QSClockBellTower qSClockBellTower = timeBroadcastReceiver.this$0;
                    qSClockBellTower.mLocale = locale;
                    qSClockBellTower.mClockFormatString = "";
                    qSClockBellTower.mDateStringFormat = null;
                    qSClockBellTower.mShortenDateStringFormat = null;
                    qSClockBellTower.mQuickStarDateStringFormat = null;
                    if (QpRune.QUICK_STYLE_ALTERNATE_CALENDAR) {
                        qSClockBellTower.mAlternateCalendarUtil.updateAlternateCalendar("android.intent.action.LOCALE_CHANGED");
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
