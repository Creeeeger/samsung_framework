package com.android.keyguard;

import android.app.SemWallpaperColors;
import android.content.Context;
import android.content.res.Configuration;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.telephony.SubscriptionManager;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import android.widget.ProgressBar;
import com.android.internal.telephony.ISemTelephony;
import com.android.internal.util.LatencyTracker;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardSimPersoViewController;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.classifier.FalsingCollector;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.DeviceState;
import com.android.systemui.vibrate.VibrationUtil;
import com.android.systemui.wallpaper.WallpaperUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardSimPersoViewController extends KeyguardSecPinBasedInputViewController {
    public final CarrierText mCarrierLabel;
    public CheckSimPerso mCheckSimPersoThread;
    public final ConfigurationController mConfigurationController;
    public final AnonymousClass1 mConfigurationListener;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public int mOrientation;
    public final ProgressBar mProgressBar;
    public volatile boolean mSimCheckInProgress;
    public int mSubId;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;
    public static final String SIM_TYPE = SystemProperties.get("ril.simtype");
    public static final String DOMESTIC_OTA_START = SystemProperties.get("ril.domesticOtaStart");
    public static int mNumRetry = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.keyguard.KeyguardSimPersoViewController$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends CheckSimPerso {
        public final /* synthetic */ KeyguardSecurityCallback val$keyguardSecurityCallback;
        public final /* synthetic */ int val$subId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(String str, int i, KeyguardSecurityCallback keyguardSecurityCallback) {
            super(str);
            this.val$subId = i;
            this.val$keyguardSecurityCallback = keyguardSecurityCallback;
        }

        @Override // com.android.keyguard.KeyguardSimPersoViewController.CheckSimPerso
        public final void onSimCheckResponse(final boolean z) {
            KeyguardSimPersoViewController keyguardSimPersoViewController = KeyguardSimPersoViewController.this;
            String str = KeyguardSimPersoViewController.SIM_TYPE;
            KeyguardSimPersoView keyguardSimPersoView = (KeyguardSimPersoView) keyguardSimPersoViewController.mView;
            final int i = this.val$subId;
            final KeyguardSecurityCallback keyguardSecurityCallback = this.val$keyguardSecurityCallback;
            keyguardSimPersoView.post(new Runnable() { // from class: com.android.keyguard.KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0
                /* JADX WARN: Code restructure failed: missing block: B:24:0x005f, code lost:
                
                    if (r3.equals("true") != false) goto L17;
                 */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final void run() {
                    /*
                        r9 = this;
                        com.android.keyguard.KeyguardSimPersoViewController$3 r0 = com.android.keyguard.KeyguardSimPersoViewController.AnonymousClass3.this
                        boolean r1 = r2
                        int r2 = r3
                        com.android.keyguard.KeyguardSecurityCallback r9 = r4
                        com.android.keyguard.KeyguardSimPersoViewController r3 = com.android.keyguard.KeyguardSimPersoViewController.this
                        java.lang.String r4 = com.android.keyguard.KeyguardSimPersoViewController.SIM_TYPE
                        android.view.View r3 = r3.mView
                        com.android.keyguard.KeyguardSimPersoView r3 = (com.android.keyguard.KeyguardSimPersoView) r3
                        r4 = 1
                        r3.resetPasswordText(r4, r4)
                        com.android.keyguard.KeyguardSimPersoViewController r3 = com.android.keyguard.KeyguardSimPersoViewController.this
                        r3.setEnabledKeypad(r4)
                        com.android.keyguard.KeyguardSimPersoViewController r3 = com.android.keyguard.KeyguardSimPersoViewController.this
                        android.view.View r3 = r3.mOkButton
                        r5 = 0
                        r3.setVisibility(r5)
                        com.android.keyguard.KeyguardSimPersoViewController r3 = com.android.keyguard.KeyguardSimPersoViewController.this
                        android.widget.ProgressBar r3 = r3.mProgressBar
                        r6 = 8
                        r3.setVisibility(r6)
                        if (r1 == 0) goto L82
                        int r1 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()
                        boolean r3 = com.android.systemui.LsRune.SECURITY_KTT_USIM_TEXT
                        if (r3 == 0) goto L36
                        com.android.keyguard.KeyguardSimPersoViewController.mNumRetry = r5
                    L36:
                        java.lang.String r3 = com.android.keyguard.KeyguardSimPersoViewController.SIM_TYPE
                        java.lang.String r6 = ""
                        boolean r7 = r3.equals(r6)
                        if (r7 != 0) goto L50
                        int r7 = java.lang.Integer.parseInt(r3)
                        r8 = 19
                        if (r7 != r8) goto L61
                        int r3 = java.lang.Integer.parseInt(r3)
                        r7 = 20
                        if (r3 != r7) goto L61
                    L50:
                        java.lang.String r3 = com.android.keyguard.KeyguardSimPersoViewController.DOMESTIC_OTA_START
                        boolean r6 = r3.equals(r6)
                        if (r6 != 0) goto L68
                        java.lang.String r6 = "true"
                        boolean r3 = r3.equals(r6)
                        if (r3 == 0) goto L68
                    L61:
                        com.android.keyguard.KeyguardSimPersoViewController r3 = com.android.keyguard.KeyguardSimPersoViewController.this
                        com.android.keyguard.KeyguardUpdateMonitor r3 = r3.mKeyguardUpdateMonitor
                        r3.reportSimUnlocked(r2)
                    L68:
                        com.android.keyguard.KeyguardSimPersoViewController r2 = com.android.keyguard.KeyguardSimPersoViewController.this
                        boolean r3 = r2.mPaused
                        if (r3 != 0) goto Lc9
                        com.android.keyguard.KeyguardSecurityCallback r2 = r2.getKeyguardSecurityCallback()
                        if (r2 == 0) goto Lc9
                        com.android.keyguard.KeyguardSimPersoViewController r2 = com.android.keyguard.KeyguardSimPersoViewController.this
                        com.android.keyguard.KeyguardSecurityCallback r2 = r2.getKeyguardSecurityCallback()
                        com.android.keyguard.KeyguardSimPersoViewController r3 = com.android.keyguard.KeyguardSimPersoViewController.this
                        com.android.keyguard.KeyguardSecurityModel$SecurityMode r3 = r3.mSecurityMode
                        r2.dismiss(r1, r3, r4)
                        goto Lc9
                    L82:
                        boolean r1 = com.android.systemui.LsRune.SECURITY_KTT_USIM_TEXT
                        if (r1 == 0) goto L8b
                        int r1 = com.android.keyguard.KeyguardSimPersoViewController.mNumRetry
                        int r1 = r1 + r4
                        com.android.keyguard.KeyguardSimPersoViewController.mNumRetry = r1
                    L8b:
                        boolean r1 = com.android.systemui.LsRune.SECURITY_SKT_USIM_TEXT
                        r2 = 2131953932(0x7f13090c, float:1.9544349E38)
                        if (r1 == 0) goto La2
                        com.android.keyguard.KeyguardSimPersoViewController r1 = com.android.keyguard.KeyguardSimPersoViewController.this
                        com.android.keyguard.KeyguardSecMessageAreaController r3 = r1.mMessageAreaController
                        android.content.Context r1 = r1.getContext()
                        java.lang.String r1 = r1.getString(r2)
                        r3.setMessage(r1, r5)
                        goto Lc9
                    La2:
                        int r1 = com.android.keyguard.KeyguardSimPersoViewController.mNumRetry
                        r3 = 5
                        if (r1 >= r3) goto Lb7
                        com.android.keyguard.KeyguardSimPersoViewController r1 = com.android.keyguard.KeyguardSimPersoViewController.this
                        com.android.keyguard.KeyguardSecMessageAreaController r3 = r1.mMessageAreaController
                        android.content.Context r1 = r1.getContext()
                        java.lang.String r1 = r1.getString(r2)
                        r3.setMessage(r1, r5)
                        goto Lc9
                    Lb7:
                        com.android.keyguard.KeyguardSimPersoViewController r1 = com.android.keyguard.KeyguardSimPersoViewController.this
                        com.android.keyguard.KeyguardSecMessageAreaController r2 = r1.mMessageAreaController
                        android.content.Context r1 = r1.getContext()
                        r3 = 2131953933(0x7f13090d, float:1.954435E38)
                        java.lang.String r1 = r1.getString(r3)
                        r2.setMessage(r1, r5)
                    Lc9:
                        r9.userActivity()
                        com.android.keyguard.KeyguardSimPersoViewController r9 = com.android.keyguard.KeyguardSimPersoViewController.this
                        r9.mSimCheckInProgress = r5
                        com.android.keyguard.KeyguardSimPersoViewController r9 = com.android.keyguard.KeyguardSimPersoViewController.this
                        r0 = 0
                        r9.mCheckSimPersoThread = r0
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0.run():void");
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class CheckSimPerso extends Thread {
        public final String mPin;

        public CheckSimPerso(String str) {
            this.mPin = str;
        }

        public abstract void onSimCheckResponse(boolean z);

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                ISemTelephony asInterface = ISemTelephony.Stub.asInterface(ServiceManager.getService("isemtelephony"));
                if (asInterface != null) {
                    final boolean supplyPersoForSubId = asInterface.supplyPersoForSubId(KeyguardSimPersoViewController.this.mSubId, this.mPin);
                    KeyguardSimPersoViewController keyguardSimPersoViewController = KeyguardSimPersoViewController.this;
                    int i = keyguardSimPersoViewController.mSubId;
                    ((KeyguardSimPersoView) keyguardSimPersoViewController.mView).postDelayed(new Runnable() { // from class: com.android.keyguard.KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            KeyguardSimPersoViewController.CheckSimPerso.this.onSimCheckResponse(supplyPersoForSubId);
                        }
                    }, 50L);
                }
            } catch (RemoteException e) {
                Log.e("KeyguardSimPersoView", "RemoteException for supplyPerso:", e);
                KeyguardSimPersoViewController keyguardSimPersoViewController2 = KeyguardSimPersoViewController.this;
                String str = KeyguardSimPersoViewController.SIM_TYPE;
                ((KeyguardSimPersoView) keyguardSimPersoViewController2.mView).postDelayed(new Runnable() { // from class: com.android.keyguard.KeyguardSimPersoViewController$CheckSimPerso$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        KeyguardSimPersoViewController.CheckSimPerso.this.onSimCheckResponse(false);
                    }
                }, 50L);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.keyguard.KeyguardSimPersoViewController$1] */
    public KeyguardSimPersoViewController(KeyguardSimPersoView keyguardSimPersoView, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, KeyguardMessageAreaController.Factory factory, LatencyTracker latencyTracker, LiftToActivateListener liftToActivateListener, EmergencyButtonController emergencyButtonController, FalsingCollector falsingCollector, FeatureFlags featureFlags, SecRotationWatcher secRotationWatcher, VibrationUtil vibrationUtil, AccessibilityManager accessibilityManager, ConfigurationController configurationController) {
        super(keyguardSimPersoView, keyguardUpdateMonitor, securityMode, lockPatternUtils, keyguardSecurityCallback, factory, latencyTracker, liftToActivateListener, emergencyButtonController, falsingCollector, featureFlags, secRotationWatcher, vibrationUtil, accessibilityManager, configurationController);
        this.mSimCheckInProgress = false;
        this.mOrientation = 1;
        this.mConfigurationListener = new ConfigurationController.ConfigurationListener() { // from class: com.android.keyguard.KeyguardSimPersoViewController.1
            @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
            public final void onConfigChanged(Configuration configuration) {
                KeyguardSimPersoViewController keyguardSimPersoViewController = KeyguardSimPersoViewController.this;
                int i = keyguardSimPersoViewController.mOrientation;
                int i2 = configuration.orientation;
                if (i != i2) {
                    keyguardSimPersoViewController.mOrientation = i2;
                    if (DeviceState.isCenterDisplayCutOut(keyguardSimPersoViewController.getContext())) {
                        if (configuration.orientation == 1) {
                            keyguardSimPersoViewController.mCarrierLabel.setMaxWidth(keyguardSimPersoViewController.getResources().getDimensionPixelSize(R.dimen.carrier_label_portrait_max_width));
                        } else {
                            keyguardSimPersoViewController.mCarrierLabel.setMaxWidth(Integer.MAX_VALUE);
                        }
                    }
                }
            }
        };
        this.mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardSimPersoViewController.2
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i, int i2, int i3) {
                KeyguardSimPersoViewController keyguardSimPersoViewController = KeyguardSimPersoViewController.this;
                if (i3 != 1 && i3 != 5) {
                    keyguardSimPersoViewController.resetState();
                    return;
                }
                if (!keyguardSimPersoViewController.mPaused && keyguardSimPersoViewController.getKeyguardSecurityCallback() != null && !keyguardSimPersoViewController.mKeyguardUpdateMonitor.isSimState(2)) {
                    keyguardSimPersoViewController.getKeyguardSecurityCallback().dismiss(KeyguardUpdateMonitor.getCurrentUser(), keyguardSimPersoViewController.mSecurityMode, true);
                } else if (i3 == 5 && SubscriptionManager.isValidSubscriptionId(i) && keyguardSimPersoViewController.mSubId != i) {
                    Log.d("KeyguardSimPersoView", "READY already came. Skip this");
                } else {
                    keyguardSimPersoViewController.resetState();
                }
            }
        };
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mConfigurationController = configurationController;
        PasswordTextView passwordTextView = this.mPasswordEntry;
        if (passwordTextView != null) {
            ((SecPasswordTextView) passwordTextView).mMaxLength = 8;
        }
        CarrierText carrierText = (CarrierText) ((KeyguardSimPersoView) this.mView).findViewById(R.id.carrier_text);
        this.mCarrierLabel = carrierText;
        if (DeviceState.isCenterDisplayCutOut(getContext())) {
            if (this.mOrientation == 1) {
                carrierText.setMaxWidth(getResources().getDimensionPixelSize(R.dimen.carrier_label_portrait_max_width));
            } else {
                carrierText.setMaxWidth(Integer.MAX_VALUE);
            }
        }
        ProgressBar progressBar = (ProgressBar) ((KeyguardSimPersoView) this.mView).findViewById(R.id.progress);
        this.mProgressBar = progressBar;
        progressBar.setIndeterminate(true);
        updateProgressBarDrawable();
    }

    @Override // com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final int getSecurityViewId() {
        return R.id.keyguard_sec_sim_perso_view;
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        super.onViewAttached();
        this.mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).addCallback(this.mConfigurationListener);
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController, com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        super.onViewDetached();
        this.mKeyguardUpdateMonitor.removeCallback(this.mUpdateMonitorCallback);
        ((ConfigurationControllerImpl) this.mConfigurationController).removeCallback(this.mConfigurationListener);
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardPinBasedInputViewController, com.android.keyguard.KeyguardAbsKeyInputViewController
    public final void resetState() {
        super.resetState();
        int nextSubIdForState = this.mKeyguardUpdateMonitor.getNextSubIdForState(12);
        if (nextSubIdForState != this.mSubId && SubscriptionManager.isValidSubscriptionId(nextSubIdForState)) {
            this.mSubId = nextSubIdForState;
        }
        KeyguardSecMessageAreaController keyguardSecMessageAreaController = this.mMessageAreaController;
        if (keyguardSecMessageAreaController != null) {
            keyguardSecMessageAreaController.setMessage(getContext().getString(R.string.kg_ktt_sim_perso_instructions), false);
        }
    }

    public final void updateProgressBarDrawable() {
        int i;
        boolean isWhiteKeyguardWallpaper = WallpaperUtils.isWhiteKeyguardWallpaper("background");
        ProgressBar progressBar = this.mProgressBar;
        Context context = getContext();
        if (isWhiteKeyguardWallpaper) {
            i = R.drawable.keyguard_progress_material_whitebg;
        } else {
            i = R.drawable.keyguard_progress_material;
        }
        progressBar.setIndeterminateDrawable(context.getDrawable(i));
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        updateProgressBarDrawable();
    }

    @Override // com.android.keyguard.KeyguardSecPinBasedInputViewController, com.android.keyguard.KeyguardSecAbsKeyInputViewController
    public final void verifyPasswordAndUnlock() {
        if (!(this.mPasswordEntry instanceof SecPasswordTextView)) {
            return;
        }
        KeyguardSecurityCallback keyguardSecurityCallback = getKeyguardSecurityCallback();
        String str = ((SecPasswordTextView) this.mPasswordEntry).mText;
        if (LsRune.SECURITY_KTT_USIM_TEXT && mNumRetry >= 5) {
            ((KeyguardSimPersoView) this.mView).resetPasswordText(true, true);
            this.mMessageAreaController.setMessage(getContext().getString(R.string.kg_password_perso_max_failed), false);
            keyguardSecurityCallback.userActivity();
            return;
        }
        if (str.length() == 0) {
            this.mMessageAreaController.setMessage(getContext().getString(R.string.kg_empty_sim_perso_hint), false);
            ((KeyguardSimPersoView) this.mView).resetPasswordText(true, true);
            keyguardSecurityCallback.userActivity();
            return;
        }
        if (str.length() < 4) {
            this.mMessageAreaController.setMessage(getContext().getString(R.string.kg_ktt_sim_perso_instructions), false);
            ((KeyguardSimPersoView) this.mView).resetPasswordText(true, true);
            keyguardSecurityCallback.userActivity();
            return;
        }
        setEnabledKeypad(false);
        this.mOkButton.setVisibility(8);
        this.mProgressBar.setVisibility(0);
        if (this.mCheckSimPersoThread == null) {
            this.mCheckSimPersoThread = new AnonymousClass3(str, this.mSubId, keyguardSecurityCallback);
            if (!this.mSimCheckInProgress) {
                this.mSimCheckInProgress = true;
                this.mCheckSimPersoThread.start();
            }
        }
    }
}
