.class public final Lcom/android/systemui/qs/tiles/FlashlightTile$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 17
    .line 18
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_5

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotification(Z)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    const-string v0, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x0

    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    const-string p1, "level"

    .line 60
    .line 61
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const-string/jumbo v0, "status"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    const/4 v0, 0x5

    .line 73
    if-gt p1, v0, :cond_2

    .line 74
    .line 75
    const/4 p1, 0x2

    .line 76
    if-eq p2, p1, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 79
    .line 80
    iput-boolean v1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 89
    .line 90
    iget-object p2, p2, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 91
    .line 92
    check-cast p2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 103
    .line 104
    iget-object p2, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    const v0, 0x7f130677

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 119
    .line 120
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 127
    .line 128
    iput-boolean v2, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    .line 129
    .line 130
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 133
    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    .line 135
    .line 136
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 137
    .line 138
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mIsLowBattery:Z

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    :goto_1
    const-string p2, "onReceive : "

    .line 142
    .line 143
    const-string v0, "FlashlightTile"

    .line 144
    .line 145
    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 151
    .line 152
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile$2;->this$0:Lcom/android/systemui/qs/tiles/FlashlightTile;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 163
    .line 164
    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 165
    .line 166
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    .line 167
    .line 168
    .line 169
    :cond_5
    :goto_2
    return-void
.end method
