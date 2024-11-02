.class public final Lcom/android/keyguard/SecurityUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sImeHeight:[I

.field public static sMainDisplayHeight:I

.field public static sMainDisplayWidth:I

.field public static sPINContainerBottomMargin:I

.field public static sPasswordViewFlipperWidth:I

.field public static sSubDisplayWidth:I

.field public static sViewFlipperWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLandscapeViewWidth(ILandroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x1050255

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    mul-int/lit8 v0, p1, 0x2

    .line 13
    .line 14
    sub-int v0, p0, v0

    .line 15
    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    sub-int/2addr p0, p1

    .line 33
    sget p1, Lcom/android/systemui/util/DeviceState;->sInDisplayFingerprintHeight:I

    .line 34
    .line 35
    sub-int/2addr p0, p1

    .line 36
    div-int/lit8 v0, p0, 0x2

    .line 37
    .line 38
    :cond_0
    return v0
.end method

.method public static checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 8
    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    if-nez v0, :cond_3

    .line 16
    .line 17
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 18
    .line 19
    if-eq p0, v0, :cond_3

    .line 20
    .line 21
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 22
    .line 23
    if-eq p0, v0, :cond_3

    .line 24
    .line 25
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 26
    .line 27
    if-eq p0, v0, :cond_3

    .line 28
    .line 29
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 30
    .line 31
    if-eq p0, v0, :cond_3

    .line 32
    .line 33
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 34
    .line 35
    if-ne p0, v0, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v0, v1

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    :goto_2
    move v0, v2

    .line 41
    :goto_3
    if-nez v0, :cond_5

    .line 42
    .line 43
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 44
    .line 45
    if-ne p0, v0, :cond_4

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move v0, v1

    .line 49
    goto :goto_5

    .line 50
    :cond_5
    :goto_4
    move v0, v2

    .line 51
    :goto_5
    if-nez v0, :cond_7

    .line 52
    .line 53
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Permanent:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 54
    .line 55
    if-ne p0, v0, :cond_6

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_6
    move v0, v1

    .line 59
    goto :goto_7

    .line 60
    :cond_7
    :goto_6
    move v0, v2

    .line 61
    :goto_7
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    .line 62
    .line 63
    if-eqz v3, :cond_a

    .line 64
    .line 65
    if-nez v0, :cond_9

    .line 66
    .line 67
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 68
    .line 69
    if-ne p0, v0, :cond_8

    .line 70
    .line 71
    goto :goto_8

    .line 72
    :cond_8
    move v0, v1

    .line 73
    goto :goto_9

    .line 74
    :cond_9
    :goto_8
    move v0, v2

    .line 75
    :cond_a
    :goto_9
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_d

    .line 80
    .line 81
    if-nez v0, :cond_b

    .line 82
    .line 83
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 84
    .line 85
    if-eq p0, v0, :cond_c

    .line 86
    .line 87
    :cond_b
    move v1, v2

    .line 88
    :cond_c
    move v0, v1

    .line 89
    :cond_d
    return v0
.end method

.method public static getCurrentRotation(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public static getFoldPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    const v1, 0x7f07037f

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    mul-float/2addr v1, v0

    .line 28
    const/high16 v2, 0x40800000    # 4.0f

    .line 29
    .line 30
    mul-float/2addr v1, v2

    .line 31
    const v2, 0x7f07037d

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    mul-float/2addr p0, v0

    .line 39
    const/high16 v0, 0x40400000    # 3.0f

    .line 40
    .line 41
    mul-float/2addr p0, v0

    .line 42
    add-float/2addr p0, v1

    .line 43
    float-to-int p0, p0

    .line 44
    return p0
.end method

.method public static getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I
    .locals 1

    .line 1
    sget v0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->initMainDisplaySize(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    sget p0, Lcom/android/keyguard/SecurityUtils;->sPasswordViewFlipperWidth:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    sget p0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    .line 14
    .line 15
    :goto_0
    return p0
.end method

.method public static getPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v1, v1

    .line 40
    const v2, 0x7f070a50

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    mul-float/2addr v2, v1

    .line 48
    const/high16 v1, 0x40800000    # 4.0f

    .line 49
    .line 50
    mul-float/2addr v2, v1

    .line 51
    int-to-float v0, v0

    .line 52
    const v1, 0x7f070a4d

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    mul-float/2addr p0, v0

    .line 60
    const/high16 v0, 0x40400000    # 3.0f

    .line 61
    .line 62
    mul-float/2addr p0, v0

    .line 63
    add-float/2addr p0, v2

    .line 64
    float-to-int p0, p0

    .line 65
    return p0
.end method

.method public static getSimSlotNum(I)I
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, -0x1

    .line 21
    :goto_0
    return p0
.end method

.method public static getStrongAuthPopupString(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;I)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p3}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v2, :cond_4

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/android/keyguard/SecurityUtils;->isEmptyStrongAuthPopupMessage(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_4

    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    if-eq p3, p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x7

    .line 26
    if-eq p3, p0, :cond_0

    .line 27
    .line 28
    const/16 p0, 0x11

    .line 29
    .line 30
    if-ne p3, p0, :cond_4

    .line 31
    .line 32
    :cond_0
    new-instance p0, Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string p3, "%1$s"

    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const-string v2, "%2$s"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v2, v2, -0x4

    .line 50
    .line 51
    if-ltz p3, :cond_3

    .line 52
    .line 53
    if-gez v2, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v3, ""

    .line 57
    .line 58
    filled-new-array {v3, v3}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "none"

    .line 70
    .line 71
    .line 72
    iget-object v3, v0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$1;

    .line 81
    .line 82
    invoke-direct {v1, v0, p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder$1;-><init>(Lcom/android/keyguard/KeyguardTextBuilder;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V

    .line 83
    .line 84
    .line 85
    const/16 p1, 0x21

    .line 86
    .line 87
    invoke-virtual {p0, v1, p3, v2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v3, p0

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    const-string p0, "Unnecessary to update this message : promptReasonString = "

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, "KeyguardTextBuilder"

    .line 99
    .line 100
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_1
    return-object v3
.end method

.method public static getStrongAuthPrompt()I
    .locals 4

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    and-int/lit8 v1, v3, 0x1

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_1
    and-int/lit8 v1, v3, 0x2

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    return v0

    .line 43
    :cond_2
    and-int/lit8 v1, v3, 0x10

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    return v0

    .line 49
    :cond_3
    and-int/lit16 v1, v3, 0x80

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/4 v0, 0x7

    .line 54
    return v0

    .line 55
    :cond_4
    if-nez v0, :cond_5

    .line 56
    .line 57
    const/16 v0, 0x11

    .line 58
    .line 59
    return v0

    .line 60
    :cond_5
    return v2
.end method

.method public static getTabletPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v1, v1

    .line 40
    const v2, 0x7f0714b2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    mul-float/2addr v2, v1

    .line 48
    const/high16 v1, 0x40800000    # 4.0f

    .line 49
    .line 50
    mul-float/2addr v2, v1

    .line 51
    int-to-float v0, v0

    .line 52
    const v1, 0x7f0714b0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    mul-float/2addr p0, v0

    .line 60
    const/high16 v0, 0x40400000    # 3.0f

    .line 61
    .line 62
    mul-float/2addr p0, v0

    .line 63
    add-float/2addr p0, v2

    .line 64
    float-to-int p0, p0

    .line 65
    return p0
.end method

.method public static initMainDisplaySize(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    .line 40
    .line 41
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    sput v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    .line 46
    .line 47
    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const v2, 0x7f0704fc

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    mul-float/2addr v1, v0

    .line 62
    float-to-int v0, v1

    .line 63
    sput v0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    .line 64
    .line 65
    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    .line 66
    .line 67
    int-to-float v0, v0

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const v1, 0x7f070503

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    mul-float/2addr p0, v0

    .line 80
    float-to-int p0, p0

    .line 81
    sput p0, Lcom/android/keyguard/SecurityUtils;->sPasswordViewFlipperWidth:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    sget p0, Lcom/android/keyguard/SecurityUtils;->sSubDisplayWidth:I

    .line 85
    .line 86
    if-nez p0, :cond_1

    .line 87
    .line 88
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    sput p0, Lcom/android/keyguard/SecurityUtils;->sSubDisplayWidth:I

    .line 93
    .line 94
    :cond_1
    :goto_0
    return-void
.end method

.method public static isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthShowing()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 30
    .line 31
    if-ne p0, v0, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 34
    :cond_2
    return v1
.end method

.method public static isEmptyStrongAuthPopupMessage(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static matchSignature(Landroid/content/pm/Signature;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :try_start_0
    const-string v0, "SHA256"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    new-array v0, v0, [C

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    array-length v1, p0

    .line 32
    mul-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    new-array v1, v1, [C

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_1
    array-length v3, p0

    .line 38
    if-ge v2, v3, :cond_0

    .line 39
    .line 40
    aget-byte v3, p0, v2

    .line 41
    .line 42
    and-int/lit16 v3, v3, 0xff

    .line 43
    .line 44
    mul-int/lit8 v4, v2, 0x2

    .line 45
    .line 46
    ushr-int/lit8 v5, v3, 0x4

    .line 47
    .line 48
    aget-char v5, v0, v5

    .line 49
    .line 50
    aput-char v5, v1, v4

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0xf

    .line 55
    .line 56
    aget-char v3, v0, v3

    .line 57
    .line 58
    aput-char v3, v1, v4

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 66
    .line 67
    .line 68
    const-string v0, "0848EDB80D10A557AA0D885AB3B669C915DCD6BCA8D78715568A06876AACD7CD"

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    return p0

    .line 75
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
