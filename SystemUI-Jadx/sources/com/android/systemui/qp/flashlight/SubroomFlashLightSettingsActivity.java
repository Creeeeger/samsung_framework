package com.android.systemui.qp.flashlight;

import android.R;
import android.app.Activity;
import android.content.SharedPreferences;
import android.hardware.devicestate.DeviceStateManager;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.qp.SubscreenQSControllerContract$FlashLightView;
import com.android.systemui.qp.flashlight.SubroomFlashLightTurnOffView;
import com.android.systemui.qp.flashlight.SubroomFlashLightTurnOnView;
import com.android.systemui.qp.util.SubscreenUtil;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.statusbar.policy.FlashlightController;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;
import com.android.systemui.subscreen.SubScreenQuickPanelWindowController;
import com.android.systemui.util.SystemUIAnalytics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomFlashLightSettingsActivity extends Activity implements SubroomFlashLightTurnOffView.ClickListener, SubroomFlashLightTurnOnView.TurnOnClickListener, SubscreenQSControllerContract$FlashLightView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public AccessibilityManager mAccessibilityManager;
    public RelativeLayout mBackButton;
    public SubroomFlashLightSettingsActivity mContext;
    public DeviceStateManager mDeviceStateManager;
    public TextView mFlashLightHelpText;
    public SubroomFlashLightButtonSettingsView mFlashLightHelpView;
    public SubscreenFlashLightController mFlashLightPresentationController;
    public SubroomFlashLightTurnOffView mFlashLightTurnOff;
    public SubroomFlashLightTurnOnView mFlashLightTurnOn;
    public FlashlightController mFlashlightController;
    public WindowManager.LayoutParams mLp;
    public SharedPreferences mShowHelpViewTextPrefs;
    public FrameLayout mSubRoomPresentationView;
    public SubroomFlashLightUtil mSubroomFlashLightUtil;
    public int mSubScreen = 0;
    public int mHelpViewTextCounter = 0;
    public boolean mLongPress = false;
    public int mActivityState = 0;
    public boolean mIsFlexMode = false;
    public long mLastEvent = 0;
    public final AnonymousClass1 mDeviceStateCallback = new DeviceStateManager.DeviceStateCallback() { // from class: com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity.1
        public final void onStateChanged(int i) {
            SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity = SubroomFlashLightSettingsActivity.this;
            boolean z = true;
            if (i != 1) {
                z = false;
            }
            subroomFlashLightSettingsActivity.mIsFlexMode = z;
            if (subroomFlashLightSettingsActivity.mSubRoomPresentationView != null) {
                ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("updateRoundedCorners ,flexmode:"), subroomFlashLightSettingsActivity.mIsFlexMode, "SubroomFlashLightSettingsActivity");
                if (subroomFlashLightSettingsActivity.mIsFlexMode) {
                    subroomFlashLightSettingsActivity.mSubRoomPresentationView.semSetRoundedCorners(3, subroomFlashLightSettingsActivity.mContext.getResources().getDimensionPixelSize(17105696));
                    subroomFlashLightSettingsActivity.mSubRoomPresentationView.semSetRoundedCornerColor(3, subroomFlashLightSettingsActivity.mContext.getColor(R.color.black));
                } else {
                    subroomFlashLightSettingsActivity.mSubRoomPresentationView.semSetRoundedCorners(0);
                }
                subroomFlashLightSettingsActivity.mSubRoomPresentationView.invalidate();
            }
        }
    };

    public final void finishFlashLightActivity() {
        Log.d("SubroomFlashLightSettingsActivity", "finishFlashLightActivity");
        finish();
    }

    public final int getActivityState() {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("getActivityState: "), this.mActivityState, "SubroomFlashLightSettingsActivity");
        return this.mActivityState;
    }

    public final boolean isValidKey(int i, KeyEvent keyEvent) {
        if (!this.mAccessibilityManager.isTouchExplorationEnabled() && ((i == 25 || i == 24) && keyEvent.getEventTime() - this.mLastEvent > 70)) {
            return true;
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        int screenTimeOut;
        int i;
        super.onCreate(bundle);
        if (((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            finishFlashLightActivity();
        }
        Log.d("SubroomFlashLightSettingsActivity", "onCreate: ");
        setContentView(com.android.systemui.R.layout.subscreen_flashlight_presentation);
        this.mContext = this;
        this.mSubroomFlashLightUtil = SubroomFlashLightUtil.getInstance(this);
        this.mSubRoomPresentationView = (FrameLayout) findViewById(com.android.systemui.R.id.subroom_presentation_view);
        DeviceStateManager deviceStateManager = (DeviceStateManager) this.mContext.getSystemService(DeviceStateManager.class);
        this.mDeviceStateManager = deviceStateManager;
        deviceStateManager.registerCallback(this.mContext.getMainExecutor(), this.mDeviceStateCallback);
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
            SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity = this.mContext;
            secQSPanelResourcePicker.getClass();
            if (!SecQSPanelResourcePicker.isNightMode(subroomFlashLightSettingsActivity)) {
                i = 1808;
            } else {
                i = 1792;
            }
            decorView.setSystemUiVisibility(i);
        }
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        this.mLp = attributes;
        if (attributes != null) {
            attributes.setTitle("SubroomFlashLightSettingsActivity");
            this.mLp.semSetScreenDimDuration(0L);
            if (QpRune.QUICK_PANEL_SUBSCREEN) {
                WindowManager.LayoutParams layoutParams = this.mLp;
                SubScreenQuickPanelWindowController subScreenQuickPanelWindowController = ((SubscreenUtil) Dependency.get(SubscreenUtil.class)).mSubScreenQuickPanelWindowController;
                if (subScreenQuickPanelWindowController == null) {
                    screenTimeOut = 0;
                } else {
                    screenTimeOut = subScreenQuickPanelWindowController.mSubScreenQSEventHandler.getScreenTimeOut();
                }
                layoutParams.semSetScreenTimeout(screenTimeOut);
            } else {
                this.mLp.semSetScreenTimeout(10000L);
            }
            WindowManager.LayoutParams layoutParams2 = this.mLp;
            layoutParams2.privateFlags |= 16;
            layoutParams2.alpha = 1.0f;
            getWindow().setAttributes(this.mLp);
        }
        getWindow().setFlags(1024, 1024);
        setShowWhenLocked(true);
        this.mFlashLightPresentationController = SubscreenFlashLightController.getInstance(this);
        SubscreenFlashLightController.getInstance(this);
        this.mFlashlightController = (FlashlightController) Dependency.get(FlashlightController.class);
        this.mFlashLightPresentationController.mFlashLightPresentationView = this;
        this.mSubRoomPresentationView = (FrameLayout) findViewById(com.android.systemui.R.id.subroom_presentation_view);
        this.mSubScreen = 0;
        this.mAccessibilityManager = (AccessibilityManager) getSystemService(AccessibilityManager.class);
        this.mShowHelpViewTextPrefs = getSharedPreferences("ShowDifferentHelpViewText", 0);
        SubroomFlashLightUtil subroomFlashLightUtil = this.mSubroomFlashLightUtil;
        this.mFlashLightHelpView = subroomFlashLightUtil.mFlashLightHelpView;
        SubroomFlashLightTurnOnView subroomFlashLightTurnOnView = subroomFlashLightUtil.mFlashLightTurnOn;
        this.mFlashLightTurnOn = subroomFlashLightTurnOnView;
        this.mBackButton = subroomFlashLightUtil.mBackButton;
        this.mFlashLightHelpText = subroomFlashLightUtil.mFlashLightHelpText;
        SubroomFlashLightTurnOffView subroomFlashLightTurnOffView = subroomFlashLightUtil.mFlashLightTurnOff;
        this.mFlashLightTurnOff = subroomFlashLightTurnOffView;
        subroomFlashLightTurnOffView.mListener = this;
        subroomFlashLightTurnOnView.mListener = this;
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        Log.d("SubroomFlashLightSettingsActivity", "onDestroy: ");
        runOnUiThread(new Runnable() { // from class: com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity = SubroomFlashLightSettingsActivity.this;
                SubroomFlashLightTurnOnView subroomFlashLightTurnOnView = subroomFlashLightSettingsActivity.mFlashLightTurnOn;
                if (subroomFlashLightTurnOnView != null) {
                    subroomFlashLightTurnOnView.setVisibility(8);
                }
                SubroomFlashLightTurnOffView subroomFlashLightTurnOffView = subroomFlashLightSettingsActivity.mFlashLightTurnOff;
                if (subroomFlashLightTurnOffView != null) {
                    subroomFlashLightTurnOffView.setVisibility(8);
                }
                SubroomFlashLightButtonSettingsView subroomFlashLightButtonSettingsView = subroomFlashLightSettingsActivity.mFlashLightHelpView;
                if (subroomFlashLightButtonSettingsView != null) {
                    subroomFlashLightButtonSettingsView.setVisibility(8);
                }
                FrameLayout frameLayout = subroomFlashLightSettingsActivity.mSubRoomPresentationView;
                if (frameLayout != null) {
                    frameLayout.setVisibility(8);
                }
                if (subroomFlashLightSettingsActivity.mSubroomFlashLightUtil != null) {
                    SubroomFlashLightUtil.mInstance = null;
                    subroomFlashLightSettingsActivity.mSubroomFlashLightUtil = null;
                }
            }
        });
        this.mFlashLightPresentationController = null;
        this.mSubScreen = 0;
        this.mActivityState = 0;
        this.mDeviceStateManager.unregisterCallback(this.mDeviceStateCallback);
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onDestroy: "), this.mActivityState, "SubroomFlashLightSettingsActivity");
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (isValidKey(i, keyEvent)) {
            Log.d("SubroomFlashLightSettingsActivity", "onKeyDown VOLUME!!");
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (isValidKey(i, keyEvent)) {
            Log.d("SubroomFlashLightSettingsActivity", "LONG PRESS!");
            this.mLongPress = true;
            onVolumeKeyEvent(i, keyEvent);
            return true;
        }
        return super.onKeyLongPress(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (isValidKey(i, keyEvent)) {
            if (!this.mLongPress) {
                Log.d("SubroomFlashLightSettingsActivity", "SHORT PRESS");
                onVolumeKeyEvent(i, keyEvent);
                return true;
            }
            this.mLongPress = false;
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.app.Activity
    public final void onPause() {
        this.mActivityState = 2;
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onPause: "), this.mActivityState, "SubroomFlashLightSettingsActivity");
        super.onPause();
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.mActivityState = 1;
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onResume: "), this.mActivityState, "SubroomFlashLightSettingsActivity");
    }

    @Override // android.app.Activity
    public final void onStart() {
        boolean z;
        int i;
        super.onStart();
        final int i2 = 1;
        this.mActivityState = 1;
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onStart: "), this.mActivityState, "SubroomFlashLightSettingsActivity");
        if (this.mSubScreen != 0) {
            return;
        }
        if (((FlashlightControllerImpl) this.mFlashlightController).isEnabled()) {
            showTurnOffView();
        } else {
            final int i3 = 0;
            if (this.mAccessibilityManager.isTouchExplorationEnabled()) {
                Log.d("SubroomFlashLightSettingsActivity", "showTurnOnView: ");
                this.mSubScreen = 4;
                updateWindowFlag(true);
                this.mSubRoomPresentationView.setVisibility(0);
                this.mBackButton.setVisibility(0);
                this.mFlashLightTurnOn.setVisibility(0);
                this.mFlashLightTurnOff.setVisibility(8);
                this.mBackButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0
                    public final /* synthetic */ SubroomFlashLightSettingsActivity f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i3) {
                            case 0:
                                SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity = this.f$0;
                                int i4 = SubroomFlashLightSettingsActivity.$r8$clinit;
                                subroomFlashLightSettingsActivity.finishFlashLightActivity();
                                return;
                            default:
                                SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity2 = this.f$0;
                                int i5 = SubroomFlashLightSettingsActivity.$r8$clinit;
                                subroomFlashLightSettingsActivity2.finishFlashLightActivity();
                                return;
                        }
                    }
                });
            } else {
                Log.d("SubroomFlashLightSettingsActivity", "showHelpView: ");
                updateWindowFlag(false);
                this.mSubScreen = 4;
                this.mSubRoomPresentationView.setVisibility(0);
                this.mBackButton.setVisibility(0);
                TextView textView = this.mFlashLightHelpText;
                int i4 = this.mShowHelpViewTextPrefs.getInt("helpViewTextCount", 0);
                this.mHelpViewTextCounter = i4;
                if (i4 < 3) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i = com.android.systemui.R.string.subscreen_flashlight_help_text;
                } else {
                    i = com.android.systemui.R.string.subscreen_flashlight_help_after_three_times_text;
                }
                textView.setText(i);
                this.mFlashLightHelpView.setVisibility(0);
                this.mFlashLightHelpText.setMovementMethod(new ScrollingMovementMethod());
                this.mFlashLightTurnOff.setVisibility(8);
                this.mBackButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity$$ExternalSyntheticLambda0
                    public final /* synthetic */ SubroomFlashLightSettingsActivity f$0;

                    {
                        this.f$0 = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i2) {
                            case 0:
                                SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity = this.f$0;
                                int i42 = SubroomFlashLightSettingsActivity.$r8$clinit;
                                subroomFlashLightSettingsActivity.finishFlashLightActivity();
                                return;
                            default:
                                SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity2 = this.f$0;
                                int i5 = SubroomFlashLightSettingsActivity.$r8$clinit;
                                subroomFlashLightSettingsActivity2.finishFlashLightActivity();
                                return;
                        }
                    }
                });
            }
        }
        SubscreenUtil subscreenUtil = (SubscreenUtil) Dependency.get(SubscreenUtil.class);
        String string = getResources().getString(com.android.systemui.R.string.qs_detail_flashlight_title);
        subscreenUtil.getClass();
        SubscreenUtil.sendAnnouncementEvent(this, string);
        if (QpRune.QUICK_PANEL_SUBSCREEN) {
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2019");
        } else {
            SystemUIAnalytics.sendEventLog(SystemUIAnalytics.sCurrentScreenID, "QPBE2005");
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        this.mActivityState = 2;
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onStop: "), this.mActivityState, "SubroomFlashLightSettingsActivity");
        super.onStop();
    }

    public final void onVolumeKeyEvent(int i, KeyEvent keyEvent) {
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onVolumeKeyEvent: mSubScreen: "), this.mSubScreen, "SubroomFlashLightSettingsActivity");
        if (this.mAccessibilityManager.isTouchExplorationEnabled()) {
            Log.d("SubroomFlashLightSettingsActivity", "onVolumeKeyEvent: Access Restrcicted by Talkback");
            return;
        }
        if (i == 25 || i == 24) {
            if (!((FlashlightControllerImpl) this.mFlashlightController).isAvailable()) {
                ((FlashlightControllerImpl) this.mFlashlightController).showUnavailableMessage();
                return;
            }
            this.mLastEvent = keyEvent.getEventTime();
            int i2 = this.mSubScreen;
            boolean z = false;
            if (i2 == 4) {
                showTurnOffView();
                ((FlashlightControllerImpl) this.mFlashlightController).setFlashlight(true);
                int i3 = this.mShowHelpViewTextPrefs.getInt("helpViewTextCount", 0);
                this.mHelpViewTextCounter = i3;
                if (i3 < 3) {
                    z = true;
                }
                if (z) {
                    SharedPreferences.Editor edit = this.mShowHelpViewTextPrefs.edit();
                    int i4 = this.mHelpViewTextCounter + 1;
                    this.mHelpViewTextCounter = i4;
                    edit.putInt("helpViewTextCount", i4);
                    edit.commit();
                    return;
                }
                return;
            }
            if (i2 == 5) {
                ((FlashlightControllerImpl) this.mFlashlightController).setFlashlight(false);
                finishFlashLightActivity();
            }
        }
    }

    public final void showTurnOffView() {
        Log.d("SubroomFlashLightSettingsActivity", "showTurnOffView: ");
        this.mSubScreen = 5;
        updateWindowFlag(true);
        this.mFlashLightTurnOn.setVisibility(8);
        this.mSubRoomPresentationView.setVisibility(0);
        this.mBackButton.setVisibility(8);
        this.mFlashLightHelpView.setVisibility(8);
        this.mFlashLightTurnOff.setVisibility(0);
    }

    public final void updateWindowFlag(boolean z) {
        WindowManager.LayoutParams layoutParams = this.mLp;
        if (layoutParams != null) {
            if (z) {
                layoutParams.flags |= 2097280;
            } else {
                layoutParams.flags = layoutParams.flags & (-129) & (-2097153);
            }
            getWindow().setAttributes(this.mLp);
        }
    }
}
