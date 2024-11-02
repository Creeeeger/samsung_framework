package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.util.AttributeSet;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSShortenDate extends QSDate {
    public final Context mContext;

    public QSShortenDate(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
    }

    @Override // com.android.systemui.statusbar.policy.QSDate, com.android.systemui.statusbar.policy.QSClockBellTower.TimeAudience
    public final void notifyTimeChanged(QSClockBellSound qSClockBellSound) {
        String str;
        boolean z = false;
        Locale locale = this.mContext.getResources().getConfiguration().getLocales().get(0);
        if (locale == null || !locale.getLanguage().equals("ko")) {
            z = true;
        }
        if (z) {
            str = qSClockBellSound.ShortDateText;
        } else {
            str = qSClockBellSound.DateText;
        }
        if (!str.equals(this.mLastText)) {
            setText(str);
            this.mLastText = str;
        }
    }
}
