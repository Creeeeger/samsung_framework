.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "command"

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x3

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x1

    .line 22
    sparse-switch v2, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string v2, "lock"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v3

    .line 36
    goto :goto_1

    .line 37
    :sswitch_1
    const-string v2, "fail"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v4

    .line 47
    goto :goto_1

    .line 48
    :sswitch_2
    const-string/jumbo v2, "reconnect-pf"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v0, v5

    .line 59
    goto :goto_1

    .line 60
    :sswitch_3
    const-string/jumbo v2, "unlock"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    goto :goto_1

    .line 72
    :goto_0
    const/4 v0, -0x1

    .line 73
    :goto_1
    const-string/jumbo v2, "type"

    .line 74
    .line 75
    .line 76
    const-string v6, "KeyguardUpdateMonitor"

    .line 77
    .line 78
    if-eqz v0, :cond_9

    .line 79
    .line 80
    if-eq v0, v5, :cond_7

    .line 81
    .line 82
    if-eq v0, v4, :cond_6

    .line 83
    .line 84
    if-eq v0, v3, :cond_5

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string/jumbo v0, "shellCommandCallback: lock by "

    .line 92
    .line 93
    .line 94
    invoke-static {v0, p1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 100
    .line 101
    const/16 v0, 0x45c

    .line 102
    .line 103
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string/jumbo v0, "shellCommandCallback: fail to unlock by "

    .line 116
    .line 117
    .line 118
    invoke-static {v0, p1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 124
    .line 125
    const/16 v0, 0x45e

    .line 126
    .line 127
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    sget-boolean p1, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 136
    .line 137
    if-nez p1, :cond_8

    .line 138
    .line 139
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    .line 140
    .line 141
    if-eqz p1, :cond_a

    .line 142
    .line 143
    :cond_8
    const-string/jumbo p1, "shellCommandCallback: reconnect plugin face_widget "

    .line 144
    .line 145
    .line 146
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 152
    .line 153
    const/16 p1, 0x51b

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_9
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    const-string/jumbo v0, "shellCommandCallback: unlock by "

    .line 168
    .line 169
    .line 170
    invoke-static {v0, p1, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 176
    .line 177
    const/16 v0, 0x45d

    .line 178
    .line 179
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    .line 185
    .line 186
    :cond_a
    :goto_2
    return-void

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x321820bc -> :sswitch_3
        -0x2e637d4 -> :sswitch_2
        0x2fd71e -> :sswitch_1
        0x32c52b -> :sswitch_0
    .end sparse-switch
.end method
