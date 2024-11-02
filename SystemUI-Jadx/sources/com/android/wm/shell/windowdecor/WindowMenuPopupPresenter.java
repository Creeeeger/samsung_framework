package com.android.wm.shell.windowdecor;

import android.animation.AnimatorSet;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.R;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WindowMenuPopupPresenter extends WindowMenuPresenter {
    public int mAnimDirection;
    public AnimatorSet mHideAnimation;
    public AnonymousClass1 mPinAnimRunnable;
    public WindowMenuAnimationView mPinButton;
    public AnimatorSet mShowAnimation;
    public final int mWidth;

    /* JADX WARN: Type inference failed for: r9v12, types: [com.android.wm.shell.windowdecor.WindowMenuPopupPresenter$1] */
    public WindowMenuPopupPresenter(Context context, ActivityManager.RunningTaskInfo runningTaskInfo, View view, MultitaskingWindowDecorViewModel.CaptionTouchEventListener captionTouchEventListener, float f, int i, boolean z) {
        super(context, runningTaskInfo, runningTaskInfo.getWindowingMode(), captionTouchEventListener, view, f, z);
        MultitaskingWindowDecorViewModel.CaptionTouchEventListener captionTouchEventListener2;
        float f2;
        this.mWidth = i;
        createPopupAnimation(runningTaskInfo, true);
        View view2 = this.mRootView;
        ViewGroup viewGroup = (ViewGroup) view2.findViewById(R.id.button_container);
        if (viewGroup != null) {
            ColorStateList buttonTintColor = getButtonTintColor();
            int i2 = 0;
            while (true) {
                int childCount = viewGroup.getChildCount();
                captionTouchEventListener2 = this.mListener;
                if (i2 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i2);
                if (childAt instanceof WindowMenuItemView) {
                    WindowMenuItemView windowMenuItemView = (WindowMenuItemView) childAt;
                    int id = windowMenuItemView.getId();
                    if (!WindowMenuPresenter.isButtonVisible(id, this.mWindowingMode, false, false)) {
                        windowMenuItemView.setVisibility(8);
                    } else {
                        if (id == R.id.opacity_window) {
                            setupOpacitySlider();
                        } else if (id == R.id.split_window) {
                            int multiSplitFlags = MultiWindowManager.getInstance().getMultiSplitFlags();
                            boolean isSplitEnabled = MultiWindowUtils.isSplitEnabled(multiSplitFlags);
                            if (CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE && isSplitEnabled) {
                                ActivityManager.RunningTaskInfo runningTaskInfo2 = this.mTaskInfo;
                                isSplitEnabled = runningTaskInfo2.resizeMode != 10 && runningTaskInfo2.supportsMultiWindow;
                            }
                            setSplitButtonDrawable(windowMenuItemView, multiSplitFlags);
                            windowMenuItemView.setEnabled(isSplitEnabled);
                            if (isSplitEnabled) {
                                f2 = 1.0f;
                            } else {
                                f2 = 0.4f;
                            }
                            windowMenuItemView.setAlpha(f2);
                        } else if (CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE && this.mIsNewDexMode && id == R.id.window_pin_window) {
                            changePinButtonIconBackground(this.mTaskInfo.getConfiguration().windowConfiguration.isAlwaysOnTop());
                        }
                        windowMenuItemView.setOnTouchListener(captionTouchEventListener2);
                        windowMenuItemView.setOnClickListener(captionTouchEventListener2);
                        windowMenuItemView.setOnHoverListener(captionTouchEventListener2);
                        windowMenuItemView.setImageTintList(buttonTintColor);
                        this.mButtons.put(id, windowMenuItemView);
                    }
                }
                i2++;
            }
            WindowMenuAnimationView windowMenuAnimationView = (WindowMenuAnimationView) view2.findViewById(R.id.caption_pin_window);
            this.mPinButton = windowMenuAnimationView;
            if (windowMenuAnimationView != null) {
                windowMenuAnimationView.createLottieTask("mw_popup_option_btn_handle_header.json");
                this.mPinButton.setOnClickListener(captionTouchEventListener2);
                this.mPinButton.setOnTouchListener(captionTouchEventListener2);
                this.mPinButton.setOnHoverListener(captionTouchEventListener2);
                this.mPinButton.updateNightMode(this.mIsNightMode);
                this.mPinAnimRunnable = new Runnable() { // from class: com.android.wm.shell.windowdecor.WindowMenuPopupPresenter.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WindowMenuAnimationView windowMenuAnimationView2 = WindowMenuPopupPresenter.this.mPinButton;
                        if (windowMenuAnimationView2 != null) {
                            windowMenuAnimationView2.playAnimation();
                        }
                    }
                };
            }
            WindowMenuDivider windowMenuDivider = (WindowMenuDivider) view2.findViewById(R.id.divider);
            if (windowMenuDivider != null) {
                setDividerColor(windowMenuDivider);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        if ((r9.right - r0) > r8.mContext.getResources().getDisplayMetrics().widthPixels) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void createPopupAnimation(android.app.ActivityManager.RunningTaskInfo r9, boolean r10) {
        /*
            r8 = this;
            int r0 = r9.getWindowingMode()
            r1 = 5
            if (r0 != r1) goto L33
            android.content.res.Configuration r9 = r9.getConfiguration()
            android.app.WindowConfiguration r9 = r9.windowConfiguration
            android.graphics.Rect r9 = r9.getBounds()
            int r0 = r9.width()
            int r1 = r8.mWidth
            int r0 = r0 - r1
            r1 = 2
            int r0 = r0 / r1
            int r2 = r9.left
            int r2 = r2 + r0
            if (r2 >= 0) goto L21
            r1 = 1
            goto L34
        L21:
            int r9 = r9.right
            int r9 = r9 - r0
            android.content.Context r0 = r8.mContext
            android.content.res.Resources r0 = r0.getResources()
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()
            int r0 = r0.widthPixels
            if (r9 <= r0) goto L33
            goto L34
        L33:
            r1 = 0
        L34:
            if (r10 != 0) goto L3a
            int r9 = r8.mAnimDirection
            if (r1 == r9) goto L5b
        L3a:
            r8.mAnimDirection = r1
            android.content.Context r2 = r8.mContext
            android.view.View r3 = r8.mRootView
            r4 = 1
            int r5 = r8.mWindowingMode
            int r7 = r8.mWidth
            r6 = r1
            android.animation.AnimatorSet r9 = com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils.createMenuPopupAnimatorSet(r2, r3, r4, r5, r6, r7)
            r8.mShowAnimation = r9
            android.content.Context r2 = r8.mContext
            android.view.View r3 = r8.mRootView
            r4 = 0
            int r5 = r8.mWindowingMode
            int r7 = r8.mWidth
            android.animation.AnimatorSet r9 = com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils.createMenuPopupAnimatorSet(r2, r3, r4, r5, r6, r7)
            r8.mHideAnimation = r9
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.WindowMenuPopupPresenter.createPopupAnimation(android.app.ActivityManager$RunningTaskInfo, boolean):void");
    }

    public final boolean needRecreateHandleMenu(ActivityManager.RunningTaskInfo runningTaskInfo) {
        Rect bounds = runningTaskInfo.getConfiguration().windowConfiguration.getBounds();
        Rect bounds2 = this.mTaskInfo.getConfiguration().windowConfiguration.getBounds();
        if (bounds.width() == bounds2.width() && bounds.height() == bounds2.height() && MultiWindowUtils.isNightMode(runningTaskInfo) == MultiWindowUtils.isNightMode(this.mTaskInfo)) {
            return false;
        }
        return true;
    }

    public final void setFreeformButtonEnabled(boolean z) {
        float f;
        WindowMenuItemView windowMenuItemView = (WindowMenuItemView) this.mRootView.findViewById(R.id.freeform_window);
        if (windowMenuItemView != null) {
            windowMenuItemView.setEnabled(z);
            if (z) {
                f = 1.0f;
            } else {
                f = 0.4f;
            }
            windowMenuItemView.setAlpha(f);
            windowMenuItemView.invalidate();
        }
    }
}
