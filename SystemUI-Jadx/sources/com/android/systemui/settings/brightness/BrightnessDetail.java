package com.android.systemui.settings.brightness;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.SensorPrivacyManager;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.settingslib.RestrictedLockUtils;
import com.android.settingslib.RestrictedLockUtilsInternal;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.SecQSSwitchPreference;
import com.android.systemui.settings.brightness.BrightnessController;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BrightnessDetail extends FrameLayout {
    public View divider;
    public LinearLayout mAutoBrightnessContainer;
    public final AnonymousClass5 mAutoBrightnessDelegate;
    public TextView mAutoBrightnessSummary;
    public SwitchCompat mAutoBrightnessSwitch;
    public final SharedPreferences.Editor mBrightnessBarPrefEditor;
    public BrightnessController mBrightnessController;
    public final BrightnessController.Factory mBrightnessControllerFactory;
    public final AnonymousClass1 mBrightnessDetailAdapter;
    public final Context mContext;
    public LinearLayout mExtraBrightnessContainer;
    public final AnonymousClass6 mExtraBrightnessDelegate;
    public TextView mExtraBrightnessSummary;
    public SwitchCompat mExtraBrightnessSwitch;
    public final SecQSPanelController mQSPanelController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BrightnessObserver extends ContentObserver {
        public BrightnessObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            if (BrightnessController.BRIGHTNESS_MODE_URI.equals(uri) || BrightnessController.SCREEN_DISPLAY_OUTDOOR_MODE_URI.equals(uri)) {
                BrightnessDetail brightnessDetail = BrightnessDetail.this;
                LinearLayout linearLayout = brightnessDetail.mAutoBrightnessContainer;
                if (linearLayout != null) {
                    linearLayout.setClickable(true);
                }
                SwitchCompat switchCompat = brightnessDetail.mAutoBrightnessSwitch;
                if (switchCompat != null) {
                    switchCompat.setEnabled(true);
                    brightnessDetail.mAutoBrightnessSwitch.setChecked(brightnessDetail.isSwitchChecked());
                }
            }
        }
    }

    /* renamed from: -$$Nest$msetExtraBrightnessLayoutVisibilityLogic, reason: not valid java name */
    public static void m1347$$Nest$msetExtraBrightnessLayoutVisibilityLogic(BrightnessDetail brightnessDetail, boolean z) {
        int i;
        View view = brightnessDetail.divider;
        int i2 = 8;
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        view.setVisibility(i);
        LinearLayout linearLayout = brightnessDetail.mExtraBrightnessContainer;
        if (!z) {
            i2 = 0;
        }
        linearLayout.setVisibility(i2);
    }

    /* renamed from: -$$Nest$msetExtraBrightnessLogic, reason: not valid java name */
    public static void m1348$$Nest$msetExtraBrightnessLogic(BrightnessDetail brightnessDetail, boolean z) {
        brightnessDetail.getClass();
        Log.secD("BrightenssDetail", "setExtraBrightness : " + (z ? 1 : 0));
        Settings.Secure.putIntForUser(brightnessDetail.mContext.getContentResolver(), "screen_extra_brightness", z ? 1 : 0, -2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.settings.brightness.BrightnessDetail$5] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.settings.brightness.BrightnessDetail$6] */
    public BrightnessDetail(Context context, SecQSPanelController secQSPanelController, BrightnessController.Factory factory) {
        super(context);
        boolean z;
        this.mBrightnessDetailAdapter = new AnonymousClass1();
        this.mAutoBrightnessDelegate = new View.AccessibilityDelegate() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.5
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                String string;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                if (BrightnessDetail.this.mAutoBrightnessSwitch.isChecked()) {
                    string = BrightnessDetail.this.mContext.getString(R.string.switch_bar_on);
                } else {
                    string = BrightnessDetail.this.mContext.getString(R.string.switch_bar_off);
                }
                accessibilityNodeInfo.setContentDescription(((TextView) BrightnessDetail.this.mAutoBrightnessContainer.findViewById(R.id.title)).getText().toString() + ", " + string + ", Switch");
            }
        };
        this.mExtraBrightnessDelegate = new View.AccessibilityDelegate() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.6
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                String string;
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                if (BrightnessDetail.this.mExtraBrightnessSwitch.isChecked()) {
                    string = BrightnessDetail.this.mContext.getString(R.string.switch_bar_on);
                } else {
                    string = BrightnessDetail.this.mContext.getString(R.string.switch_bar_off);
                }
                accessibilityNodeInfo.setContentDescription(((TextView) BrightnessDetail.this.mExtraBrightnessContainer.findViewById(R.id.title)).getText().toString() + ", " + BrightnessDetail.this.mExtraBrightnessSummary.getText().toString() + ", " + string + ", Switch");
            }
        };
        this.mContext = context;
        this.mQSPanelController = secQSPanelController;
        this.mBrightnessControllerFactory = factory;
        SharedPreferences sharedPreferences = context.getSharedPreferences("quick_pref", 0);
        if (sharedPreferences != null) {
            if (Settings.System.getIntForUser(context.getContentResolver(), "screen_brightness_mode", 0, -2) != 0) {
                z = true;
            } else {
                z = false;
            }
            z = DeviceType.isLightSensorSupported(context) ? z : Settings.System.getIntForUser(context.getContentResolver(), "display_outdoor_mode", 0, -2) != 0;
            SharedPreferences.Editor edit = sharedPreferences.edit();
            this.mBrightnessBarPrefEditor = edit;
            edit.putBoolean("QPDS1006", z);
            edit.commit();
        }
    }

    public final boolean isSwitchChecked() {
        boolean z;
        boolean z2 = false;
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), "screen_brightness_mode", 0, -2) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), "display_outdoor_mode", 0, -2) != 0) {
            z2 = true;
        }
        if (!DeviceType.isLightSensorSupported(this.mContext)) {
            return z2;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.settings.brightness.BrightnessDetail$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements DetailAdapter {
        public BrightnessDetailSliderView mBrightnessDetailSliderView;
        public BrightnessObserver mBrightnessObserver;
        public RestrictedLockUtils.EnforcedAdmin mEnforcedAdmin;

        /* renamed from: -$$Nest$msetBrightness, reason: not valid java name */
        public static void m1349$$Nest$msetBrightness(AnonymousClass1 anonymousClass1, Boolean bool, Boolean bool2) {
            boolean z;
            anonymousClass1.getClass();
            if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBrightnessBlocked()) {
                Log.d("BrightenssDetail", "Auto brightness options are not available by KnoxStateMonitor.");
                z = false;
            } else {
                z = true;
            }
            BrightnessDetail brightnessDetail = BrightnessDetail.this;
            if (z) {
                anonymousClass1.setAutoBrightness(bool2.booleanValue());
                brightnessDetail.mAutoBrightnessSwitch.setChecked(bool2.booleanValue());
                if (QpRune.QUICK_BAR_EXTRA_BRIGHTNESS) {
                    BrightnessDetail.m1347$$Nest$msetExtraBrightnessLayoutVisibilityLogic(brightnessDetail, bool2.booleanValue());
                }
            } else {
                anonymousClass1.setAutoBrightness(bool.booleanValue());
                brightnessDetail.mAutoBrightnessSwitch.setChecked(bool.booleanValue());
                if (QpRune.QUICK_BAR_EXTRA_BRIGHTNESS) {
                    BrightnessDetail.m1347$$Nest$msetExtraBrightnessLayoutVisibilityLogic(brightnessDetail, bool.booleanValue());
                }
            }
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPDE1006");
            brightnessDetail.mBrightnessBarPrefEditor.putBoolean("QPDS1006", bool2.booleanValue());
            brightnessDetail.mBrightnessBarPrefEditor.commit();
        }

        public AnonymousClass1() {
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final View createDetailView(final Context context, View view, ViewGroup viewGroup) {
            String string;
            float f;
            boolean z;
            final BrightnessDetail brightnessDetail = BrightnessDetail.this;
            int i = 0;
            View inflate = LayoutInflater.from(brightnessDetail.mContext).inflate(R.layout.sec_brightness_detail, viewGroup, false);
            ViewGroup viewGroup2 = (ViewGroup) inflate;
            brightnessDetail.mAutoBrightnessContainer = SecQSSwitchPreference.inflateSwitch(brightnessDetail.mContext, viewGroup2);
            DeviceType.isLightSensorSupported(context);
            if (DeviceType.isLightSensorSupported(context)) {
                string = context.getString(R.string.sec_brightness_auto_brightness_title);
            } else {
                string = context.getString(R.string.sec_brightness_outdoor_mode_title);
            }
            ((TextView) brightnessDetail.mAutoBrightnessContainer.findViewById(R.id.title)).setText(string);
            viewGroup2.addView(brightnessDetail.mAutoBrightnessContainer);
            brightnessDetail.mAutoBrightnessSwitch = (SwitchCompat) brightnessDetail.mAutoBrightnessContainer.findViewById(R.id.title_switch);
            TextView textView = (TextView) brightnessDetail.mAutoBrightnessContainer.findViewById(R.id.title_summary);
            brightnessDetail.mAutoBrightnessSummary = textView;
            textView.setVisibility(8);
            if (QpRune.QUICK_TABLET) {
                int dimensionPixelSize = brightnessDetail.getResources().getDimensionPixelSize(R.dimen.sec_qs_detail_content_top_margin);
                LinearLayout linearLayout = brightnessDetail.mAutoBrightnessContainer;
                linearLayout.setPadding(linearLayout.getPaddingLeft(), dimensionPixelSize, brightnessDetail.mAutoBrightnessContainer.getPaddingRight(), brightnessDetail.mAutoBrightnessContainer.getPaddingBottom());
            }
            boolean z2 = QpRune.QUICK_BAR_EXTRA_BRIGHTNESS;
            boolean z3 = true;
            if (z2) {
                int dimensionPixelSize2 = brightnessDetail.mContext.getResources().getDimensionPixelSize(R.dimen.qspanel_layout_detail_divider_height);
                int dimensionPixelSize3 = brightnessDetail.mContext.getResources().getDimensionPixelSize(R.dimen.qspanel_layout_detail_divider_side_padding);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dimensionPixelSize2);
                layoutParams.leftMargin = dimensionPixelSize3;
                layoutParams.rightMargin = dimensionPixelSize3;
                View view2 = new View(brightnessDetail.mContext);
                brightnessDetail.divider = view2;
                view2.setLayoutParams(layoutParams);
                brightnessDetail.divider.setBackgroundColor(brightnessDetail.mContext.getColor(R.color.qspanel_layout_brightness_detail_divider_background_color));
                viewGroup2.addView(brightnessDetail.divider);
                brightnessDetail.mExtraBrightnessContainer = SecQSSwitchPreference.inflateSwitch(brightnessDetail.mContext, viewGroup2);
                ((TextView) brightnessDetail.mExtraBrightnessContainer.findViewById(R.id.title)).setText(context.getString(R.string.sec_brightness_extra_brightness_title));
                brightnessDetail.mExtraBrightnessSwitch = (SwitchCompat) brightnessDetail.mExtraBrightnessContainer.findViewById(R.id.title_switch);
                String string2 = context.getString(R.string.sec_brightness_extrs_brightness_sub_title);
                TextView textView2 = (TextView) brightnessDetail.mExtraBrightnessContainer.findViewById(R.id.title_summary);
                brightnessDetail.mExtraBrightnessSummary = textView2;
                textView2.setText(string2);
                brightnessDetail.mExtraBrightnessSummary.setVisibility(0);
                viewGroup2.addView(brightnessDetail.mExtraBrightnessContainer);
                SwitchCompat switchCompat = brightnessDetail.mExtraBrightnessSwitch;
                if (Settings.Secure.getIntForUser(brightnessDetail.mContext.getContentResolver(), "screen_extra_brightness", 0, -2) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                switchCompat.setChecked(z);
            }
            brightnessDetail.mAutoBrightnessSwitch.setChecked(brightnessDetail.isSwitchChecked());
            brightnessDetail.mAutoBrightnessContainer.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.1.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    boolean isChecked = BrightnessDetail.this.mAutoBrightnessSwitch.isChecked();
                    AnonymousClass1.m1349$$Nest$msetBrightness(AnonymousClass1.this, Boolean.valueOf(isChecked), Boolean.valueOf(!isChecked));
                }
            });
            brightnessDetail.mAutoBrightnessContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.1.3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view3, MotionEvent motionEvent) {
                    if (AnonymousClass1.this.mEnforcedAdmin == null) {
                        return false;
                    }
                    Log.d("TAG", "DetailView.admin = " + AnonymousClass1.this.mEnforcedAdmin + ", return.");
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    Log.d("BrightenssDetail", "showAdminSupportDetails.admin = " + anonymousClass1.mEnforcedAdmin);
                    Context context2 = BrightnessDetail.this.mContext;
                    ((ActivityStarter) Dependency.get(ActivityStarter.class)).postStartActivityDismissingKeyguard(RestrictedLockUtils.getShowAdminSupportDetailsIntent(anonymousClass1.mEnforcedAdmin), 0);
                    return true;
                }
            });
            brightnessDetail.mAutoBrightnessSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.1.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    boolean isChecked = ((SwitchCompat) view3).isChecked();
                    AnonymousClass1.m1349$$Nest$msetBrightness(AnonymousClass1.this, Boolean.valueOf(!isChecked), Boolean.valueOf(isChecked));
                }
            });
            brightnessDetail.mAutoBrightnessSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.1.5
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
                    int i2;
                    AnonymousClass1.m1349$$Nest$msetBrightness(AnonymousClass1.this, Boolean.valueOf(!z4), Boolean.valueOf(z4));
                    BrightnessDetail brightnessDetail2 = BrightnessDetail.this;
                    SwitchCompat switchCompat2 = brightnessDetail2.mAutoBrightnessSwitch;
                    Context context2 = brightnessDetail2.mContext;
                    if (z4) {
                        i2 = R.string.switch_bar_on;
                    } else {
                        i2 = R.string.switch_bar_off;
                    }
                    switchCompat2.announceForAccessibility(context2.getString(i2));
                }
            });
            Log.d("BrightenssDetail", "isCameraLightSensorSupported");
            Sensor defaultSensor = ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(65604);
            Log.d("BrightenssDetail", "isCameraLightSensorSupported" + defaultSensor);
            if (defaultSensor == null) {
                z3 = false;
            }
            if (z3) {
                boolean isSensorPrivacyEnabled = ((SensorPrivacyManager) Dependency.get(SensorPrivacyManager.class)).isSensorPrivacyEnabled(2);
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isBlocked ", isSensorPrivacyEnabled, "BrightenssDetail");
                boolean z4 = !isSensorPrivacyEnabled;
                brightnessDetail.mAutoBrightnessContainer.setClickable(z4);
                brightnessDetail.mAutoBrightnessContainer.setEnabled(z4);
                brightnessDetail.mAutoBrightnessSwitch.setClickable(z4);
                brightnessDetail.mAutoBrightnessSwitch.setEnabled(z4);
                TextView textView3 = brightnessDetail.mAutoBrightnessSummary;
                if (!isSensorPrivacyEnabled) {
                    i = 8;
                }
                textView3.setVisibility(i);
                brightnessDetail.mAutoBrightnessSummary.setText(context.getString(R.string.sec_adaptive_brightness_disabled_sub_text));
                LinearLayout linearLayout2 = brightnessDetail.mAutoBrightnessContainer;
                if (isSensorPrivacyEnabled) {
                    f = 0.4f;
                } else {
                    f = 1.0f;
                }
                linearLayout2.setAlpha(f);
            }
            if (z2) {
                brightnessDetail.mExtraBrightnessContainer.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        boolean z5 = !BrightnessDetail.this.mExtraBrightnessSwitch.isChecked();
                        BrightnessDetail.this.mExtraBrightnessSwitch.setChecked(z5);
                        BrightnessDetail.m1348$$Nest$msetExtraBrightnessLogic(BrightnessDetail.this, z5);
                    }
                });
                brightnessDetail.mExtraBrightnessSwitch.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view3) {
                        boolean isChecked = ((SwitchCompat) view3).isChecked();
                        BrightnessDetail.this.mExtraBrightnessSwitch.setChecked(isChecked);
                        BrightnessDetail.m1348$$Nest$msetExtraBrightnessLogic(BrightnessDetail.this, isChecked);
                    }
                });
                brightnessDetail.mExtraBrightnessSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.4
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                        int i2;
                        BrightnessDetail.this.mExtraBrightnessSwitch.setChecked(z5);
                        BrightnessDetail.m1348$$Nest$msetExtraBrightnessLogic(BrightnessDetail.this, z5);
                        BrightnessDetail brightnessDetail2 = BrightnessDetail.this;
                        SwitchCompat switchCompat2 = brightnessDetail2.mExtraBrightnessSwitch;
                        Context context2 = brightnessDetail2.mContext;
                        if (z5) {
                            i2 = R.string.switch_bar_on;
                        } else {
                            i2 = R.string.switch_bar_off;
                        }
                        switchCompat2.announceForAccessibility(context2.getString(i2));
                    }
                });
                BrightnessDetail.m1347$$Nest$msetExtraBrightnessLayoutVisibilityLogic(brightnessDetail, brightnessDetail.mAutoBrightnessSwitch.isChecked());
            }
            inflate.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.systemui.settings.brightness.BrightnessDetail.1.1
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view3) {
                    boolean z5;
                    BrightnessDetail brightnessDetail2 = BrightnessDetail.this;
                    BrightnessController.Factory factory = brightnessDetail2.mBrightnessControllerFactory;
                    ToggleSlider toggleSlider = (ToggleSlider) view3.findViewById(R.id.detail_slider);
                    factory.getClass();
                    brightnessDetail2.mBrightnessController = new BrightnessController(factory.mContext, toggleSlider, factory.mUserTracker, factory.mDisplayTracker, factory.mMainExecutor, factory.mBackgroundHandler);
                    BrightnessController brightnessController = BrightnessDetail.this.mBrightnessController;
                    brightnessController.mBackgroundHandler.post(brightnessController.mStartListeningRunnable);
                    AnonymousClass1.this.mEnforcedAdmin = RestrictedLockUtilsInternal.checkIfRestrictionEnforced(context, "no_config_brightness", ActivityManager.semGetCurrentUser());
                    AnonymousClass1.this.mBrightnessDetailSliderView = (BrightnessDetailSliderView) view3.findViewById(R.id.detail_slider);
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    BrightnessDetailSliderView brightnessDetailSliderView = anonymousClass1.mBrightnessDetailSliderView;
                    if (brightnessDetailSliderView != null && brightnessDetailSliderView.mSliderEnabled) {
                        BrightnessDetail.this.mBrightnessController.checkRestrictionAndSetEnabled();
                    }
                    AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                    SwitchCompat switchCompat2 = BrightnessDetail.this.mAutoBrightnessSwitch;
                    boolean z6 = true;
                    if (switchCompat2 != null) {
                        if (anonymousClass12.mEnforcedAdmin == null) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        switchCompat2.setEnabled(z5);
                    }
                    AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                    SwitchCompat switchCompat3 = BrightnessDetail.this.mExtraBrightnessSwitch;
                    if (switchCompat3 != null) {
                        if (anonymousClass13.mEnforcedAdmin != null) {
                            z6 = false;
                        }
                        switchCompat3.setEnabled(z6);
                    }
                    AnonymousClass1.this.mBrightnessObserver = new BrightnessObserver(new Handler());
                    BrightnessObserver brightnessObserver = AnonymousClass1.this.mBrightnessObserver;
                    ContentResolver contentResolver = BrightnessDetail.this.mContext.getContentResolver();
                    contentResolver.unregisterContentObserver(brightnessObserver);
                    contentResolver.registerContentObserver(BrightnessController.BRIGHTNESS_MODE_URI, false, brightnessObserver, -1);
                    contentResolver.registerContentObserver(BrightnessController.SCREEN_DISPLAY_OUTDOOR_MODE_URI, false, brightnessObserver, -1);
                    BrightnessDetail brightnessDetail3 = BrightnessDetail.this;
                    LinearLayout linearLayout3 = brightnessDetail3.mAutoBrightnessContainer;
                    if (linearLayout3 != null) {
                        linearLayout3.setAccessibilityDelegate(brightnessDetail3.mAutoBrightnessDelegate);
                    }
                    BrightnessDetail brightnessDetail4 = BrightnessDetail.this;
                    LinearLayout linearLayout4 = brightnessDetail4.mExtraBrightnessContainer;
                    if (linearLayout4 != null) {
                        linearLayout4.setAccessibilityDelegate(brightnessDetail4.mExtraBrightnessDelegate);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view3) {
                    BrightnessController brightnessController = BrightnessDetail.this.mBrightnessController;
                    brightnessController.mBackgroundHandler.post(brightnessController.mStopListeningRunnable);
                    brightnessController.mControlValueInitialized = false;
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    anonymousClass1.mEnforcedAdmin = null;
                    BrightnessObserver brightnessObserver = anonymousClass1.mBrightnessObserver;
                    BrightnessDetail.this.mContext.getContentResolver().unregisterContentObserver(brightnessObserver);
                    AnonymousClass1.this.mBrightnessObserver = null;
                }
            });
            return inflate;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final int getMetricsCategory() {
            return VolteConstants.ErrorCode.UT_RETRY_TO_CDMA_DIAL;
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Intent getSettingsIntent() {
            return new Intent("android.settings.DISPLAY_SETTINGS");
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final CharSequence getTitle() {
            return BrightnessDetail.this.mContext.getResources().getString(R.string.sec_brightness_detail_title);
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final Boolean getToggleState() {
            return null;
        }

        public final void setAutoBrightness(boolean z) {
            String str;
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("automatic = ", z, "BrightenssDetail");
            BrightnessDetail brightnessDetail = BrightnessDetail.this;
            if (brightnessDetail.mBrightnessController != null) {
                if (DeviceType.isLightSensorSupported(brightnessDetail.mContext)) {
                    if (QpRune.QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL) {
                        String str2 = "screen_brightness";
                        if (z) {
                            str = "screen_brightness";
                        } else {
                            str = "brightness_pms_marker_screen";
                        }
                        if (z) {
                            str2 = "brightness_pms_marker_screen";
                        }
                        Settings.Secure.putIntForUser(brightnessDetail.mContext.getContentResolver(), str2, Settings.System.getIntForUser(brightnessDetail.mContext.getContentResolver(), str, 100, -2), -2);
                    }
                    Settings.System.putIntForUser(brightnessDetail.mContext.getContentResolver(), "screen_brightness_mode", z ? 1 : 0, -2);
                    return;
                }
                Settings.System.putIntForUser(brightnessDetail.mContext.getContentResolver(), "display_outdoor_mode", z ? 1 : 0, -2);
            }
        }

        @Override // com.android.systemui.plugins.qs.DetailAdapter
        public final void setToggleState(boolean z) {
        }
    }
}
