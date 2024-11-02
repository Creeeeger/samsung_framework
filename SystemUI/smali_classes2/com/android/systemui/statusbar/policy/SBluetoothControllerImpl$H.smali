.class public final Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->DEBUG:Z

    .line 2
    .line 3
    const-string v1, "SBluetoothControllerImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "handleMessage : "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v3, p1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;->onMusicShareDiscoveryStateChanged(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_1
    const-string p0, "fireMusicShareStateChanged((CachedBluetoothCastDevice) msg.obj)"

    .line 57
    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    .line 88
    .line 89
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;->onBluetoothScanStateChanged(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 94
    .line 95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 104
    .line 105
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :pswitch_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 132
    .line 133
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mEnabled:Z

    .line 134
    .line 135
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(Z)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    .line 140
    .line 141
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;

    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    .line 146
    .line 147
    const-string p1, " firePairedDevicesChanged "

    .line 148
    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    const-string p1, "firePairedDevicesChanged"

    .line 155
    .line 156
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_2

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Lcom/android/systemui/statusbar/policy/SBluetoothController$SCallback;

    .line 176
    .line 177
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_2
    :goto_4
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
