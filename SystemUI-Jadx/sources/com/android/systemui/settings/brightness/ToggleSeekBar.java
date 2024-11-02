package com.android.systemui.settings.brightness;

import android.content.Context;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import android.widget.Toast;
import com.android.settingslib.RestrictedLockUtils;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.plugins.ActivityStarter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class ToggleSeekBar extends SeekBar {
    public String mAccessibilityLabel;
    public final Context mContext;
    public RestrictedLockUtils.EnforcedAdmin mEnforcedAdmin;
    public boolean mHighBrightnessModeEnter;
    public Toast mHighBrightnessModeToast;
    public boolean mIsDetailViewTouched;
    public boolean mIsDragging;
    public Toast mSliderDisableToast;
    public boolean mSystemBrightnessEnabled;

    public ToggleSeekBar(Context context) {
        super(context);
        this.mEnforcedAdmin = null;
        this.mSystemBrightnessEnabled = true;
        this.mContext = context;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        String str = this.mAccessibilityLabel;
        if (str != null) {
            accessibilityNodeInfo.setText(str);
        }
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.mSystemBrightnessEnabled) {
            if (motionEvent.getAction() == 0) {
                Log.d("ToggleSeekBar", "showSliderDisabledToast()");
                if (this.mSliderDisableToast == null) {
                    this.mSliderDisableToast = Toast.makeText(getContext(), getContext().getString(R.string.sec_brightness_slider_disabled_toast), 0);
                }
                this.mSliderDisableToast.show();
            }
            return true;
        }
        if (!this.mIsDragging && this.mIsDetailViewTouched && motionEvent.getAction() == 0) {
            return true;
        }
        if (this.mHighBrightnessModeEnter) {
            if (Settings.System.getIntForUser(getContext().getContentResolver(), "screen_brightness_mode", 0, -2) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z && motionEvent.getAction() == 0) {
                Log.d("ToggleSeekBar", "showHighBrightnessModeToast()");
                if (this.mHighBrightnessModeToast == null) {
                    this.mHighBrightnessModeToast = Toast.makeText(getContext(), getContext().getString(R.string.sec_brightness_slider_hbm_text), 0);
                }
                this.mHighBrightnessModeToast.show();
            }
        }
        RestrictedLockUtils.EnforcedAdmin enforcedAdmin = this.mEnforcedAdmin;
        if (enforcedAdmin != null) {
            ((ActivityStarter) Dependency.get(ActivityStarter.class)).postStartActivityDismissingKeyguard(RestrictedLockUtils.getShowAdminSupportDetailsIntent(enforcedAdmin), 0);
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public ToggleSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEnforcedAdmin = null;
        this.mSystemBrightnessEnabled = true;
        this.mContext = context;
    }

    public ToggleSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mEnforcedAdmin = null;
        this.mSystemBrightnessEnabled = true;
    }
}
