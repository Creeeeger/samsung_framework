package com.android.wm.shell.windowdecor;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.graphics.ColorUtils;
import com.android.systemui.R;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.android.wm.shell.windowdecor.animation.CaptionButtonVisibility;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WindowMenuCaptionPresenter extends WindowMenuPresenter {
    public WindowMenuItemView mBackButton;
    public final ViewGroup[] mButtonSet;
    public ColorStateList mButtonTintColor;
    public final CaptionButtonVisibility[] mButtonVisibility;
    public WindowMenuDivider mDivider;
    public boolean mIsTaskFocused;
    public WindowMenuItemView mMoreButton;
    public View mMoveDisplayButtonSet;
    public boolean mShowPrimaryButtonSet;
    public AnonymousClass1 mUnpinAnimRunnable;
    public WindowMenuAnimationView mUnpinButton;

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d8  */
    /* JADX WARN: Type inference failed for: r0v28, types: [com.android.wm.shell.windowdecor.WindowMenuCaptionPresenter$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public WindowMenuCaptionPresenter(android.content.Context r19, android.app.ActivityManager.RunningTaskInfo r20, android.view.View r21, com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.CaptionTouchEventListener r22, float r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.WindowMenuCaptionPresenter.<init>(android.content.Context, android.app.ActivityManager$RunningTaskInfo, android.view.View, com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$CaptionTouchEventListener, float, boolean):void");
    }

    public static void measureChild(View view) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        view.forceLayout();
        view.measure(makeMeasureSpec, makeMeasureSpec);
    }

    public final void adjustOverflowButton(int i) {
        boolean z;
        View view;
        View view2;
        View view3;
        View view4;
        View view5;
        SparseArray sparseArray = this.mButtons;
        WindowMenuItemView windowMenuItemView = (WindowMenuItemView) sparseArray.get(R.id.close_window);
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.decor_button_padding_large_desktop);
        boolean z2 = this.mIsNewDexMode;
        if (windowMenuItemView != null && !z2 && windowMenuItemView.getPaddingEnd() != dimensionPixelSize) {
            windowMenuItemView.setPaddingRelative(windowMenuItemView.getPaddingStart(), windowMenuItemView.getPaddingTop(), dimensionPixelSize, windowMenuItemView.getPaddingBottom());
            windowMenuItemView.updateRippleBackground();
        }
        ViewGroup[] viewGroupArr = this.mButtonSet;
        int i2 = 0;
        viewGroupArr[0].setVisibility(0);
        viewGroupArr[1].setVisibility(0);
        if (this.mIsDisplayAdded && (view5 = this.mMoveDisplayButtonSet) != null) {
            view5.setVisibility(0);
        }
        View view6 = (View) sparseArray.get(R.id.back_window);
        if (view6 != null && view6.getVisibility() == 0) {
            measureChild(view6);
            i -= view6.getMeasuredWidth();
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 < viewGroupArr[0].getChildCount()) {
                View childAt = viewGroupArr[0].getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    measureChild(childAt);
                    i4 += childAt.getMeasuredWidth();
                    if (i < i4) {
                        z = true;
                        break;
                    }
                }
                i3++;
            } else {
                z = false;
                break;
            }
        }
        View view7 = (View) sparseArray.get(R.id.more_window);
        if (view7 == null) {
            return;
        }
        if (z2) {
            measureChild(view7);
            i -= view7.getMeasuredWidth();
            if (i < 0) {
                z = true;
            }
        }
        if (this.mIsDisplayAdded && (view4 = this.mMoveDisplayButtonSet) != null) {
            measureChild(view4);
            i -= this.mMoveDisplayButtonSet.getMeasuredWidth();
            if (i < 0) {
                z = true;
            }
        }
        if (z) {
            view7.setVisibility(0);
            viewGroupArr[0].setVisibility(8);
            viewGroupArr[1].setVisibility(8);
            if (this.mIsDisplayAdded && (view3 = this.mMoveDisplayButtonSet) != null) {
                view3.setVisibility(8);
                return;
            }
            return;
        }
        int i5 = i - i4;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i6 >= viewGroupArr[1].getChildCount()) {
                break;
            }
            View childAt2 = viewGroupArr[1].getChildAt(i6);
            if (childAt2.getVisibility() == 0) {
                measureChild(childAt2);
                i7 += childAt2.getMeasuredWidth();
                if (i5 < i7) {
                    z = true;
                    break;
                }
            }
            i6++;
        }
        if (z) {
            view7.setVisibility(0);
            measureChild(view7);
            int measuredWidth = view7.getMeasuredWidth();
            if (!z2 && i5 < measuredWidth) {
                viewGroupArr[0].setVisibility(8);
                viewGroupArr[1].setVisibility(8);
                if (this.mIsDisplayAdded && (view2 = this.mMoveDisplayButtonSet) != null) {
                    view2.setVisibility(8);
                    return;
                }
                return;
            }
            WindowMenuItemView windowMenuItemView2 = (WindowMenuItemView) sparseArray.get(R.id.close_window);
            if (windowMenuItemView2 != null) {
                windowMenuItemView2.setPadding(windowMenuItemView2.getPaddingStart(), windowMenuItemView2.getPaddingTop(), windowMenuItemView2.getPaddingStart(), windowMenuItemView2.getPaddingBottom());
                windowMenuItemView2.updateRippleBackground();
            }
            viewGroupArr[1].setVisibility(8);
            if (this.mIsDisplayAdded && (view = this.mMoveDisplayButtonSet) != null) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        if (!z2) {
            i2 = 8;
        }
        view7.setVisibility(i2);
    }

    public final void changePinButtonDisable(boolean z) {
        float f;
        WindowMenuItemView windowMenuItemView = (WindowMenuItemView) this.mRootView.findViewById(R.id.window_pin_window);
        if (windowMenuItemView != null) {
            windowMenuItemView.setEnabled(!z);
            if (!z) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            windowMenuItemView.setAlpha(f);
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowMenuPresenter
    public final ColorStateList getButtonTintColor() {
        ColorStateList buttonTintColor = super.getButtonTintColor();
        if (CaptionGlobalState.COLOR_THEME_ENABLED) {
            int defaultColor = buttonTintColor.getDefaultColor();
            return new ColorStateList(new int[][]{new int[]{R.attr.state_task_focused}, new int[0]}, new int[]{defaultColor, ColorUtils.setAlphaComponent(defaultColor, 102)});
        }
        return buttonTintColor;
    }

    public final WindowMenuItemView getRotationButton() {
        for (ViewGroup viewGroup : this.mButtonSet) {
            if (viewGroup != null) {
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof WindowMenuItemView) {
                        WindowMenuItemView windowMenuItemView = (WindowMenuItemView) childAt;
                        if (windowMenuItemView.getId() == R.id.rotate_window) {
                            return windowMenuItemView;
                        }
                    }
                }
            }
        }
        return null;
    }

    public final void setTaskFocusState(boolean z) {
        if (this.mIsTaskFocused != z) {
            this.mIsTaskFocused = z;
            int i = 0;
            while (true) {
                SparseArray sparseArray = this.mButtons;
                if (i >= sparseArray.size()) {
                    break;
                }
                ((WindowMenuItemView) sparseArray.valueAt(i)).setTaskFocusState(z);
                i++;
            }
            WindowMenuAnimationView windowMenuAnimationView = this.mUnpinButton;
            if (windowMenuAnimationView != null && windowMenuAnimationView.mIsTaskFocused != z) {
                windowMenuAnimationView.mIsTaskFocused = z;
                windowMenuAnimationView.applyIconColor();
            }
        }
    }

    public final void setupAddDisplayButton(boolean z) {
        int i;
        int i2;
        View view = this.mMoveDisplayButtonSet;
        if (view == null) {
            return;
        }
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
        if (z) {
            WindowMenuItemView windowMenuItemView = (WindowMenuItemView) this.mMoveDisplayButtonSet.findViewById(R.id.move_display_window);
            if (windowMenuItemView != null) {
                windowMenuItemView.setImageTintList(this.mButtonTintColor);
                windowMenuItemView.setTaskFocusState(true);
                MultitaskingWindowDecorViewModel.CaptionTouchEventListener captionTouchEventListener = this.mListener;
                windowMenuItemView.setOnClickListener(captionTouchEventListener);
                windowMenuItemView.setOnTouchListener(captionTouchEventListener);
                this.mButtons.put(windowMenuItemView.getId(), windowMenuItemView);
                Context context = this.mContext;
                if (this.mTaskInfo.getDisplayId() == 0) {
                    i2 = R.string.sec_decor_button_operation_move_display;
                } else {
                    i2 = R.string.sec_decor_button_operation_move_device;
                }
                windowMenuItemView.setContentDescription(context.getString(i2));
            }
            WindowMenuDivider windowMenuDivider = (WindowMenuDivider) this.mRootView.findViewById(R.id.move_display_divider);
            if (windowMenuDivider != null) {
                setDividerColor(windowMenuDivider);
            }
        }
    }

    public final void updateButtonColor() {
        this.mButtonTintColor = getButtonTintColor();
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.mButtons;
            if (i >= sparseArray.size()) {
                break;
            }
            ((WindowMenuItemView) sparseArray.valueAt(i)).setImageTintList(this.mButtonTintColor);
            i++;
        }
        WindowMenuAnimationView windowMenuAnimationView = this.mUnpinButton;
        if (windowMenuAnimationView != null) {
            windowMenuAnimationView.updateNightMode(this.mIsNightMode);
            this.mUnpinButton.applyIconColor();
        }
        WindowMenuDivider windowMenuDivider = this.mDivider;
        if (windowMenuDivider != null) {
            setDividerColor(windowMenuDivider);
        }
    }
}
