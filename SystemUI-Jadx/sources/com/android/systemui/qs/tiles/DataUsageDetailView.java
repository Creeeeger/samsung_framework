package com.android.systemui.qs.tiles;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.systemui.FontSizeUtils;
import java.text.DecimalFormat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class DataUsageDetailView extends LinearLayout {
    public DataUsageDetailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new DecimalFormat("#.##");
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FontSizeUtils.updateFontSize(this, R.id.title, com.android.systemui.R.dimen.qs_data_usage_text_size);
        FontSizeUtils.updateFontSize(this, com.android.systemui.R.id.usage_text, com.android.systemui.R.dimen.qs_data_usage_usage_text_size);
        FontSizeUtils.updateFontSize(this, com.android.systemui.R.id.usage_carrier_text, com.android.systemui.R.dimen.qs_data_usage_text_size);
        FontSizeUtils.updateFontSize(this, com.android.systemui.R.id.usage_info_top_text, com.android.systemui.R.dimen.qs_data_usage_text_size);
        FontSizeUtils.updateFontSize(this, com.android.systemui.R.id.usage_period_text, com.android.systemui.R.dimen.qs_data_usage_text_size);
        FontSizeUtils.updateFontSize(this, com.android.systemui.R.id.usage_info_bottom_text, com.android.systemui.R.dimen.qs_data_usage_text_size);
    }
}
