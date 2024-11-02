.class public final Lcom/android/systemui/util/DesktopManagerImpl$3;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/DesktopManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DesktopManagerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/high16 v1, -0x10000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const/high16 v1, 0x10000

    .line 7
    .line 8
    if-eq v0, v1, :cond_5

    .line 9
    .line 10
    const/high16 p1, 0x30000

    .line 11
    .line 12
    if-eq v0, p1, :cond_3

    .line 13
    .line 14
    const/high16 p1, 0x70000

    .line 15
    .line 16
    if-eq v0, p1, :cond_2

    .line 17
    .line 18
    const/high16 p1, 0x80000

    .line 19
    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    const/high16 p1, 0x90000

    .line 23
    .line 24
    if-eq v0, p1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 29
    .line 30
    sget-object p1, Lcom/android/systemui/util/DesktopManagerImpl;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string p1, "DesktopManager"

    .line 36
    .line 37
    const-string v0, "handleNotifyPrivacyItemStateRequested"

    .line 38
    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 43
    .line 44
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_6

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onPrivacyItemStateRequested()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopStatusBarIconCallback:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    check-cast p0, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;

    .line 89
    .line 90
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$DesktopCallback;->updateDesktopStatusBarIcons()V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_DEX_SUPPORT:Z

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mCustomDeviceControlsController:Ldagger/Lazy;

    .line 101
    .line 102
    if-eqz p0, :cond_6

    .line 103
    .line 104
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    check-cast p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsController;

    .line 109
    .line 110
    check-cast p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->start()V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopBluetoothCallback:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$1;

    .line 119
    .line 120
    if-eqz p0, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    new-instance p1, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getConnectedDevicesForGroup()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getConnectedDevicesForGroup()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    const-string v1, "list"

    .line 153
    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    .line 158
    .line 159
    check-cast p0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mDesktopSystemUiBinderLazy:Ldagger/Lazy;

    .line 162
    .line 163
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl$3;->this$0:Lcom/android/systemui/util/DesktopManagerImpl;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManagerImpl;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 176
    .line 177
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    .line 182
    .line 183
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p1, Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecViewController;->requestUnlock(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_2
    return-void
.end method
