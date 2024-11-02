.class public final Lcom/android/systemui/doze/AODScreenBrightness;
.super Lcom/android/systemui/doze/DozeScreenBrightness;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBrightnessValues:[I

.field public mDozeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/doze/DozeMachine$Service;",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            "[",
            "Ljava/util/Optional<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Lcom/android/systemui/doze/DozeHost;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/util/sensors/AsyncSensorManager;[Ljava/util/Optional;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/settings/SystemSettings;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    const/16 p2, 0x61

    .line 6
    .line 7
    filled-new-array {p1, p2}, [I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    .line 12
    .line 13
    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_BRIGHTNESS_CONTROL:Z

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const p1, 0x10002

    .line 18
    .line 19
    .line 20
    iput p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final resetBrightnessToDefault()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/systemui/doze/AODScreenBrightness$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    aget p1, p1, p2

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    if-eq p1, p2, :cond_3

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    if-eq p1, p2, :cond_2

    .line 14
    .line 15
    const/4 p2, 0x3

    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    if-eq p1, p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 27
    .line 28
    iget p2, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-interface {p1, p2, v0}, Lcom/android/systemui/doze/DozeMachine$Service;->semSetDozeScreenBrightness(II)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 35
    .line 36
    const/high16 p1, 0x3f800000    # 1.0f

    .line 37
    .line 38
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodDimmingScrim(F)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/doze/AODScreenBrightness;->resetBrightnessToDefault()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final updateDozeBrightness(III)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    iput p1, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mDozeMode:I

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    if-ne p3, v3, :cond_3

    .line 14
    .line 15
    if-ltz p2, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    .line 18
    .line 19
    array-length v4, p3

    .line 20
    if-lt p2, v4, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    aget p3, p3, p2

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    move p3, v3

    .line 27
    :cond_3
    :goto_2
    if-ltz p3, :cond_4

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_4
    move v1, v2

    .line 31
    :goto_3
    if-nez v0, :cond_5

    .line 32
    .line 33
    if-eqz v1, :cond_6

    .line 34
    .line 35
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/doze/DozeScreenBrightness;->mDozeService:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 36
    .line 37
    invoke-interface {p0, p1, p3}, Lcom/android/systemui/doze/DozeMachine$Service;->semSetDozeScreenBrightness(II)V

    .line 38
    .line 39
    .line 40
    :cond_6
    return-void
.end method
