package com.android.systemui.qp;

import android.R;
import android.app.Activity;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.hardware.devicestate.DeviceStateManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Switch;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.qp.util.SubscreenToolTipWindow;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.subscreen.SubScreenQuickPanelWindowController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubscreenBrightnessDetailActivity extends Activity implements WakefulnessLifecycle.Observer {
    public static final Uri BRIGHTNESS_MODE_URI = Settings.System.getUriFor("sub_screen_brightness_mode");
    public LinearLayout mAutoBrightnessContainer;
    public SwitchCompat mAutoBrightnessSwitch;
    public ImageView mBackButton;
    public BrightnessModeObserver mBrightnessObserver;
    public SubroomBrightnessSettingsView mBrightnessView;
    public SubscreenBrightnessDetailActivity mContext;
    public DeviceStateManager mDeviceStateManager;
    public SettingsHelper mSettingsHelper;
    public LinearLayout mSubBrightnessDetail;
    public SubscreenBrightnessController mSubscreenBrightnessController;
    public WakefulnessLifecycle mWakefulnessLifeCycle;
    public boolean mIsFlexMode = false;
    public final AnonymousClass1 mDeviceStateCallback = new DeviceStateManager.DeviceStateCallback() { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity.1
        public final void onStateChanged(int i) {
            SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity = SubscreenBrightnessDetailActivity.this;
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            subscreenBrightnessDetailActivity.mIsFlexMode = z;
            if (subscreenBrightnessDetailActivity.mSubBrightnessDetail != null) {
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateRoundedCorners ,flexmode:"), subscreenBrightnessDetailActivity.mIsFlexMode, "SubscreenBrightnessDetailActivity");
                if (subscreenBrightnessDetailActivity.mIsFlexMode) {
                    subscreenBrightnessDetailActivity.mSubBrightnessDetail.semSetRoundedCorners(3, subscreenBrightnessDetailActivity.mContext.getResources().getDimensionPixelSize(17105696));
                    subscreenBrightnessDetailActivity.mSubBrightnessDetail.semSetRoundedCornerColor(3, subscreenBrightnessDetailActivity.mContext.getColor(R.color.black));
                } else {
                    subscreenBrightnessDetailActivity.mSubBrightnessDetail.semSetRoundedCorners(0);
                }
                subscreenBrightnessDetailActivity.mSubBrightnessDetail.invalidate();
            }
        }
    };
    public final AnonymousClass5 mDisplayListener = new DisplayLifecycle.Observer() { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity.5
        @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
        public final void onFolderStateChanged(boolean z) {
            if (z) {
                Uri uri = SubscreenBrightnessDetailActivity.BRIGHTNESS_MODE_URI;
                SubscreenBrightnessDetailActivity.this.finish();
            }
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class BrightnessModeObserver extends ContentObserver {
        public final ContentResolver mCr;

        public BrightnessModeObserver(Handler handler) {
            super(handler);
            this.mCr = SubscreenBrightnessDetailActivity.this.mContext.getContentResolver();
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (z) {
                return;
            }
            boolean z2 = true;
            int intForUser = Settings.System.getIntForUser(SubscreenBrightnessDetailActivity.this.mContext.getContentResolver(), "sub_screen_brightness_mode", 1, -2);
            SwitchCompat switchCompat = SubscreenBrightnessDetailActivity.this.mAutoBrightnessSwitch;
            if (intForUser == 0) {
                z2 = false;
            }
            switchCompat.setChecked(z2);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SwitchDelegate extends AccessibilityDelegateCompat {
        public final SwitchCompat mSwitch;

        public /* synthetic */ SwitchDelegate(SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity, SwitchCompat switchCompat, int i) {
            this(switchCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            String string;
            this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
            accessibilityNodeInfoCompat.setClassName(Switch.class.getName());
            accessibilityNodeInfoCompat.setCheckable(false);
            boolean isChecked = this.mSwitch.isChecked();
            SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity = SubscreenBrightnessDetailActivity.this;
            if (isChecked) {
                string = subscreenBrightnessDetailActivity.mContext.getString(com.android.systemui.R.string.switch_bar_on);
            } else {
                string = subscreenBrightnessDetailActivity.mContext.getString(com.android.systemui.R.string.switch_bar_off);
            }
            accessibilityNodeInfoCompat.setText(subscreenBrightnessDetailActivity.mContext.getString(com.android.systemui.R.string.sec_brightness_auto_brightness_title) + "," + string);
        }

        private SwitchDelegate(SwitchCompat switchCompat) {
            this.mSwitch = switchCompat;
        }
    }

    /* renamed from: -$$Nest$msetBrightness, reason: not valid java name */
    public static void m1324$$Nest$msetBrightness(SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity, Boolean bool, Boolean bool2) {
        boolean z;
        String str;
        subscreenBrightnessDetailActivity.getClass();
        int i = 0;
        if (((KnoxStateMonitorImpl) ((KnoxStateMonitor) Dependency.get(KnoxStateMonitor.class))).isBrightnessBlocked()) {
            Log.d("SubscreenBrightnessDetailActivity", "Auto brightness options are not available by KnoxStateMonitor.");
            z = false;
        } else {
            z = true;
        }
        if (z) {
            bool = bool2;
        }
        boolean booleanValue = bool.booleanValue();
        if (QpRune.QUICK_BAR_BRIGHTNESS_PERSONAL_CONTROL) {
            String str2 = "sub_screen_brightness";
            if (booleanValue) {
                str = "sub_screen_brightness";
            } else {
                str = "brightness_pms_marker_screen";
            }
            if (booleanValue) {
                str2 = "brightness_pms_marker_screen";
            }
            Settings.Secure.putIntForUser(subscreenBrightnessDetailActivity.mContext.getContentResolver(), str2, Settings.System.getIntForUser(subscreenBrightnessDetailActivity.mContext.getContentResolver(), str, 100, -2), -2);
        }
        boolean equalsIgnoreCase = "factory".equalsIgnoreCase(SystemProperties.get("ro.factory.factory_binary", "Unknown"));
        if (booleanValue && !equalsIgnoreCase) {
            i = 1;
        }
        Settings.System.putIntForUser(subscreenBrightnessDetailActivity.mSettingsHelper.mContext.getContentResolver(), "sub_screen_brightness_mode", i, -2);
        subscreenBrightnessDetailActivity.mAutoBrightnessSwitch.setChecked(bool.booleanValue());
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        boolean z;
        int i;
        super.onCreate(bundle);
        setContentView(com.android.systemui.R.layout.subscreen_brightness_detail);
        this.mContext = this;
        ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).addObserver(this.mDisplayListener);
        this.mSettingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.mSubBrightnessDetail = (LinearLayout) findViewById(com.android.systemui.R.id.sub_brightness_detail);
        DeviceStateManager deviceStateManager = (DeviceStateManager) this.mContext.getSystemService(DeviceStateManager.class);
        this.mDeviceStateManager = deviceStateManager;
        deviceStateManager.registerCallback(this.mContext.getMainExecutor(), this.mDeviceStateCallback);
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity = this.mContext;
            secQSPanelResourcePicker.getClass();
            if (!SecQSPanelResourcePicker.isNightMode(subscreenBrightnessDetailActivity)) {
                i = 1808;
            } else {
                i = 1792;
            }
            decorView.setSystemUiVisibility(i);
        }
        getWindow().setFlags(1024, 1024);
        setShowWhenLocked(true);
        final SubscreenToolTipWindow subscreenToolTipWindow = new SubscreenToolTipWindow(this.mContext, com.android.systemui.R.string.subscreen_close_button);
        this.mBackButton = (ImageView) findViewById(com.android.systemui.R.id.subroom_back_button);
        this.mAutoBrightnessSwitch = (SwitchCompat) findViewById(com.android.systemui.R.id.title_switch);
        int i2 = this.mContext.getResources().getConfiguration().uiMode;
        this.mBrightnessView = (SubroomBrightnessSettingsView) findViewById(com.android.systemui.R.id.subroom_brightness_settings);
        this.mAutoBrightnessContainer = (LinearLayout) findViewById(com.android.systemui.R.id.subscreen_adaptive_switch_container);
        LinearLayout linearLayout = (LinearLayout) findViewById(com.android.systemui.R.id.subroom_brightness_container);
        this.mBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity2 = SubscreenBrightnessDetailActivity.this;
                Uri uri = SubscreenBrightnessDetailActivity.BRIGHTNESS_MODE_URI;
                subscreenBrightnessDetailActivity2.finish();
            }
        });
        this.mBackButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean z2;
                SubscreenToolTipWindow subscreenToolTipWindow2 = SubscreenToolTipWindow.this;
                Uri uri = SubscreenBrightnessDetailActivity.BRIGHTNESS_MODE_URI;
                PopupWindow popupWindow = subscreenToolTipWindow2.mTipWindow;
                if (popupWindow != null && popupWindow.isShowing()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    subscreenToolTipWindow2.showToolTip(view);
                }
                return true;
            }
        });
        SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity2 = this.mContext;
        boolean z2 = subscreenBrightnessDetailActivity2.getResources().getBoolean(R.bool.config_windowSwipeToDismiss);
        int i3 = 0;
        if (QpRune.QUICK_SETTINGS_SUBSCREEN && z2) {
            this.mAutoBrightnessContainer.setVisibility(0);
            String string = subscreenBrightnessDetailActivity2.getString(com.android.systemui.R.string.sec_brightness_auto_brightness_title);
            TextView textView = (TextView) this.mAutoBrightnessContainer.findViewById(com.android.systemui.R.id.title);
            textView.setText(string);
            SubscreenUtil.setLabelTextSize(com.android.systemui.R.dimen.brightness_lbl_text_size, (TextView) findViewById(com.android.systemui.R.id.brightness_title));
            SubscreenUtil.setLabelTextSize(com.android.systemui.R.dimen.subscreen_brightness_level_text_size, (TextView) findViewById(com.android.systemui.R.id.level_text));
            SubscreenUtil.setLabelTextSize(com.android.systemui.R.dimen.subscreen_brightness_level_text_size, textView);
            SwitchCompat switchCompat = this.mAutoBrightnessSwitch;
            if (this.mSettingsHelper.mItemLists.get("sub_screen_brightness_mode").getIntValue() != 0) {
                z = true;
            } else {
                z = false;
            }
            switchCompat.setChecked(z);
            this.mAutoBrightnessContainer.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubscreenBrightnessDetailActivity subscreenBrightnessDetailActivity3;
                    int i4;
                    boolean isChecked = SubscreenBrightnessDetailActivity.this.mAutoBrightnessSwitch.isChecked();
                    SubscreenBrightnessDetailActivity.m1324$$Nest$msetBrightness(SubscreenBrightnessDetailActivity.this, Boolean.valueOf(isChecked), Boolean.valueOf(!isChecked));
                    if (SubscreenBrightnessDetailActivity.this.mAutoBrightnessSwitch.isChecked()) {
                        subscreenBrightnessDetailActivity3 = SubscreenBrightnessDetailActivity.this.mContext;
                        i4 = com.android.systemui.R.string.switch_bar_on;
                    } else {
                        subscreenBrightnessDetailActivity3 = SubscreenBrightnessDetailActivity.this.mContext;
                        i4 = com.android.systemui.R.string.switch_bar_off;
                    }
                    String string2 = subscreenBrightnessDetailActivity3.getString(i4);
                    SubscreenBrightnessDetailActivity.this.mAutoBrightnessContainer.announceForAccessibility(SubscreenBrightnessDetailActivity.this.mContext.getResources().getString(com.android.systemui.R.string.sec_brightness_auto_brightness_title) + " " + string2);
                }
            });
            this.mAutoBrightnessContainer.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity.3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return false;
                }
            });
            this.mAutoBrightnessSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.systemui.qp.SubscreenBrightnessDetailActivity.4
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    long j;
                    SubscreenBrightnessDetailActivity.m1324$$Nest$msetBrightness(SubscreenBrightnessDetailActivity.this, Boolean.valueOf(!z3), Boolean.valueOf(z3));
                    if (QpRune.QUICK_PANEL_SUBSCREEN) {
                        String str = SystemUIAnalytics.sCurrentScreenID;
                        if (z3) {
                            j = 1;
                        } else {
                            j = 0;
                        }
                        SystemUIAnalytics.sendEventLog(j, str, "QPDS2027");
                    }
                }
            });
        } else {
            this.mAutoBrightnessContainer.setVisibility(8);
        }
        SubscreenUtil.applyRotation(this.mContext, this.mBackButton);
        SubscreenUtil.applyRotation(this.mContext, linearLayout);
        ViewCompat.setAccessibilityDelegate(this.mAutoBrightnessContainer, new SwitchDelegate(this, this.mAutoBrightnessSwitch, i3));
        if (this.mBrightnessView == null) {
            Log.d("SubscreenBrightnessDetailActivity", "onCreate() mBrightnessView is null");
            return;
        }
        SubscreenUtil subscreenUtil = (SubscreenUtil) Dependency.get(SubscreenUtil.class);
        String string2 = getResources().getString(com.android.systemui.R.string.sub_brightness_label);
        subscreenUtil.getClass();
        SubscreenUtil.sendAnnouncementEvent(this, string2);
        SubscreenBrightnessController subscreenBrightnessController = new SubscreenBrightnessController(this.mContext, this.mBrightnessView);
        this.mSubscreenBrightnessController = subscreenBrightnessController;
        subscreenBrightnessController.init();
        SubscreenBrightnessController subscreenBrightnessController2 = this.mSubscreenBrightnessController;
        subscreenBrightnessController2.getClass();
        subscreenBrightnessController2.mDetailActivity = true;
        this.mWakefulnessLifeCycle = (WakefulnessLifecycle) Dependency.get(WakefulnessLifecycle.class);
        BrightnessModeObserver brightnessModeObserver = new BrightnessModeObserver(new Handler());
        this.mBrightnessObserver = brightnessModeObserver;
        brightnessModeObserver.mCr.unregisterContentObserver(brightnessModeObserver);
        brightnessModeObserver.mCr.registerContentObserver(BRIGHTNESS_MODE_URI, false, brightnessModeObserver);
        WakefulnessLifecycle wakefulnessLifecycle = this.mWakefulnessLifeCycle;
        if (wakefulnessLifecycle != null) {
            wakefulnessLifecycle.addObserver(this);
        }
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2023");
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        SubScreenQuickPanelWindowController subScreenQuickPanelWindowController = ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).mSubScreenQuickPanelWindowController;
        if (subScreenQuickPanelWindowController != null) {
            i3 = subScreenQuickPanelWindowController.mSubScreenQSEventHandler.getScreenTimeOut();
        }
        attributes.semSetScreenTimeout(i3);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        WakefulnessLifecycle wakefulnessLifecycle = this.mWakefulnessLifeCycle;
        if (wakefulnessLifecycle != null) {
            wakefulnessLifecycle.removeObserver(this);
            this.mWakefulnessLifeCycle = null;
        }
        BrightnessModeObserver brightnessModeObserver = this.mBrightnessObserver;
        brightnessModeObserver.mCr.unregisterContentObserver(brightnessModeObserver);
        SubscreenBrightnessController subscreenBrightnessController = this.mSubscreenBrightnessController;
        subscreenBrightnessController.getClass();
        subscreenBrightnessController.mDetailActivity = false;
        this.mDeviceStateManager.unregisterCallback(this.mDeviceStateCallback);
        super.onDestroy();
    }

    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
    public final void onStartedGoingToSleep() {
        Log.d("SubscreenBrightnessDetailActivity", "onStartedGoingToSleep");
        finish();
    }
}
