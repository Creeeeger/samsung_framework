.class public final Lcom/android/systemui/doze/DozeSensors$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final updateUdfpsEnrolled()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_7

    .line 21
    .line 22
    aget-object v4, v0, v3

    .line 23
    .line 24
    iget v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    .line 25
    .line 26
    const/16 v6, 0xb

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    iget-object v8, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 30
    .line 31
    if-ne v6, v5, :cond_2

    .line 32
    .line 33
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v8, v5}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move v7, v2

    .line 49
    :goto_1
    iget-boolean v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 50
    .line 51
    if-ne v5, v7, :cond_1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    iput-boolean v7, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    const/16 v6, 0xa

    .line 61
    .line 62
    if-ne v6, v5, :cond_6

    .line 63
    .line 64
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 65
    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 69
    .line 70
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 71
    .line 72
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v8, v5}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_4

    .line 81
    .line 82
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    .line 83
    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    move v7, v2

    .line 88
    :cond_4
    :goto_2
    iget-boolean v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 89
    .line 90
    if-ne v5, v7, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    iput-boolean v7, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    return-void
.end method
