.class public Lcom/android/systemui/Rune;
.super Lcom/android/systemui/BaseRune;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final SYSUI_APPLOCK:Z

.field public static final SYSUI_BINDER_CALL_MONITOR:Z

.field public static final SYSUI_CHINA_FEATURE:Z

.field public static final SYSUI_MULTI_SIM:Z

.field public static final SYSUI_MULTI_USER:Z

.field public static final SYSUI_TEST_FOR_PLANK:Z

.field public static final SYSUI_UI_THREAD_MONITOR:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    .line 6
    .line 7
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    .line 12
    .line 13
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v0, v2

    .line 27
    :goto_1
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_TEST_FOR_PLANK:Z

    .line 28
    .line 29
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v0, v2, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq v0, v3, :cond_3

    .line 41
    .line 42
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v0, v1

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    :goto_2
    move v0, v2

    .line 52
    :goto_3
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    .line 53
    .line 54
    sget-boolean v3, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->STRICT_MODE_ENABLED:Z

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_6

    .line 65
    .line 66
    sget v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    .line 67
    .line 68
    const/4 v3, -0x2

    .line 69
    if-ne v0, v3, :cond_4

    .line 70
    .line 71
    const-string/jumbo v0, "ro.boot.rp"

    .line 72
    .line 73
    .line 74
    const/4 v3, -0x1

    .line 75
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sput v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    .line 80
    .line 81
    :cond_4
    sget v0, Lcom/android/systemui/util/DeviceType;->sRpCount:I

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    move v2, v1

    .line 87
    :cond_6
    :goto_4
    sput-boolean v2, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    .line 88
    .line 89
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    .line 94
    .line 95
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v2, "CscFeature_Common_SupportZProjectFunctionInGlobal"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    .line 106
    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/BaseRune;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static runIf(ILcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;)V
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda6;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static runIf(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
