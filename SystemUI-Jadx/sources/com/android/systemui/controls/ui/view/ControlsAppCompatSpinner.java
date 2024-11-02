package com.android.systemui.controls.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.widget.AppCompatSpinner;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsAppCompatSpinner extends AppCompatSpinner {
    public final String description;

    public ControlsAppCompatSpinner(Context context) {
        super(context);
        this.description = getContext().getResources().getString(R.string.controls_change_app);
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        CharSequence contentDescription = accessibilityNodeInfo.getContentDescription();
        accessibilityNodeInfo.setContentDescription(((Object) contentDescription) + ", " + this.description);
    }

    public ControlsAppCompatSpinner(Context context, int i) {
        super(context, i);
        this.description = getContext().getResources().getString(R.string.controls_change_app);
    }

    public ControlsAppCompatSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.description = getContext().getResources().getString(R.string.controls_change_app);
    }

    public ControlsAppCompatSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.description = getContext().getResources().getString(R.string.controls_change_app);
    }

    public ControlsAppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.description = getContext().getResources().getString(R.string.controls_change_app);
    }

    public ControlsAppCompatSpinner(Context context, AttributeSet attributeSet, int i, int i2, Resources.Theme theme) {
        super(context, attributeSet, i, i2, theme);
        this.description = getContext().getResources().getString(R.string.controls_change_app);
    }
}
