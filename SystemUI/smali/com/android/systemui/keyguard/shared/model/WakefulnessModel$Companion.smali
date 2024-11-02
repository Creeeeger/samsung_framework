.class public final Lcom/android/systemui/keyguard/shared/model/WakefulnessModel$Companion;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel$Companion;-><init>()V

    return-void
.end method

.method public static fromWakefulnessLifecycle(Lcom/android/systemui/keyguard/WakefulnessLifecycle;)Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->Companion:Lcom/android/systemui/keyguard/shared/model/WakefulnessState$Companion;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    if-eq v2, v1, :cond_2

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->STARTING_TO_SLEEP:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Invalid Wakefulness value: "

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0

    .line 36
    :cond_1
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->AWAKE:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->STARTING_TO_WAKE:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->ASLEEP:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 43
    .line 44
    :goto_0
    sget-object v3, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->Companion:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason$Companion;

    .line 45
    .line 46
    iget v4, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    if-eq v4, v1, :cond_5

    .line 52
    .line 53
    const/16 v1, 0xf

    .line 54
    .line 55
    if-eq v4, v1, :cond_4

    .line 56
    .line 57
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->OTHER:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->POWER_BUTTON:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 64
    .line 65
    :goto_1
    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    .line 66
    .line 67
    const/4 v3, 0x4

    .line 68
    if-ne p0, v3, :cond_6

    .line 69
    .line 70
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->POWER_BUTTON:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_6
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;->OTHER:Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;

    .line 74
    .line 75
    :goto_2
    invoke-direct {v0, v2, v1, p0}, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;-><init>(Lcom/android/systemui/keyguard/shared/model/WakefulnessState;Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;Lcom/android/systemui/keyguard/shared/model/WakeSleepReason;)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method
