.class public final Lcom/android/systemui/power/notification/LowBatteryNotification;
.super Lcom/android/systemui/power/notification/PowerUiNotification;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mBatteryLevel:I

.field public mCurrentBatteryMode:I

.field public final mIsPowerSavingSupported:Z

.field public final mOpenBatterySettings:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/power/notification/PowerUiNotification;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p1, "ro.csc.sales_code"

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "U06"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mIsPowerSavingSupported:Z

    .line 20
    .line 21
    new-instance p1, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v0, "android.intent.action.POWER_USAGE_SUMMARY"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/high16 v0, 0x1c800000

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mOpenBatterySettings:Landroid/content/Intent;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final dismissNotification()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 5
    .line 6
    const-string v2, "low_battery"

    .line 7
    .line 8
    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getBuilder()Landroid/app/Notification$Builder;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mBatteryLevel:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const v2, 0x7f1301da

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v2, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mCurrentBatteryMode:I

    .line 21
    .line 22
    iget-boolean v3, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mIsPowerSavingSupported:Z

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const v2, 0x7f1301d7

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const v2, 0x7f1301d5

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    const v2, 0x7f1301d8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const v2, 0x7f1301d6

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :goto_0
    const-string v4, "LOWBAT"

    .line 72
    .line 73
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/systemui/power/notification/PowerUiNotification;->getCommonBuilder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v4, 0x1

    .line 78
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v5, "PNW.dismissedWarning"

    .line 83
    .line 84
    invoke-static {v1, v5}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 93
    .line 94
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-object v5, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mOpenBatterySettings:Landroid/content/Intent;

    .line 110
    .line 111
    invoke-virtual {v5, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const/4 v5, 0x0

    .line 116
    if-eqz v2, :cond_3

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    move v4, v5

    .line 120
    :goto_1
    if-eqz v4, :cond_4

    .line 121
    .line 122
    iget p0, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mCurrentBatteryMode:I

    .line 123
    .line 124
    if-nez p0, :cond_4

    .line 125
    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    const-string p0, "PNW.powerMode"

    .line 129
    .line 130
    invoke-static {v1, p0}, Lcom/android/systemui/power/PowerUtils;->pendingBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 135
    .line 136
    .line 137
    :cond_4
    sget-boolean p0, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    .line 138
    .line 139
    if-eqz p0, :cond_5

    .line 140
    .line 141
    invoke-static {v1, v0, v5}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 142
    .line 143
    .line 144
    const p0, 0x7f080a3d

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    new-instance p0, Landroid/os/Bundle;

    .line 152
    .line 153
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .line 155
    .line 156
    const v2, 0x7f1301d4

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "android.substName"

    .line 164
    .line 165
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 169
    .line 170
    .line 171
    const p0, 0x7f08110c

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 175
    .line 176
    .line 177
    :goto_2
    return-object v0
.end method

.method public final setInformation(Lcom/android/systemui/power/SecBatteryStatsSnapshot;)V
    .locals 1

    .line 1
    iget v0, p1, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->batteryLevel:I

    .line 2
    .line 3
    iput v0, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mBatteryLevel:I

    .line 4
    .line 5
    iget p1, p1, Lcom/android/systemui/power/SecBatteryStatsSnapshot;->currentBatteryMode:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/power/notification/LowBatteryNotification;->mCurrentBatteryMode:I

    .line 8
    .line 9
    return-void
.end method

.method public final showNotification()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/power/notification/LowBatteryNotification;->getBuilder()Landroid/app/Notification$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 13
    .line 14
    const-string v3, "low_battery"

    .line 15
    .line 16
    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
