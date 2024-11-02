.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static numberOfAttemptsDone:I


# instance fields
.field public final mCheckPasswordCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

.field public final mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public final mCustomerAppContainer:Landroid/widget/RelativeLayout;

.field public final mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mMessageContainer:Landroid/widget/LinearLayout;

.field public final mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

.field public final mOptionContainer:Landroid/widget/RelativeLayout;

.field public final mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPhoneContainer:Landroid/widget/RelativeLayout;

.field public final mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

.field public final mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

.field public mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public final mRotationConsumer:Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

.field public final mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

.field public mSkipPin:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mTopContainer:Landroid/widget/LinearLayout;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

.field public final mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    .line 5
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 6
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    .line 7
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCheckPasswordCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    .line 8
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    .line 9
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

    .line 10
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v1, p16

    .line 13
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 15
    move-object/from16 v1, p17

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 16
    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 17
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 19
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    .line 20
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    .line 23
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0bfa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    .line 24
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0566

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    .line 25
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a052b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 26
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a052d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 27
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a052e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIEditText;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 28
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0530

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 29
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0561

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 30
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0514

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 31
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0799

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 32
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a00d4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    .line 33
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a07e0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    .line 34
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a00d7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 35
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a07e1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 36
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a07e3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 37
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0798

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    .line 38
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a054d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    .line 39
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method


# virtual methods
.method public final getInitialMessageResId()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "lock_settings"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 18
    .line 19
    return-object p0
.end method

.method public final handleAttemptLockout(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    new-instance v8, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;

    .line 24
    .line 25
    sub-long v4, p1, v0

    .line 26
    .line 27
    const-wide/16 v6, 0x3e8

    .line 28
    .line 29
    move-object v2, v8

    .line 30
    move-object v3, p0

    .line 31
    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;JJ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 39
    .line 40
    return-void
.end method

.method public final needsInput()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onPause()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUserInput()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string/jumbo v2, "mobile_data"

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "data_roaming"

    .line 40
    .line 41
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    .line 52
    .line 53
    invoke-virtual {v0, v4, v1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/android/keyguard/SecRotationWatcher;->addCallback(Ljava/util/function/IntConsumer;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    invoke-direct {v1, p0, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;I)V

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    .line 94
    .line 95
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;I)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;

    .line 107
    .line 108
    invoke-direct {v1, p0, v0, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 117
    .line 118
    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 119
    .line 120
    const v1, 0x7f0a07e2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 130
    .line 131
    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 132
    .line 133
    const v2, 0x7f0a079a

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    .line 141
    .line 142
    const v2, 0x7f080b4e

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    .line 147
    .line 148
    const v0, 0x7f080b52

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setKnoxGuardInfo()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRotationConsumer:Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRotationWatcher:Lcom/android/keyguard/SecRotationWatcher;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecRotationWatcher;->removeCallback(Ljava/util/function/IntConsumer;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public final resetPinErrorMessage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v0, 0x8

    .line 8
    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final resetState()V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 20
    .line 21
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 22
    .line 23
    const-string/jumbo v5, "remotelockscreen.lockoutdeadline"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4, v1, v2, v3, v0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-wide v6, v2

    .line 40
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    cmp-long v1, v6, v8

    .line 45
    .line 46
    if-gtz v1, :cond_1

    .line 47
    .line 48
    cmp-long v1, v6, v2

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 58
    .line 59
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 60
    .line 61
    invoke-static {v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(JLjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    move-wide v0, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 71
    .line 72
    iget-wide v10, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 73
    .line 74
    add-long/2addr v8, v10

    .line 75
    cmp-long v1, v6, v8

    .line 76
    .line 77
    if-lez v1, :cond_2

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 84
    .line 85
    iget-wide v8, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 86
    .line 87
    add-long/2addr v6, v8

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 94
    .line 95
    iget v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 96
    .line 97
    invoke-static {v1, v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0, v6, v7, v1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(JLjava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    :cond_2
    move-wide v0, v6

    .line 105
    :goto_1
    cmp-long v4, v0, v2

    .line 106
    .line 107
    if-lez v4, :cond_4

    .line 108
    .line 109
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 114
    .line 115
    if-nez v5, :cond_3

    .line 116
    .line 117
    const/4 v2, -0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 125
    .line 126
    iget v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 127
    .line 128
    const-string/jumbo v7, "remotelockscreen.failedunlockcount"

    .line 129
    .line 130
    .line 131
    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :try_start_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-interface {v6, v5, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    .line 140
    .line 141
    .line 142
    move-result-wide v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :catch_1
    long-to-int v2, v2

    .line 144
    :goto_2
    sput v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->numberOfAttemptsDone:I

    .line 145
    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->handleAttemptLockout(J)V

    .line 147
    .line 148
    .line 149
    :cond_4
    return-void
.end method

.method public final setKnoxGuardInfo()V
    .locals 15

    .line 1
    const-string v0, "KeyguardKnoxGuardView"

    .line 2
    .line 3
    const-string/jumbo v1, "setKnoxGuardInfo"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "mRemoteLockInfo is null - dismiss"

    .line 26
    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    .line 44
    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 54
    .line 55
    invoke-interface {v1, v0, p0, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    const-string v5, "mRemoteLockInfo.clientName is empty"

    .line 78
    .line 79
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v2, "mRemoteLockInfo.clientName is null"

    .line 84
    .line 85
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-string v2, ""

    .line 89
    .line 90
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 91
    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 98
    .line 99
    iget-object v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 100
    .line 101
    if-eqz v5, :cond_5

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 110
    .line 111
    if-eqz v6, :cond_6

    .line 112
    .line 113
    new-instance v7, Landroid/text/method/ScrollingMovementMethod;

    .line 114
    .line 115
    invoke-direct {v7}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    const-string v5, "mRemoteLockInfo.message is null"

    .line 126
    .line 127
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 131
    .line 132
    iget-boolean v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    .line 133
    .line 134
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    .line 135
    .line 136
    const/16 v7, 0x8

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    if-eqz v5, :cond_7

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    const-string v5, "mRemoteLockInfo.skipSupportContainer is true"

    .line 145
    .line 146
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const v9, 0x7f130962

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    iget-object v9, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 165
    .line 166
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    new-instance v5, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;

    .line 170
    .line 171
    invoke-direct {v5, p0, v1, v4}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/Object;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 178
    .line 179
    iget-object v5, v5, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 180
    .line 181
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    .line 182
    .line 183
    if-eqz v5, :cond_c

    .line 184
    .line 185
    const-string v9, "customer_package_name"

    .line 186
    .line 187
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    if-eqz v5, :cond_c

    .line 192
    .line 193
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 194
    .line 195
    if-eqz v5, :cond_c

    .line 196
    .line 197
    iget-object v10, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 198
    .line 199
    iget-object v10, v10, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 200
    .line 201
    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    const-string v11, "customer_app_name"

    .line 210
    .line 211
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v11

    .line 219
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 220
    .line 221
    .line 222
    move-result-object v11

    .line 223
    :try_start_0
    invoke-virtual {v11, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    goto :goto_3

    .line 228
    :catch_0
    move-exception v12

    .line 229
    new-instance v13, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    const-string v14, "NameNotFoundException while updating icon : "

    .line 232
    .line 233
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    :goto_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    xor-int/2addr v12, v4

    .line 255
    iget-object v13, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    .line 256
    .line 257
    if-eqz v3, :cond_a

    .line 258
    .line 259
    if-eqz v12, :cond_8

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_8
    invoke-virtual {v3, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 263
    .line 264
    .line 265
    move-result-object v10

    .line 266
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    :goto_4
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v11, v4, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    if-nez v5, :cond_9

    .line 278
    .line 279
    invoke-virtual {v3, v11}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    const v10, 0x7f0704e0

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    const v11, 0x7f0704de

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 306
    .line 307
    invoke-static {v3, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    new-instance v10, Landroid/graphics/Canvas;

    .line 312
    .line 313
    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    invoke-virtual {v5, v8, v8, v11, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 331
    .line 332
    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 339
    .line 340
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 341
    .line 342
    .line 343
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    invoke-direct {v5, v10, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_a
    if-eqz v12, :cond_b

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_b
    move-object v10, v9

    .line 360
    :goto_5
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    const v3, 0x7f080b51

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    .line 368
    .line 369
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const-string v5, "customerPackageName : "

    .line 372
    .line 373
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string v5, ",  isAppNameExist : "

    .line 380
    .line 381
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    if-eqz v6, :cond_e

    .line 395
    .line 396
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-nez v3, :cond_e

    .line 401
    .line 402
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    new-instance v3, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda5;

    .line 406
    .line 407
    invoke-direct {v3, p0, v9, v1, v8}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_c
    if-eqz v6, :cond_d

    .line 415
    .line 416
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 417
    .line 418
    .line 419
    :cond_d
    const-string v3, "mRemoteLockInfo.bundle is null"

    .line 420
    .line 421
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    :cond_e
    :goto_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 425
    .line 426
    iget-object v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 427
    .line 428
    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    .line 429
    .line 430
    if-eqz v3, :cond_10

    .line 431
    .line 432
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 433
    .line 434
    if-eqz v6, :cond_10

    .line 435
    .line 436
    iget-object v9, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 437
    .line 438
    if-eqz v9, :cond_10

    .line 439
    .line 440
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-eqz v3, :cond_f

    .line 453
    .line 454
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_f
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    const v10, 0x7f13095f

    .line 466
    .line 467
    .line 468
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v3, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    .line 481
    .line 482
    new-instance v2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda5;

    .line 483
    .line 484
    invoke-direct {v2, p0, v0, v1, v4}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    .line 489
    .line 490
    goto :goto_8

    .line 491
    :cond_10
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    const-string v1, "mRemoteLockInfo.phoneNumber is null"

    .line 495
    .line 496
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    .line 500
    .line 501
    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    .line 502
    .line 503
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    .line 504
    .line 505
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateNetworkSettingsButton()V

    .line 506
    .line 507
    .line 508
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    .line 509
    .line 510
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 511
    .line 512
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 513
    .line 514
    if-eqz v0, :cond_11

    .line 515
    .line 516
    invoke-virtual {v2, v7}, Lcom/android/systemui/widget/SystemUIEditText;->setVisibility(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v7}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 520
    .line 521
    .line 522
    goto :goto_9

    .line 523
    :cond_11
    invoke-virtual {v2, v8}, Lcom/android/systemui/widget/SystemUIEditText;->setVisibility(I)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v8}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 530
    .line 531
    .line 532
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 541
    .line 542
    const/high16 v2, 0x3f800000    # 1.0f

    .line 543
    .line 544
    cmpl-float v1, v1, v2

    .line 545
    .line 546
    if-lez v1, :cond_12

    .line 547
    .line 548
    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 549
    .line 550
    :cond_12
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 551
    .line 552
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 553
    .line 554
    .line 555
    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 556
    .line 557
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 562
    .line 563
    invoke-virtual {v2, v8}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 568
    .line 569
    .line 570
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 571
    .line 572
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 573
    .line 574
    mul-float/2addr v2, v3

    .line 575
    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 576
    .line 577
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 582
    .line 583
    .line 584
    return-void
.end method

.method public final setLong(JLjava/lang/String;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p3, p1, p2, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p2, "Couldn\'t write long "

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "KeyguardKnoxGuardView"

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "showToast : "

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "KeyguardKnoxGuardView"

    .line 26
    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-wide/16 v1, 0x7d0

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final updateLayout()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateTopContainer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final updateNetworkSettingsButton()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move v2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v2, v1

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAllSimState()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const-string/jumbo v5, "updateNetworkSettingsButton wifi : "

    .line 39
    .line 40
    .line 41
    const-string v6, ",  mobileData : "

    .line 42
    .line 43
    const-string v7, ",  wifiOnly : "

    .line 44
    .line 45
    invoke-static {v5, v2, v6, v0, v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, ",  noSimState : "

    .line 50
    .line 51
    const-string v7, "KeyguardKnoxGuardView"

    .line 52
    .line 53
    invoke-static {v5, v3, v6, v4, v7}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 v5, 0x8

    .line 57
    .line 58
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    move v2, v5

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    move v2, v1

    .line 67
    :goto_2
    invoke-virtual {v6, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    .line 71
    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    if-nez v3, :cond_4

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    if-nez v4, :cond_5

    .line 79
    .line 80
    :cond_4
    move v1, v5

    .line 81
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_6
    return-void
.end method

.method public final updateTopContainer()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    int-to-float v0, v0

    .line 14
    const v2, 0x7f0704f2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    mul-float/2addr v2, v0

    .line 22
    float-to-int v2, v2

    .line 23
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    const v5, 0x7f0704fd

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const v6, 0x7f0704f4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sub-int/2addr v5, v6

    .line 54
    const v6, 0x7f0704f3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    sub-int/2addr v5, v6

    .line 62
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    .line 81
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 82
    .line 83
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 84
    .line 85
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    .line 87
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    const v2, 0x7f0704e8

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    mul-float/2addr v2, v0

    .line 101
    float-to-int v2, v2

    .line 102
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    .line 112
    .line 113
    if-nez v3, :cond_1

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_1

    .line 120
    .line 121
    const p0, 0x7f0704e7

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_2

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const p0, 0x7f0704e5

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_3
    :goto_0
    const p0, 0x7f0704e6

    .line 143
    .line 144
    .line 145
    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    mul-float/2addr p0, v0

    .line 150
    float-to-int p0, p0

    .line 151
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 152
    .line 153
    .line 154
    :cond_4
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 7

    .line 1
    const-string v0, "KeyguardKnoxGuardView"

    .line 2
    .line 3
    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    .line 21
    check-cast v2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    .line 28
    .line 29
    .line 30
    array-length v2, v1

    .line 31
    const/4 v4, 0x3

    .line 32
    const/4 v5, 0x1

    .line 33
    if-gt v2, v4, :cond_1

    .line 34
    .line 35
    array-length v0, v1

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 43
    .line 44
    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const v1, 0x7f130961

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 65
    .line 66
    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 67
    .line 68
    invoke-virtual {v0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 72
    .line 73
    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 74
    .line 75
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCheckPasswordCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    .line 88
    .line 89
    invoke-interface {v2, v4, v1, v3, v6}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 93
    .line 94
    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    .line 95
    .line 96
    invoke-virtual {p0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    const-string p0, "Can\'t connect KNOX_GUARD"

    .line 101
    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_0
    return-void
.end method
