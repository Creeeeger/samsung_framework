.class public final Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x10000000

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p1, "com.android.systemui"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static declared-synchronized setPowerSaveMode(ILandroid/content/Context;ZZ)V
    .locals 7

    .line 1
    const-class v0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    new-instance v2, Landroid/os/Bundle;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v4, "extra_confirm_only"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-string v6, "low_power_warning_acknowledged"

    .line 29
    .line 30
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v6, "extra_low_power_warning_acknowledged"

    .line 41
    .line 42
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    move v4, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v4, "PNW.startSaverConfirmation"

    .line 51
    .line 52
    invoke-static {p1, v4, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    move v4, v3

    .line 56
    :goto_0
    if-eqz v4, :cond_1

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :cond_1
    if-eqz p2, :cond_2

    .line 61
    .line 62
    if-nez p3, :cond_2

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    const-string v4, "low_power_warning_acknowledged"

    .line 69
    .line 70
    const/4 v6, -0x2

    .line 71
    invoke-static {p3, v4, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    const-string v4, "extra_low_power_warning_acknowledged"

    .line 79
    .line 80
    invoke-static {p3, v4, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    const-class p3, Landroid/os/PowerManager;

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, Landroid/os/PowerManager;

    .line 90
    .line 91
    invoke-virtual {p3, p2}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_4

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    const-string p3, "low_power_manual_activation_count"

    .line 100
    .line 101
    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    add-int/2addr p3, v3

    .line 106
    const-string v3, "low_power_manual_activation_count"

    .line 107
    .line 108
    invoke-static {v1, v3, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;

    .line 112
    .line 113
    invoke-direct {v3, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iget v4, v3, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    .line 117
    .line 118
    if-lt p3, v4, :cond_3

    .line 119
    .line 120
    iget v3, v3, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    .line 121
    .line 122
    if-gt p3, v3, :cond_3

    .line 123
    .line 124
    const-string p3, "low_power_trigger_level"

    .line 125
    .line 126
    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    if-nez p3, :cond_3

    .line 131
    .line 132
    const-string/jumbo p3, "suppress_auto_battery_saver_suggestion"

    .line 133
    .line 134
    .line 135
    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    if-nez p3, :cond_3

    .line 140
    .line 141
    const-string p3, "PNW.autoSaverSuggestion"

    .line 142
    .line 143
    invoke-static {p1, p3, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    new-instance p3, Landroid/os/Bundle;

    .line 147
    .line 148
    const/4 v1, 0x2

    .line 149
    invoke-direct {p3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 150
    .line 151
    .line 152
    const-string v1, "extra_power_save_mode_manual_enabled_reason"

    .line 153
    .line 154
    invoke-virtual {p3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    const-string p0, "extra_power_save_mode_manual_enabled"

    .line 158
    .line 159
    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    const-string p0, "com.android.settingslib.fuelgauge.ACTION_SAVER_STATE_MANUAL_UPDATE"

    .line 163
    .line 164
    invoke-static {p1, p0, p3}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    monitor-exit v0

    .line 168
    return-void

    .line 169
    :cond_4
    monitor-exit v0

    .line 170
    return-void

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    monitor-exit v0

    .line 173
    throw p0
.end method
