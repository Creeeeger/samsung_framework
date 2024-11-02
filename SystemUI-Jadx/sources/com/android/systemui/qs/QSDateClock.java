package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.statusbar.policy.QSClockPanelView;
import com.android.systemui.statusbar.policy.QSDate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSDateClock extends LinearLayout {
    public QSClockPanelView mClock;
    public final Context mContext;
    public QSDate mDate;
    public int mOldOrientation;

    public QSDateClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mOldOrientation != configuration.orientation) {
            updateVisibility();
            this.mOldOrientation = configuration.orientation;
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mClock = (QSClockPanelView) findViewById(R.id.panel_clock);
        this.mDate = (QSDate) findViewById(R.id.panel_date);
        updateVisibility();
        int color = this.mContext.getColor(R.color.sec_qs_header_tint_color);
        this.mClock.setTextColor(color);
        this.mDate.setTextColor(color);
    }

    public final void updateVisibility() {
        boolean z;
        if (getResources().getConfiguration().orientation == 2) {
            z = true;
        } else {
            z = false;
        }
        if (!QpRune.QUICK_TABLET && z) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }
}
