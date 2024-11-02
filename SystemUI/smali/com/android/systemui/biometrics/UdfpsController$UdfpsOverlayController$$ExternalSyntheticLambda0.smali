.class public final synthetic Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    .line 4
    .line 5
    iget-wide v14, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$1:J

    .line 6
    .line 7
    iget v13, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;->f$3:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    .line 10
    .line 11
    iget-object v12, v1, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 12
    .line 13
    new-instance v11, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 14
    .line 15
    move-object v2, v11

    .line 16
    iget-object v3, v12, Lcom/android/systemui/biometrics/UdfpsController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, v12, Lcom/android/systemui/biometrics/UdfpsController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 19
    .line 20
    iget-object v5, v12, Lcom/android/systemui/biometrics/UdfpsController;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    .line 22
    iget-object v6, v12, Lcom/android/systemui/biometrics/UdfpsController;->mWindowManager:Landroid/view/WindowManager;

    .line 23
    .line 24
    iget-object v7, v12, Lcom/android/systemui/biometrics/UdfpsController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 25
    .line 26
    iget-object v8, v12, Lcom/android/systemui/biometrics/UdfpsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 27
    .line 28
    iget-object v9, v12, Lcom/android/systemui/biometrics/UdfpsController;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 29
    .line 30
    iget-object v10, v12, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 31
    .line 32
    move-object/from16 p0, v11

    .line 33
    .line 34
    iget-object v11, v12, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 35
    .line 36
    move-object/from16 v30, p0

    .line 37
    .line 38
    move/from16 v16, v13

    .line 39
    .line 40
    iget-object v13, v12, Lcom/android/systemui/biometrics/UdfpsController;->mDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 41
    .line 42
    move-object/from16 p0, v2

    .line 43
    .line 44
    move-object v2, v12

    .line 45
    move-object v12, v13

    .line 46
    iget-object v13, v2, Lcom/android/systemui/biometrics/UdfpsController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 47
    .line 48
    move/from16 v22, v16

    .line 49
    .line 50
    move-wide/from16 v16, v14

    .line 51
    .line 52
    iget-object v14, v2, Lcom/android/systemui/biometrics/UdfpsController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 53
    .line 54
    move-object/from16 v31, v3

    .line 55
    .line 56
    move-object/from16 v32, v4

    .line 57
    .line 58
    move-wide/from16 v3, v16

    .line 59
    .line 60
    iget-object v15, v2, Lcom/android/systemui/biometrics/UdfpsController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 61
    .line 62
    move-object/from16 v33, v5

    .line 63
    .line 64
    iget-object v5, v2, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 65
    .line 66
    move-object/from16 v16, v5

    .line 67
    .line 68
    iget-object v5, v2, Lcom/android/systemui/biometrics/UdfpsController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 69
    .line 70
    move-object/from16 v17, v5

    .line 71
    .line 72
    iget-object v5, v2, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 73
    .line 74
    move-object/from16 v18, v5

    .line 75
    .line 76
    iget-object v5, v2, Lcom/android/systemui/biometrics/UdfpsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 77
    .line 78
    move-object/from16 v19, v5

    .line 79
    .line 80
    new-instance v5, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;

    .line 81
    .line 82
    move-object/from16 v24, v5

    .line 83
    .line 84
    invoke-direct {v5, v1, v3, v4}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;J)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v2, Lcom/android/systemui/biometrics/UdfpsController;->mActivityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 88
    .line 89
    move-object/from16 v25, v1

    .line 90
    .line 91
    iget-object v1, v2, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 92
    .line 93
    move-object/from16 v26, v1

    .line 94
    .line 95
    iget-object v1, v2, Lcom/android/systemui/biometrics/UdfpsController;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 96
    .line 97
    move-object/from16 v27, v1

    .line 98
    .line 99
    iget-object v1, v2, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 100
    .line 101
    move-object/from16 v28, v1

    .line 102
    .line 103
    iget-object v1, v2, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 104
    .line 105
    move-object/from16 v29, v1

    .line 106
    .line 107
    move-wide/from16 v20, v3

    .line 108
    .line 109
    move-object/from16 v23, v0

    .line 110
    .line 111
    move-object v0, v2

    .line 112
    move-object/from16 v3, v31

    .line 113
    .line 114
    move-object/from16 v4, v32

    .line 115
    .line 116
    move-object/from16 v5, v33

    .line 117
    .line 118
    move-object/from16 v2, p0

    .line 119
    .line 120
    invoke-direct/range {v2 .. v29}, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;Lcom/android/systemui/util/settings/SecureSettings;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/settingslib/udfps/UdfpsUtils;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v1, v30

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
