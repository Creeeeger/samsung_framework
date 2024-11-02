package com.android.systemui.accessibility.floatingmenu;

import android.content.Context;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DockTooltipView extends BaseTooltipView {
    public final AccessibilityFloatingMenuView mAnchorView;

    public DockTooltipView(Context context, AccessibilityFloatingMenuView accessibilityFloatingMenuView) {
        super(context, accessibilityFloatingMenuView);
        this.mAnchorView = accessibilityFloatingMenuView;
        this.mTextView.setText(getContext().getText(R.string.accessibility_floating_button_docking_tooltip));
    }

    @Override // com.android.systemui.accessibility.floatingmenu.BaseTooltipView
    public final void hide() {
        super.hide();
        AccessibilityFloatingMenuView accessibilityFloatingMenuView = this.mAnchorView;
        accessibilityFloatingMenuView.mListView.clearAnimation();
        accessibilityFloatingMenuView.fadeOut();
    }
}
