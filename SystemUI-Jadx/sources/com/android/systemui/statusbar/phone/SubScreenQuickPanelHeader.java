package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewStub;
import android.widget.LinearLayout;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.android.systemui.battery.BatteryMeterView;
import com.android.systemui.statusbar.policy.NetspeedView;
import com.android.systemui.statusbar.policy.QSClockHeaderView;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubScreenQuickPanelHeader extends LinearLayout {
    public SubScreenQuickPanelHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        BatteryMeterView batteryMeterView = (BatteryMeterView) findViewById(R.id.batteryRemainingIcon);
        QSClockHeaderView qSClockHeaderView = (QSClockHeaderView) findViewById(R.id.header_clock);
        if (BasicRune.STATUS_REAL_TIME_NETWORK_SPEED) {
            ViewStub viewStub = (ViewStub) findViewById(R.id.quick_qs_network_speed_viewstub);
            if (viewStub != null) {
                viewStub.inflate();
            }
            ((NetspeedView) findViewById(R.id.networkSpeed)).onDarkChanged(CollectionsKt__CollectionsKt.arrayListOf(new Rect(0, 0, 0, 0)), 0.0f, getContext().getColor(R.color.sub_screen_quick_panel_header_icon_color));
        }
        batteryMeterView.setPercentShowMode(3);
        ArrayList arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(new Rect(0, 0, 0, 0));
        int color = getContext().getColor(R.color.sub_screen_quick_panel_header_icon_color);
        qSClockHeaderView.setTextColor(color);
        batteryMeterView.onDarkChanged(arrayListOf, 0.0f, color);
    }
}
