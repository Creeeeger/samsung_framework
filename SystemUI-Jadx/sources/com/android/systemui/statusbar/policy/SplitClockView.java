package com.android.systemui.statusbar.policy;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.UserHandle;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextClock;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SplitClockView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public TextClock mAmPmView;
    public final AnonymousClass1 mIntentReceiver;
    public TextClock mTimeView;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.policy.SplitClockView$1] */
    public SplitClockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.policy.SplitClockView.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action) || "android.intent.action.LOCALE_CHANGED".equals(action) || "android.intent.action.CONFIGURATION_CHANGED".equals(action) || "android.intent.action.USER_SWITCHED".equals(action)) {
                    SplitClockView splitClockView = SplitClockView.this;
                    int i = SplitClockView.$r8$clinit;
                    splitClockView.updatePatterns();
                }
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        getContext().registerReceiverAsUser(this.mIntentReceiver, UserHandle.ALL, intentFilter, null, null);
        updatePatterns();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().unregisterReceiver(this.mIntentReceiver);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mTimeView = (TextClock) findViewById(R.id.time_view);
        this.mAmPmView = (TextClock) findViewById(R.id.am_pm_view);
        this.mTimeView.setShowCurrentUserTime(true);
        this.mAmPmView.setShowCurrentUserTime(true);
    }

    public final void updatePatterns() {
        int i;
        String substring;
        String substring2;
        boolean z;
        String timeFormatString = DateFormat.getTimeFormatString(getContext(), ActivityManager.getCurrentUser());
        int length = timeFormatString.length() - 1;
        int i2 = length;
        boolean z2 = false;
        while (true) {
            if (i2 >= 0) {
                char charAt = timeFormatString.charAt(i2);
                if (charAt == 'a') {
                    z = true;
                } else {
                    z = false;
                }
                boolean isWhitespace = Character.isWhitespace(charAt);
                if (z) {
                    z2 = true;
                }
                if (!z && !isWhitespace) {
                    if (i2 != length && z2) {
                        i = i2 + 1;
                    }
                } else {
                    i2--;
                }
            } else if (z2) {
                i = 0;
            }
        }
        i = -1;
        if (i == -1) {
            substring2 = "";
            substring = timeFormatString;
        } else {
            substring = timeFormatString.substring(0, i);
            substring2 = timeFormatString.substring(i);
        }
        this.mTimeView.setFormat12Hour(substring);
        this.mTimeView.setFormat24Hour(substring);
        this.mTimeView.setContentDescriptionFormat12Hour(timeFormatString);
        this.mTimeView.setContentDescriptionFormat24Hour(timeFormatString);
        this.mAmPmView.setFormat12Hour(substring2);
        this.mAmPmView.setFormat24Hour(substring2);
    }
}
