package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecQSSwitchPreference extends LinearLayout {
    public SecQSSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static SecQSSwitchPreference inflateSwitch(Context context, ViewGroup viewGroup) {
        boolean z;
        Configuration configuration = context.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        if ((i <= 320 && configuration.fontScale >= 1.1f) || (i < 411 && configuration.fontScale >= 1.3f)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return (SecQSSwitchPreference) LayoutInflater.from(context).inflate(R.layout.sec_qs_detail_item_summary_switch_large, viewGroup, false);
        }
        return (SecQSSwitchPreference) LayoutInflater.from(context).inflate(R.layout.sec_qs_detail_item_summary_switch, viewGroup, false);
    }

    public SecQSSwitchPreference(Context context) {
        super(context);
    }
}
