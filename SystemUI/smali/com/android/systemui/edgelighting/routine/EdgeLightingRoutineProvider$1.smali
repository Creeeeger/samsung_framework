.class public final Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v0, "EdgeLightingRoutineProvider"

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    sget p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->$r8$clinit:I

    .line 13
    .line 14
    const-string/jumbo p1, "stopEdgeEffect()"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 32
    .line 33
    if-eqz p1, :cond_8

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 50
    .line 51
    iget-object v2, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    new-instance v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/16 v5, 0x8b3

    .line 63
    .line 64
    invoke-direct {v2, v4, v5, v3}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;IZ)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-object p1, v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget-object p1, v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mEffectServiceConrtroller:Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;

    .line 80
    .line 81
    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/effectservice/EffectServiceController;->mStarting:Z

    .line 82
    .line 83
    :goto_0
    if-eqz p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->stopEdgeEffect()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 110
    .line 111
    iget-object v2, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingEffect:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v2, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setForceSettingValue(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 119
    .line 120
    iget-object v2, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 121
    .line 122
    iget-object v2, v2, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->mDialog:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    .line 123
    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    iput-boolean v1, v2, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    .line 127
    .line 128
    :cond_6
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string/jumbo v2, "power"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/os/PowerManager;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_7

    .line 146
    .line 147
    sget p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->$r8$clinit:I

    .line 148
    .line 149
    const-string/jumbo p1, "registerScreenStateReceiver"

    .line 150
    .line 151
    .line 152
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 161
    .line 162
    invoke-direct {v2, p1, v3}, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;I)V

    .line 163
    .line 164
    .line 165
    iput-object v2, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 166
    .line 167
    new-instance v2, Landroid/content/IntentFilter;

    .line 168
    .line 169
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 170
    .line 171
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$ScreenStateReceiver;

    .line 179
    .line 180
    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    :cond_7
    sget p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->$r8$clinit:I

    .line 184
    .line 185
    const-string/jumbo p1, "startEdgeEffect()"

    .line 186
    .line 187
    .line 188
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 192
    .line 193
    iget-object v0, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mController:Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    .line 194
    .line 195
    iget-object p1, p1, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->startEdgeEffect(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    .line 198
    .line 199
    .line 200
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;->this$0:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;

    .line 201
    .line 202
    iget-object p1, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mHandler:Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider$1;

    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/systemui/edgelighting/routine/EdgeLightingRoutineProvider;->mEdgeLightingInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    .line 205
    .line 206
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mLightingDuration:J

    .line 207
    .line 208
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    .line 210
    .line 211
    :cond_8
    :goto_2
    return-void
.end method
