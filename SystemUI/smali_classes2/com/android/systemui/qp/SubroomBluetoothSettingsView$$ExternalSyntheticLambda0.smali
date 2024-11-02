.class public final synthetic Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomBluetoothSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomBluetoothSettingsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomBluetoothSettingsView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomBluetoothSettingsView;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->$r8$clinit:I

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
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const-string v0, "SubroomBluetoothSettingsView"

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string p0, "Subscreen Bluetooth tile not available by KnoxStateMonitor."

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/qp/SubscreenBleController;->isTransient()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/systemui/qp/SubscreenBleController;->isEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, "mBluetoothButton onClick,enabled = "

    .line 46
    .line 47
    const-string v3, ",isTransient = "

    .line 48
    .line 49
    invoke-static {v2, v1, v3, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    .line 55
    .line 56
    iget-object v0, p1, Lcom/android/systemui/qp/SubscreenBleController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    .line 58
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 59
    .line 60
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    const/4 v3, 0x0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBleController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    .line 68
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    sget-object p1, Lcom/android/systemui/qp/SubscreenBleController;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    const-string v0, "keyguard"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/app/KeyguardManager;

    .line 108
    .line 109
    new-instance v0, Landroid/content/Intent;

    .line 110
    .line 111
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v4, "BLUETOOTH_STATE_CHANGE"

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    sget-object v4, Lcom/android/systemui/qp/SubscreenBleController;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    const/high16 v5, 0xc000000

    .line 122
    .line 123
    invoke-static {v4, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    new-instance v3, Landroid/content/Intent;

    .line 128
    .line 129
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v4, "showCoverToast"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    const-string/jumbo v4, "runOnCover"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    const-string v4, "afterKeyguardGone"

    .line 145
    .line 146
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    const-string v4, "ignoreKeyguardState"

    .line 150
    .line 151
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0, v3}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    :goto_0
    move v2, v3

    .line 159
    :goto_1
    if-nez v2, :cond_3

    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->mSubscreenBleController:Lcom/android/systemui/qp/SubscreenBleController;

    .line 162
    .line 163
    xor-int/lit8 v0, v1, 0x1

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/systemui/qp/SubscreenBleController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 166
    .line 167
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomBluetoothSettingsView;->updateView(Z)V

    .line 171
    .line 172
    .line 173
    :cond_3
    :goto_2
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 174
    .line 175
    const-string p1, "QPBE2003"

    .line 176
    .line 177
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
