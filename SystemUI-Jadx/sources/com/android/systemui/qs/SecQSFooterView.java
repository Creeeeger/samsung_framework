package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.qs.TouchAnimator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecQSFooterView extends FrameLayout {
    public PageIndicator mPageIndicator;

    public SecQSFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateResources();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mPageIndicator = (PageIndicator) findViewById(R.id.footer_page_indicator);
        updateResources();
        setImportantForAccessibility(1);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_EXPAND);
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        return super.performAccessibilityAction(i, bundle);
    }

    public final void updateResources() {
        float f;
        TouchAnimator.Builder builder = new TouchAnimator.Builder();
        builder.addFloat(this.mPageIndicator, "alpha", 0.0f, 1.0f);
        builder.mStartDelay = 0.9f;
        builder.build();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        Context context = ((FrameLayout) this).mContext;
        float availableDisplayHeight = secQSPanelResourcePicker.getAvailableDisplayHeight(context);
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            f = resources.getFloat(R.dimen.qs_qs_footer_height_ratio_tablet);
        } else {
            f = resources.getFloat(R.dimen.qs_qs_footer_height_ratio);
        }
        marginLayoutParams.height = Math.max((int) (f * availableDisplayHeight), resources.getDimensionPixelSize(R.dimen.sec_qs_page_indicator_container_height));
        setLayoutParams(marginLayoutParams);
    }
}
