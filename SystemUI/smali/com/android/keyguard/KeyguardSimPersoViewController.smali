.class public final Lcom/android/keyguard/KeyguardSimPersoViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DOMESTIC_OTA_START:Ljava/lang/String;

.field public static final SIM_TYPE:Ljava/lang/String;

.field public static mNumRetry:I


# instance fields
.field public final mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field public mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mOrientation:I

.field public final mProgressBar:Landroid/widget/ProgressBar;

.field public volatile mSimCheckInProgress:Z

.field public mSubId:I

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "ril.simtype"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "ril.domesticOtaStart"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->DOMESTIC_OTA_START:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    .line 9
    .line 10
    new-instance p3, Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V

    .line 13
    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    .line 16
    .line 17
    new-instance p3, Lcom/android/keyguard/KeyguardSimPersoViewController$2;

    .line 18
    .line 19
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 25
    .line 26
    iput-object p15, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    check-cast p2, Lcom/android/keyguard/SecPasswordTextView;

    .line 33
    .line 34
    const/16 p3, 0x8

    .line 35
    .line 36
    iput p3, p2, Lcom/android/keyguard/SecPasswordTextView;->mMaxLength:I

    .line 37
    .line 38
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 39
    .line 40
    check-cast p2, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 41
    .line 42
    const p3, 0x7f0a0231

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/android/keyguard/CarrierText;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    iget p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    .line 64
    .line 65
    if-ne p3, p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    const p4, 0x7f070179

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const p3, 0x7fffffff

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 89
    .line 90
    check-cast p2, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 91
    .line 92
    const p3, 0x7f0a0829

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/widget/ProgressBar;

    .line 100
    .line 101
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->updateProgressBarDrawable()V

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final getSecurityViewId()I
    .locals 0

    .line 1
    const p0, 0x7f0a054a

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final resetState()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const v1, 0x7f130897

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final updateProgressBarDrawable()V
    .locals 2

    .line 1
    const-string v0, "background"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const v0, 0x7f080b44

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f080b43

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->updateProgressBarDrawable()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    .line 13
    .line 14
    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 17
    .line 18
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    sget v2, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    if-lt v2, v5, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    .line 31
    check-cast v1, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 32
    .line 33
    invoke-virtual {v1, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const v2, 0x7f13090d

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const v5, 0x7f130805

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 79
    .line 80
    check-cast p0, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 81
    .line 82
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v5, 0x4

    .line 94
    if-ge v2, v5, :cond_3

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const v5, 0x7f130897

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 113
    .line 114
    check-cast p0, Lcom/android/keyguard/KeyguardSimPersoView;

    .line 115
    .line 116
    invoke-virtual {p0, v4, v4}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    .line 127
    .line 128
    const/16 v5, 0x8

    .line 129
    .line 130
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    .line 139
    .line 140
    if-nez v2, :cond_4

    .line 141
    .line 142
    iget v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 143
    .line 144
    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    .line 145
    .line 146
    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/keyguard/KeyguardSimPersoViewController$3;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;ILcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 147
    .line 148
    .line 149
    iput-object v3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    .line 150
    .line 151
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    .line 152
    .line 153
    if-nez v0, :cond_4

    .line 154
    .line 155
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 160
    .line 161
    .line 162
    :cond_4
    return-void
.end method
