package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.SparseArray;
import android.view.View;
import com.android.systemui.R;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.samsung.android.knox.ex.peripheral.PeripheralConstants;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WindowMenuPresenter {
    public float mAlpha;
    public final SparseArray mButtons = new SparseArray();
    public Context mContext;
    public final boolean mIsDexEnabled;
    public boolean mIsDisplayAdded;
    public final boolean mIsNewDexMode;
    public boolean mIsNightMode;
    public boolean mIsSplitTopDown;
    public final MultitaskingWindowDecorViewModel.CaptionTouchEventListener mListener;
    public final View mRootView;
    public WindowDecorSlider mSlider;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public final int mWindowingMode;

    public WindowMenuPresenter(Context context, ActivityManager.RunningTaskInfo runningTaskInfo, int i, MultitaskingWindowDecorViewModel.CaptionTouchEventListener captionTouchEventListener, View view, float f, boolean z) {
        boolean z2;
        this.mContext = context;
        this.mTaskInfo = runningTaskInfo;
        this.mListener = captionTouchEventListener;
        this.mWindowingMode = i;
        this.mRootView = view;
        this.mIsNightMode = MultiWindowUtils.isNightMode(runningTaskInfo);
        if (!runningTaskInfo.configuration.isDexMode() && !runningTaskInfo.configuration.isNewDexMode()) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.mIsDexEnabled = z2;
        boolean isNewDexMode = runningTaskInfo.configuration.isNewDexMode();
        this.mIsNewDexMode = isNewDexMode;
        this.mAlpha = f;
        this.mIsSplitTopDown = !isNewDexMode;
        this.mIsDisplayAdded = z;
    }

    public static boolean isButtonVisible(int i, int i2, boolean z, boolean z2) {
        if (i == R.id.maximize_window) {
            if (i2 == 1) {
                return false;
            }
            return true;
        }
        if (i == R.id.opacity_window) {
            return CoreRune.MW_CAPTION_SHELL_SUPPORT_WINDOW_OPACITY;
        }
        if (i == R.id.rotate_window) {
            if (!CoreRune.MD_DEX_COMPAT_CAPTION_SHELL || !z) {
                return false;
            }
            return true;
        }
        if (i != R.id.move_display_window) {
            return true;
        }
        if (!CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY || !z2) {
            return false;
        }
        return true;
    }

    public final void changePinButtonIconBackground(boolean z) {
        String string;
        WindowMenuItemView windowMenuItemView = (WindowMenuItemView) this.mRootView.findViewById(R.id.window_pin_window);
        if (windowMenuItemView != null) {
            windowMenuItemView.mShowIconBackground = z;
            if (z) {
                string = this.mContext.getString(R.string.sec_decor_button_text_window_unpin);
            } else {
                string = this.mContext.getString(R.string.sec_decor_button_text_window_pin);
            }
            windowMenuItemView.setContentDescription(string);
        }
    }

    public ColorStateList getButtonTintColor() {
        int i;
        int i2;
        int i3;
        if (CaptionGlobalState.COLOR_THEME_ENABLED) {
            if (this.mIsNightMode != this.mContext.getResources().getConfiguration().isNightModeActive()) {
                Configuration configuration = new Configuration(this.mContext.getResources().getConfiguration());
                if (this.mIsNightMode) {
                    i3 = 32;
                } else {
                    i3 = 16;
                }
                configuration.uiMode = (i3 & 48) | (configuration.uiMode & (-49));
                this.mContext = this.mContext.createConfigurationContext(configuration);
            }
            return this.mContext.getResources().getColorStateList(17171332, null);
        }
        if (!(this instanceof WindowMenuCaptionPresenter)) {
            Resources resources = this.mContext.getResources();
            if (this.mIsNightMode) {
                i2 = R.color.sec_decor_icon_color_dark;
            } else {
                i2 = R.color.sec_decor_icon_color_light;
            }
            return resources.getColorStateList(i2, null);
        }
        Resources resources2 = this.mContext.getResources();
        if (this.mIsNightMode) {
            i = R.color.sec_decor_button_color_dark;
        } else {
            i = R.color.sec_decor_button_color_light;
        }
        return resources2.getColorStateList(i, null);
    }

    public final void setDividerColor(WindowMenuDivider windowMenuDivider) {
        int i;
        float f;
        Resources resources = this.mContext.getResources();
        if (this.mIsNightMode) {
            i = R.color.sec_decor_icon_color_dark;
        } else {
            i = R.color.sec_decor_icon_color_light;
        }
        windowMenuDivider.setBackgroundTintList(resources.getColorStateList(i, null));
        if (this.mIsNightMode) {
            f = 0.12f;
        } else {
            f = 0.2f;
        }
        windowMenuDivider.setAlpha(f);
    }

    public final void setSplitButtonDrawable(WindowMenuItemView windowMenuItemView, int i) {
        boolean z;
        int i2;
        Configuration configuration = this.mTaskInfo.getConfiguration();
        boolean z2 = true;
        boolean z3 = false;
        if (CoreRune.IS_TABLET_DEVICE && CoreRune.MW_MULTI_SPLIT) {
            z = true;
        } else {
            z = false;
        }
        if ((configuration.windowConfiguration.getWindowingMode() != 1 || !z) && (i & PeripheralConstants.ErrorCode.ERROR_PLUGIN_CUSTOM_BASE) != 0) {
            if (z && (i & 1) == 0) {
                z2 = false;
            }
            z3 = z2;
        }
        if (this.mIsSplitTopDown != z3) {
            this.mIsSplitTopDown = z3;
            Context context = this.mContext;
            if (z3) {
                i2 = R.drawable.sec_decor_button_split_topbottom;
            } else {
                i2 = R.drawable.sec_decor_button_split_leftright;
            }
            windowMenuItemView.setImageDrawable(context.getDrawable(i2));
        }
    }

    public final void setupOpacitySlider() {
        View view = this.mRootView;
        WindowDecorSlider windowDecorSlider = (WindowDecorSlider) view.findViewById(R.id.slider);
        this.mSlider = windowDecorSlider;
        if (windowDecorSlider == null) {
            return;
        }
        View findViewById = view.findViewById(R.id.button_container);
        View findViewById2 = view.findViewById(R.id.slider_container);
        windowDecorSlider.getClass();
        if (findViewById != null && findViewById2 != null) {
            windowDecorSlider.mButtonContainer = findViewById;
            windowDecorSlider.mSliderContainer = findViewById2;
            windowDecorSlider.mAnimatable = true;
        }
        this.mSlider.setOnSeekBarChangeListener(this.mListener);
    }
}
