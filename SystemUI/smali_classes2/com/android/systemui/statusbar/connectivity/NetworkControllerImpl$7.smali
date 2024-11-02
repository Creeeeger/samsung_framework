.class public final Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->val$enabled:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, [Ljava/lang/Void;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->val$enabled:Z

    .line 8
    .line 9
    if-eqz v1, :cond_a

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWarningDialogController:Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string/jumbo v4, "wifi_sharing_lite_popup_status"

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, v1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/high16 v7, 0x14800000

    .line 36
    .line 37
    const-string v8, "com.samsung.android.settings.wifi.WifiWarning"

    .line 38
    .line 39
    const-string v9, "com.android.settings"

    .line 40
    .line 41
    const-string/jumbo v10, "statusbar"

    .line 42
    .line 43
    .line 44
    const/16 v11, 0xc

    .line 45
    .line 46
    const/16 v12, 0xd

    .line 47
    .line 48
    iget-object v14, v1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    .line 52
    const-string v15, "extra_type"

    .line 53
    .line 54
    const-string/jumbo v13, "req_type"

    .line 55
    .line 56
    .line 57
    if-nez v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eq v6, v12, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-ne v6, v11, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v6, v5

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 75
    :goto_1
    if-nez v6, :cond_3

    .line 76
    .line 77
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApEnabledWithDualBand()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_5

    .line 82
    .line 83
    :cond_3
    invoke-virtual {v14, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroid/app/StatusBarManager;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 92
    .line 93
    .line 94
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .line 95
    .line 96
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const/4 v6, 0x1

    .line 109
    invoke-virtual {v1, v15, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_5
    const/4 v6, 0x1

    .line 117
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    .line 118
    .line 119
    .line 120
    move-result v16

    .line 121
    if-eqz v16, :cond_9

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingEnabled()Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_9

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eq v4, v12, :cond_7

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-ne v1, v11, :cond_6

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    move v1, v5

    .line 143
    goto :goto_3

    .line 144
    :cond_7
    :goto_2
    move v1, v6

    .line 145
    :goto_3
    if-eqz v1, :cond_9

    .line 146
    .line 147
    if-nez v3, :cond_9

    .line 148
    .line 149
    invoke-virtual {v14, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Landroid/app/StatusBarManager;

    .line 154
    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 158
    .line 159
    .line 160
    :cond_8
    new-instance v1, Landroid/content/Intent;

    .line 161
    .line 162
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const/4 v3, 0x5

    .line 175
    invoke-virtual {v1, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .line 180
    .line 181
    :catch_0
    :goto_4
    move v5, v6

    .line 182
    :cond_9
    if-nez v5, :cond_b

    .line 183
    .line 184
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->this$0:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 185
    .line 186
    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 187
    .line 188
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$7;->val$enabled:Z

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 191
    .line 192
    .line 193
    :cond_b
    const/4 v0, 0x0

    .line 194
    return-object v0
.end method
