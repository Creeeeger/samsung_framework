.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$count:[I

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;[ILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$handler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const-string v2, "FlexPanelActivity"

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aget v3, v3, v4

    .line 30
    .line 31
    const/4 v5, 0x5

    .line 32
    if-ge v3, v5, :cond_2

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v3, "handler postDelayed mMediaController == null count : "

    .line 37
    .line 38
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    .line 42
    .line 43
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 58
    .line 59
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 60
    .line 61
    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 62
    .line 63
    invoke-static {v3, v5}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iput-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    .line 70
    .line 71
    aget v3, v0, v4

    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    aput v3, v0, v4

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$handler:Landroid/os/Handler;

    .line 78
    .line 79
    const-wide/16 v3, 0xc8

    .line 80
    .line 81
    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    if-eqz v0, :cond_3

    .line 86
    .line 87
    const-string v0, "handler postDelayed mMediaController != null"

    .line 88
    .line 89
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 93
    .line 94
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 102
    .line 103
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 106
    .line 107
    invoke-static {v3, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 114
    .line 115
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 116
    .line 117
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 118
    .line 119
    iget-object v3, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 122
    .line 123
    invoke-static {v3, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v4, "FlexPanelActivity checkActiveSession isMediaPanel : "

    .line 130
    .line 131
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 135
    .line 136
    iget-boolean v4, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 137
    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v4, ", isMediaPanelRequestedState : "

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 157
    .line 158
    iget-boolean v4, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    .line 159
    .line 160
    const-string v5, "TouchPadMediaPanel"

    .line 161
    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    iget-object p0, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 167
    .line 168
    if-eqz p0, :cond_4

    .line 169
    .line 170
    iget-object v0, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 171
    .line 172
    const-string v1, "FlexMediaPanel"

    .line 173
    .line 174
    const-string v2, "MediaPanel setMediaController"

    .line 175
    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 180
    .line 181
    if-eq v1, v0, :cond_a

    .line 182
    .line 183
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    iget-object p0, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 187
    .line 188
    if-eqz p0, :cond_a

    .line 189
    .line 190
    iget-object v0, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    .line 191
    .line 192
    const-string v1, "TouchPadMediaPanel setMediaController"

    .line 193
    .line 194
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 198
    .line 199
    if-eq v1, v0, :cond_a

    .line 200
    .line 201
    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_5
    const-string v0, "FlexPanelActivity checkActiveSession MediaFloating no hasActiveSessions"

    .line 205
    .line 206
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 210
    .line 211
    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 212
    .line 213
    if-eqz v1, :cond_6

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad()V

    .line 216
    .line 217
    .line 218
    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_7
    if-eqz v0, :cond_a

    .line 225
    .line 226
    iget-boolean v0, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    .line 227
    .line 228
    if-nez v0, :cond_a

    .line 229
    .line 230
    const-string v0, "FlexPanelActivity checkActiveSession GridFloating hasActiveSessions"

    .line 231
    .line 232
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 236
    .line 237
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    .line 238
    .line 239
    if-eqz v2, :cond_8

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->clearController()V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_8
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 246
    .line 247
    if-eqz v0, :cond_9

    .line 248
    .line 249
    const-string v2, "TouchPadMediaPanel clearController"

    .line 250
    .line 251
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 255
    .line 256
    if-eqz v2, :cond_9

    .line 257
    .line 258
    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    .line 259
    .line 260
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupMediaPanel()V

    .line 263
    .line 264
    .line 265
    :cond_a
    :goto_2
    return-void
.end method
