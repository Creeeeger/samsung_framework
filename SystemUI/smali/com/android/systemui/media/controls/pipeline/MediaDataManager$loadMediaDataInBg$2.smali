.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $actionIcons:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $actionsToShowCollapsed:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $appUid:I

.field public final synthetic $artWorkIcon:Landroid/graphics/drawable/Icon;

.field public final synthetic $artist:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $device:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $instanceId:Lcom/android/internal/logging/InstanceId;

.field public final synthetic $isExplicit:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $isPlaying:Ljava/lang/Boolean;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $lastActive:J

.field public final synthetic $notif:Landroid/app/Notification;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $playbackLocation:I

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic $semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

.field public final synthetic $smallIcon:Landroid/graphics/drawable/Icon;

.field public final synthetic $song:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/controls/models/player/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/pipeline/MediaDataManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/controls/models/player/MediaAction;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/android/systemui/media/controls/models/player/MediaButton;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/Notification;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/media/controls/models/player/MediaDeviceData;",
            ">;I",
            "Ljava/lang/Boolean;",
            "J",
            "Lcom/android/internal/logging/InstanceId;",
            "I",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$oldKey:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$appName:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$smallIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$actionIcons:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$actionsToShowCollapsed:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$notif:Landroid/app/Notification;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$device:Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$playbackLocation:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$isPlaying:Ljava/lang/Boolean;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$lastActive:J

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$instanceId:Lcom/android/internal/logging/InstanceId;

    move/from16 v1, p21

    iput v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$appUid:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$isExplicit:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->resumeAction:Ljava/lang/Runnable;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    move-object/from16 v18, v1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-boolean v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->hasCheckedForResume:Z

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    move/from16 v22, v3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move/from16 v22, v2

    .line 47
    .line 48
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-boolean v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->active:Z

    .line 63
    .line 64
    move/from16 v17, v1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move/from16 v17, v3

    .line 68
    .line 69
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 70
    .line 71
    iget-object v15, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v14, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$oldKey:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v13, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$appName:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v7, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$smallIcon:Landroid/graphics/drawable/Icon;

    .line 86
    .line 87
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 88
    .line 89
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v8, v2

    .line 92
    check-cast v8, Ljava/lang/CharSequence;

    .line 93
    .line 94
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 95
    .line 96
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    .line 98
    move-object v9, v2

    .line 99
    check-cast v9, Ljava/lang/CharSequence;

    .line 100
    .line 101
    iget-object v10, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$actionIcons:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 104
    .line 105
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 106
    .line 107
    move-object v11, v2

    .line 108
    check-cast v11, Ljava/util/List;

    .line 109
    .line 110
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$actionsToShowCollapsed:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 111
    .line 112
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 113
    .line 114
    move-object v12, v2

    .line 115
    check-cast v12, Ljava/util/List;

    .line 116
    .line 117
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$semanticActions:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 118
    .line 119
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v19

    .line 125
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$token:Landroid/media/session/MediaSession$Token;

    .line 126
    .line 127
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$notif:Landroid/app/Notification;

    .line 128
    .line 129
    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 130
    .line 131
    move-object/from16 v21, v2

    .line 132
    .line 133
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$device:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    move-object/from16 v23, v2

    .line 138
    .line 139
    check-cast v23, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 140
    .line 141
    iget v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$playbackLocation:I

    .line 142
    .line 143
    const/16 v34, 0x0

    .line 144
    .line 145
    move-object/from16 v35, v1

    .line 146
    .line 147
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$key:Ljava/lang/String;

    .line 148
    .line 149
    move-object/from16 v36, v1

    .line 150
    .line 151
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$isPlaying:Ljava/lang/Boolean;

    .line 152
    .line 153
    move/from16 v37, v2

    .line 154
    .line 155
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$sbn:Landroid/service/notification/StatusBarNotification;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/16 v20, 0x1

    .line 162
    .line 163
    xor-int/lit8 v24, v2, 0x1

    .line 164
    .line 165
    move-object/from16 v20, v3

    .line 166
    .line 167
    iget-wide v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$lastActive:J

    .line 168
    .line 169
    move-wide/from16 v25, v2

    .line 170
    .line 171
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$instanceId:Lcom/android/internal/logging/InstanceId;

    .line 172
    .line 173
    move-object/from16 v27, v2

    .line 174
    .line 175
    iget v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$appUid:I

    .line 176
    .line 177
    move/from16 v28, v2

    .line 178
    .line 179
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$2;->$isExplicit:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 180
    .line 181
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 182
    .line 183
    move/from16 v29, v0

    .line 184
    .line 185
    const/16 v30, 0x0

    .line 186
    .line 187
    const/16 v31, 0x0

    .line 188
    .line 189
    const/high16 v32, 0xc020000

    .line 190
    .line 191
    const/16 v33, 0x0

    .line 192
    .line 193
    move-object/from16 v0, v21

    .line 194
    .line 195
    move/from16 v21, v37

    .line 196
    .line 197
    move-object v2, v13

    .line 198
    move v3, v4

    .line 199
    const/4 v4, 0x1

    .line 200
    move-object/from16 v16, v5

    .line 201
    .line 202
    move-object v5, v6

    .line 203
    move-object v6, v7

    .line 204
    move-object v7, v8

    .line 205
    move-object v8, v9

    .line 206
    move-object v9, v10

    .line 207
    move-object v10, v11

    .line 208
    move-object v11, v12

    .line 209
    move-object v12, v0

    .line 210
    move-object v0, v13

    .line 211
    move-object/from16 v13, v19

    .line 212
    .line 213
    move-object/from16 v38, v14

    .line 214
    .line 215
    move-object/from16 v14, v16

    .line 216
    .line 217
    move-object/from16 v39, v15

    .line 218
    .line 219
    move-object/from16 v15, v20

    .line 220
    .line 221
    move-object/from16 v16, v23

    .line 222
    .line 223
    move/from16 v19, v21

    .line 224
    .line 225
    move/from16 v20, v34

    .line 226
    .line 227
    move-object/from16 v21, v36

    .line 228
    .line 229
    move-object/from16 v23, v1

    .line 230
    .line 231
    invoke-direct/range {v2 .. v33}, Lcom/android/systemui/media/controls/models/player/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/models/player/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/models/player/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;Lcom/android/systemui/media/controls/models/player/SecMediaDataImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    .line 233
    .line 234
    move-object/from16 v1, v35

    .line 235
    .line 236
    move-object/from16 v3, v38

    .line 237
    .line 238
    move-object/from16 v2, v39

    .line 239
    .line 240
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 241
    .line 242
    .line 243
    return-void
.end method
