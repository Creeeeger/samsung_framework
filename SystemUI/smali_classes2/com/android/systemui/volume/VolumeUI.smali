.class public final Lcom/android/systemui/volume/VolumeUI;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final LOGD:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "VolumeUI"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "mEnabled="

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final start()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const v3, 0x7f050056

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const v4, 0x7f050055

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v6, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v6, v5

    .line 37
    :goto_1
    iput-boolean v6, v0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object v6, v0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 43
    .line 44
    iget-object v0, v6, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 45
    .line 46
    iput-boolean v2, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 47
    .line 48
    iput-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    .line 49
    .line 50
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 51
    .line 52
    const-string v2, "DndTileVisible"

    .line 53
    .line 54
    invoke-static {v1, v2, v5}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const-string v0, "VolumeUI"

    .line 62
    .line 63
    const-string v1, "Registering default volume controller"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v1, v6, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 69
    .line 70
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 71
    .line 72
    sget-object v7, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v8, "Unable to set the volume controller"

    .line 82
    .line 83
    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :goto_2
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 87
    .line 88
    iput-object v0, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_4
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catch_1
    const-string v0, "No volume policy api"

    .line 98
    .line 99
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :goto_3
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    const-string/jumbo v3, "showDndTile"

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_5
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->DND_SETTINGS:Landroid/content/Intent;

    .line 115
    .line 116
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v0, v2, v5}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    const-string v2, "VolumeDialogControllerImpl"

    .line 127
    .line 128
    invoke-static {v0, v2, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 129
    .line 130
    .line 131
    :try_start_2
    iget-object v0, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    .line 135
    .line 136
    iget-object v2, v0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    .line 137
    .line 138
    :try_start_3
    sget-boolean v3, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 139
    .line 140
    if-eqz v3, :cond_6

    .line 141
    .line 142
    sget-object v3, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    const-string v8, "init"

    .line 145
    .line 146
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_6
    iget-object v3, v0, Lcom/android/settingslib/volume/MediaSessions;->mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;

    .line 150
    .line 151
    iget-object v8, v0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    .line 152
    .line 153
    const/4 v9, 0x0

    .line 154
    invoke-virtual {v8, v3, v9, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 155
    .line 156
    .line 157
    iput-boolean v5, v0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    .line 158
    .line 159
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lcom/android/settingslib/volume/MediaSessions;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/settingslib/volume/MediaSessions;->mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

    .line 165
    .line 166
    invoke-virtual {v8, v2, v0}, Landroid/media/session/MediaSessionManager;->registerRemoteSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$RemoteSessionCallback;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catch_2
    move-exception v0

    .line 171
    const-string v2, "No access to media sessions"

    .line 172
    .line 173
    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    :goto_4
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    .line 177
    .line 178
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    .line 182
    .line 183
    invoke-direct {v2, v1, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mBroadcastReceiverManager:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    .line 187
    .line 188
    iget-object v4, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    .line 189
    .line 190
    sget-object v7, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DISPLAY_MANAGER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 191
    .line 192
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 197
    .line 198
    if-eqz v4, :cond_7

    .line 199
    .line 200
    new-instance v15, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;

    .line 201
    .line 202
    invoke-direct {v15, v0, v3, v2}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerDisplayManagerStateAction$1$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;Ljava/util/function/Consumer;)V

    .line 203
    .line 204
    .line 205
    iget-object v7, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 206
    .line 207
    iget-object v9, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 208
    .line 209
    const/4 v10, 0x0

    .line 210
    const/4 v11, 0x0

    .line 211
    const/4 v12, 0x0

    .line 212
    const/4 v13, 0x0

    .line 213
    const/16 v14, 0x3c

    .line 214
    .line 215
    move-object v8, v15

    .line 216
    invoke-static/range {v7 .. v14}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    iput-object v15, v4, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 220
    .line 221
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 222
    .line 223
    :cond_7
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    .line 224
    .line 225
    const/4 v2, 0x2

    .line 226
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 227
    .line 228
    .line 229
    iget-object v4, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDisplayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v7, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;

    .line 235
    .line 236
    invoke-direct {v7, v4, v0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper$registerDisplayVolumeListener$1;-><init>(Lcom/android/systemui/volume/util/DisplayManagerWrapper;Ljava/util/function/Consumer;)V

    .line 237
    .line 238
    .line 239
    sget-object v0, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 240
    .line 241
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    iget-object v0, v4, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->context:Landroid/content/Context;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/android/systemui/volume/util/SystemServiceExtension;->getDisplayManager(Landroid/content/Context;)Landroid/hardware/display/DisplayManager;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v4, Landroid/os/Handler;

    .line 251
    .line 252
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v7, v4}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    .line 259
    .line 260
    const/4 v4, 0x3

    .line 261
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 262
    .line 263
    .line 264
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    .line 265
    .line 266
    invoke-direct {v4, v1, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    iget-object v7, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    .line 270
    .line 271
    sget-object v8, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_TOGETHER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 272
    .line 273
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    check-cast v8, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 278
    .line 279
    if-eqz v8, :cond_8

    .line 280
    .line 281
    new-instance v15, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;

    .line 282
    .line 283
    invoke-direct {v15, v0, v4, v3}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAudioSharingStateAction$1$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V

    .line 284
    .line 285
    .line 286
    iget-object v9, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 287
    .line 288
    iget-object v11, v8, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 289
    .line 290
    const/4 v12, 0x0

    .line 291
    const/4 v13, 0x0

    .line 292
    const/4 v14, 0x0

    .line 293
    const/4 v0, 0x0

    .line 294
    const/16 v16, 0x3c

    .line 295
    .line 296
    move-object v10, v15

    .line 297
    move-object v4, v15

    .line 298
    move-object v15, v0

    .line 299
    invoke-static/range {v9 .. v16}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    iput-object v4, v8, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 303
    .line 304
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 305
    .line 306
    :cond_8
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    .line 307
    .line 308
    const/4 v4, 0x4

    .line 309
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 310
    .line 311
    .line 312
    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;

    .line 313
    .line 314
    invoke-direct {v4, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    sget-object v2, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MUSIC_SHARE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 318
    .line 319
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 324
    .line 325
    if-eqz v2, :cond_9

    .line 326
    .line 327
    new-instance v15, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMusicShareStateAction$1$1;

    .line 328
    .line 329
    invoke-direct {v15, v0, v4, v3}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerMusicShareStateAction$1$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/Runnable;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V

    .line 330
    .line 331
    .line 332
    iget-object v8, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 333
    .line 334
    iget-object v10, v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 335
    .line 336
    const/4 v11, 0x0

    .line 337
    const/4 v12, 0x0

    .line 338
    const/4 v13, 0x0

    .line 339
    const/4 v14, 0x0

    .line 340
    const/16 v0, 0x3c

    .line 341
    .line 342
    move-object v9, v15

    .line 343
    move-object v4, v15

    .line 344
    move v15, v0

    .line 345
    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    iput-object v4, v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 349
    .line 350
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 351
    .line 352
    :cond_9
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;

    .line 353
    .line 354
    const/4 v2, 0x5

    .line 355
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    .line 356
    .line 357
    .line 358
    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->AOD:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    .line 359
    .line 360
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    .line 365
    .line 366
    if-eqz v1, :cond_a

    .line 367
    .line 368
    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;

    .line 369
    .line 370
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V

    .line 371
    .line 372
    .line 373
    iget-object v7, v3, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 374
    .line 375
    iget-object v9, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    .line 376
    .line 377
    const/4 v10, 0x0

    .line 378
    const/4 v11, 0x0

    .line 379
    const/4 v12, 0x0

    .line 380
    const/4 v13, 0x0

    .line 381
    const/16 v14, 0x3c

    .line 382
    .line 383
    move-object v8, v2

    .line 384
    invoke-static/range {v7 .. v14}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    iput-object v2, v1, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    .line 388
    .line 389
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 390
    .line 391
    :cond_a
    const-string v0, "DndTileCombinedIcon"

    .line 392
    .line 393
    iget-object v1, v6, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 394
    .line 395
    invoke-static {v1, v0, v5}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 396
    .line 397
    .line 398
    return-void
.end method
