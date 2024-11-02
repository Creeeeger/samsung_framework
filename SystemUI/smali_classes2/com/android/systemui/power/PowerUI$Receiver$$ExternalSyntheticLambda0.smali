.class public final synthetic Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/power/PowerUI$Receiver;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI$Receiver;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 2
    .line 3
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget v5, p0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 21
    .line 22
    const-string v1, "PowerUI"

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const-string v2, "evaluating which notification to show"

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string/jumbo v0, "using standard"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    new-instance v0, Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 40
    .line 41
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 42
    .line 43
    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    aget v7, v1, v9

    .line 49
    .line 50
    const/4 v10, 0x0

    .line 51
    aget v8, v1, v10

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/power/BatteryStateSnapshot;-><init>(IZZIIII)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 60
    .line 61
    check-cast v1, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 62
    .line 63
    iput-object v0, v1, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatterySnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 73
    .line 74
    iget v3, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 75
    .line 76
    iget v4, v2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 77
    .line 78
    iget-boolean v5, v2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 79
    .line 80
    if-ne v3, v4, :cond_3

    .line 81
    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v6, v10

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    :goto_0
    move v6, v9

    .line 88
    :goto_1
    iget-boolean v7, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 89
    .line 90
    if-nez v7, :cond_5

    .line 91
    .line 92
    if-lt v3, v4, :cond_4

    .line 93
    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    :cond_4
    if-gez v3, :cond_5

    .line 97
    .line 98
    iget v5, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    .line 99
    .line 100
    if-eq v5, v9, :cond_5

    .line 101
    .line 102
    move v5, v9

    .line 103
    goto :goto_2

    .line 104
    :cond_5
    move v5, v10

    .line 105
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 106
    .line 107
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryWarningTask:Lcom/android/systemui/power/PowerUI$7;

    .line 108
    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    if-eq v3, v4, :cond_6

    .line 112
    .line 113
    iget-boolean v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 118
    .line 119
    .line 120
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 121
    .line 122
    const-wide/16 v0, 0x1f4

    .line 123
    .line 124
    invoke-virtual {v8, v11, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :cond_6
    invoke-virtual {v0, v6}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showLowBatteryWarning(Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    if-nez v7, :cond_9

    .line 133
    .line 134
    if-le v3, v4, :cond_8

    .line 135
    .line 136
    if-lez v3, :cond_8

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_8
    move v9, v10

    .line 140
    :cond_9
    :goto_3
    if-eqz v9, :cond_b

    .line 141
    .line 142
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 143
    .line 144
    if-eqz v1, :cond_a

    .line 145
    .line 146
    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    .line 148
    .line 149
    iput-boolean v10, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningLowBatteryTask:Z

    .line 150
    .line 151
    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_b
    iget-boolean p0, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    .line 156
    .line 157
    if-eqz p0, :cond_c

    .line 158
    .line 159
    iget p0, v1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 160
    .line 161
    iget v1, v2, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 162
    .line 163
    if-eq p0, v1, :cond_c

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    .line 166
    .line 167
    .line 168
    :cond_c
    :goto_4
    return-void
.end method
