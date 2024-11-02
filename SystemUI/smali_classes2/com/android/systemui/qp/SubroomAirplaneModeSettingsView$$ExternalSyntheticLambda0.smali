.class public final synthetic Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->$r8$clinit:I

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
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAirplaneModeTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p0, "SubroomAirplaneModeSettingsView"

    .line 25
    .line 26
    const-string p1, "Subscreen Airplane Mode tile not available by KnoxStateMonitor."

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
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x1

    .line 51
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    sget-object p1, Lcom/android/systemui/qp/SubscreenAirplaneController;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string v3, "keyguard"

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/app/KeyguardManager;

    .line 78
    .line 79
    new-instance v3, Landroid/content/Intent;

    .line 80
    .line 81
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v4, "AIRPLANE_MODE_CHANGE"

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    sget-object v4, Lcom/android/systemui/qp/SubscreenAirplaneController;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    const/high16 v5, 0xc000000

    .line 92
    .line 93
    invoke-static {v4, v2, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Landroid/content/Intent;

    .line 98
    .line 99
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v4, "showCoverToast"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const-string/jumbo v4, "runOnCover"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    const-string v4, "afterKeyguardGone"

    .line 115
    .line 116
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    const-string v4, "ignoreKeyguardState"

    .line 120
    .line 121
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2, v3}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    move v2, v0

    .line 128
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 146
    .line 147
    xor-int/2addr p1, v0

    .line 148
    iget-object v0, v1, Lcom/android/systemui/qp/SubscreenAirplaneController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->updateView(Z)V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 157
    .line 158
    const-string p1, "QPBE2004"

    .line 159
    .line 160
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void
.end method
