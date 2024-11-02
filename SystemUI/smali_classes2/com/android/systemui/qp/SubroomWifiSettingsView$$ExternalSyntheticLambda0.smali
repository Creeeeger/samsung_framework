.class public final synthetic Lcom/android/systemui/qp/SubroomWifiSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomWifiSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomWifiSettingsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomWifiSettingsView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomWifiSettingsView;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/qp/SubroomWifiSettingsView;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 15
    .line 16
    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isWifiTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p0, "SubroomWifiSettingsView"

    .line 25
    .line 26
    const-string p1, "Subscreen Wifi tile not available by KnoxStateMonitor."

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView;->mSubscreenWifiController:Lcom/android/systemui/qp/SubscreenWifiController;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "SWC isEnabled enabled: "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p1, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    .line 43
    .line 44
    const-string v2, "SubscreenWifiController"

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p1, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView;->mSubscreenWifiController:Lcom/android/systemui/qp/SubscreenWifiController;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const-class v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 66
    .line 67
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/4 v3, 0x0

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    sget-object v2, Lcom/android/systemui/qp/SubscreenWifiController;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    const-string v4, "keyguard"

    .line 92
    .line 93
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Landroid/app/KeyguardManager;

    .line 98
    .line 99
    new-instance v4, Landroid/content/Intent;

    .line 100
    .line 101
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v5, "WIFI_STATE_CHANGE"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    const-string/jumbo v5, "wifi_state"

    .line 110
    .line 111
    .line 112
    iget-boolean v1, v1, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiState:Z

    .line 113
    .line 114
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    sget-object v1, Lcom/android/systemui/qp/SubscreenWifiController;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    const/high16 v5, 0xc000000

    .line 120
    .line 121
    invoke-static {v1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v3, Landroid/content/Intent;

    .line 126
    .line 127
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v4, "showCoverToast"

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    const-string/jumbo v4, "runOnCover"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    .line 141
    .line 142
    const-string v4, "afterKeyguardGone"

    .line 143
    .line 144
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    const-string v4, "ignoreKeyguardState"

    .line 148
    .line 149
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1, v3}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 153
    .line 154
    .line 155
    move v3, v0

    .line 156
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomWifiSettingsView;->mSubscreenWifiController:Lcom/android/systemui/qp/SubscreenWifiController;

    .line 160
    .line 161
    xor-int/2addr p1, v0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenWifiController;->mWifiAdapter:Landroid/net/wifi/WifiManager;

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 165
    .line 166
    .line 167
    :goto_1
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 168
    .line 169
    const-string p1, "QPBE2001"

    .line 170
    .line 171
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_2
    return-void
.end method
