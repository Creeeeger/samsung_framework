.class public final Lcom/android/systemui/subscreen/SubScreenManager$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/subscreen/SubScreenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 6

    .line 1
    const-string v0, " onStateChanged "

    .line 2
    .line 3
    const-string v1, " , useUnlocked "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "SubScreenManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 33
    .line 34
    if-eqz v2, :cond_5

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    .line 39
    .line 40
    const/16 v3, 0x3e8

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mHandler:Lcom/android/systemui/subscreen/SubScreenManager$5;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    .line 58
    .line 59
    .line 60
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING:Z

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->updatePluginListener()V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 72
    .line 73
    iget v3, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    if-eq v3, v4, :cond_5

    .line 77
    .line 78
    const/4 v4, -0x1

    .line 79
    if-eq v3, v4, :cond_5

    .line 80
    .line 81
    const/4 v3, 0x3

    .line 82
    if-ne p1, v3, :cond_5

    .line 83
    .line 84
    iget-object v4, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mSubDisplay:Landroid/view/Display;

    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    iget-object v4, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    .line 90
    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/android/systemui/subscreen/SubScreenManager;->isTurnOnWhenUnFolding()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 100
    .line 101
    iget-object v2, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 102
    .line 103
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 110
    .line 111
    iget v2, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    .line 112
    .line 113
    const/4 v4, 0x2

    .line 114
    if-eq v2, v4, :cond_2

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "main display do not on.So pending request. state : "

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 124
    .line 125
    iget v2, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mMainDisplayState:I

    .line 126
    .line 127
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 131
    .line 132
    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingRequestDualState:Z

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/systemui/subscreen/SubScreenManager;->requestDualState(Z)V

    .line 136
    .line 137
    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 139
    .line 140
    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 141
    .line 142
    new-instance v2, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;

    .line 143
    .line 144
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/subscreen/SubScreenManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    const-wide/16 v3, 0x64

    .line 148
    .line 149
    invoke-interface {v0, v3, v4, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    sget-boolean v2, Lcom/android/systemui/LsRune;->SUBSCREEN_PLUGIN_DISCONNECT_WHEN_UNFOLDING:Z

    .line 154
    .line 155
    if-eqz v2, :cond_5

    .line 156
    .line 157
    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 158
    .line 159
    iget-boolean v3, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 160
    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    const-string/jumbo v0, "removePluginListener() already disconnected"

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_4
    const-string/jumbo v3, "removePluginListener() "

    .line 171
    .line 172
    .line 173
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    iget-object v3, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 177
    .line 178
    invoke-interface {v3, v2}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 179
    .line 180
    .line 181
    iput-boolean v0, v2, Lcom/android/systemui/subscreen/SubScreenManager;->mIsPluginConnected:Z

    .line 182
    .line 183
    :goto_1
    const-string v0, "onStateChanged mPendingPluginConnect set true"

    .line 184
    .line 185
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 189
    .line 190
    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mPendingPluginConnect:Z

    .line 191
    .line 192
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager$4;->this$0:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 193
    .line 194
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mDeviceState:I

    .line 195
    .line 196
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 197
    .line 198
    if-nez v0, :cond_6

    .line 199
    .line 200
    const-string p0, "onDeviceStateChanged() no plugin"

    .line 201
    .line 202
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    const-string v0, "onDeviceStateChanged() "

    .line 207
    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenManager;->mSubScreenPlugin:Lcom/android/systemui/plugins/subscreen/PluginSubScreen;

    .line 212
    .line 213
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/subscreen/PluginSubScreen;->onDeviceStateChanged(I)V

    .line 214
    .line 215
    .line 216
    :goto_3
    return-void
.end method
