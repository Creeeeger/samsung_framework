package com.android.systemui.statusbar.pipeline.shared.ui.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.systemui.R;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.BaseStatusBarFrameLayout;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.pipeline.shared.ui.binder.ModernStatusBarViewBinding;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ModernStatusBarView extends BaseStatusBarFrameLayout {
    public ModernStatusBarViewBinding binding;
    public int iconVisibleState;
    public String slot;

    public ModernStatusBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 4, null);
        this.iconVisibleState = 2;
    }

    public final ModernStatusBarViewBinding getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core() {
        ModernStatusBarViewBinding modernStatusBarViewBinding = this.binding;
        if (modernStatusBarViewBinding != null) {
            return modernStatusBarViewBinding;
        }
        return null;
    }

    @Override // android.view.View
    public final void getDrawingRect(Rect rect) {
        super.getDrawingRect(rect);
        int translationX = (int) getTranslationX();
        int translationY = (int) getTranslationY();
        rect.left += translationX;
        rect.right += translationX;
        rect.top += translationY;
        rect.bottom += translationY;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final String getSlot() {
        String str = this.slot;
        if (str == null) {
            return null;
        }
        return str;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final int getVisibleState() {
        return this.iconVisibleState;
    }

    public void initView(String str, Function0 function0) {
        this.slot = str;
        Context context = ((FrameLayout) this).mContext;
        String str2 = this.slot;
        if (str2 == null) {
            str2 = null;
        }
        StatusBarIconView statusBarIconView = new StatusBarIconView(context, str2, null);
        statusBarIconView.setId(R.id.status_bar_dot);
        statusBarIconView.setVisibleState(1);
        int dimensionPixelSize = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.status_bar_icon_size);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
        layoutParams.gravity = 8388627;
        addView(statusBarIconView, layoutParams);
        this.binding = (ModernStatusBarViewBinding) function0.invoke();
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final boolean isIconVisible() {
        return getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().getShouldIconBeVisible();
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        int tint = DarkIconDispatcher.getTint(arrayList, this, i);
        getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().onIconTintChanged(tint);
        getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().onDecorTintChanged(tint);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setDecorColor(int i) {
        getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().onDecorTintChanged(i);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setStaticDrawableColor(int i) {
        getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().onIconTintChanged(i);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setVisibleState(int i, boolean z) {
        if (this.iconVisibleState != i) {
            this.iconVisibleState = i;
            getBinding$frameworks__base__packages__SystemUI__android_common__SystemUI_core().onVisibilityStateChanged(i);
        }
    }
}
