.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;IIILandroid/graphics/Rect;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$3:I

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 8
    .line 9
    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    .line 11
    iget v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    .line 13
    iget v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$3:I

    .line 14
    .line 15
    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    .line 16
    .line 17
    iget-object p0, v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    move-object v1, v0

    .line 23
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;IIILandroid/graphics/Rect;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 31
    .line 32
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$1:I

    .line 33
    .line 34
    iget v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$2:I

    .line 35
    .line 36
    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$3:I

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda1;->f$4:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x5

    .line 45
    const/4 v6, 0x6

    .line 46
    const/4 v7, 0x2

    .line 47
    const/4 v8, 0x1

    .line 48
    packed-switch v1, :pswitch_data_1

    .line 49
    .line 50
    .line 51
    :pswitch_1
    move v1, v4

    .line 52
    goto :goto_1

    .line 53
    :pswitch_2
    move v1, v5

    .line 54
    goto :goto_1

    .line 55
    :pswitch_3
    move v1, v6

    .line 56
    goto :goto_1

    .line 57
    :pswitch_4
    move v1, v7

    .line 58
    goto :goto_1

    .line 59
    :pswitch_5
    move v1, v8

    .line 60
    :goto_1
    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    .line 62
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    .line 64
    iget-object v10, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 65
    .line 66
    invoke-virtual {v10, v9}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    if-eqz v9, :cond_0

    .line 71
    .line 72
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    move v10, v4

    .line 78
    :goto_2
    if-ne v10, v6, :cond_2

    .line 79
    .line 80
    if-ne v1, v6, :cond_1

    .line 81
    .line 82
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;

    .line 83
    .line 84
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToSplitChanger;-><init>()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_1
    if-ne v1, v5, :cond_2

    .line 89
    .line 90
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToFreeformChanger;

    .line 91
    .line 92
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$SplitToFreeformChanger;-><init>()V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    if-ne v10, v5, :cond_4

    .line 97
    .line 98
    if-ne v1, v6, :cond_3

    .line 99
    .line 100
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToSplitChanger;

    .line 101
    .line 102
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToSplitChanger;-><init>()V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    if-ne v1, v5, :cond_4

    .line 107
    .line 108
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToFreeformChanger;

    .line 109
    .line 110
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FreeformToFreeformChanger;-><init>()V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    .line 115
    .line 116
    if-eqz v11, :cond_5

    .line 117
    .line 118
    if-ne v10, v8, :cond_5

    .line 119
    .line 120
    if-ne v1, v5, :cond_5

    .line 121
    .line 122
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FullToFreeformChanger;

    .line 123
    .line 124
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$FullToFreeformChanger;-><init>()V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 129
    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    if-ne v10, v7, :cond_7

    .line 133
    .line 134
    if-ne v1, v6, :cond_6

    .line 135
    .line 136
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger;

    .line 137
    .line 138
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToSplitChanger;-><init>()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    if-ne v1, v7, :cond_7

    .line 143
    .line 144
    new-instance v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger;

    .line 145
    .line 146
    invoke-direct {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger$PipToPipChanger;-><init>()V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    const/4 v5, 0x0

    .line 151
    :goto_3
    const-string v6, "NaturalSwitchingLayout"

    .line 152
    .line 153
    if-nez v5, :cond_8

    .line 154
    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, "changeLayout: invalid changer, from="

    .line 158
    .line 159
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, ", to="

    .line 166
    .line 167
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {v6, p0}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v4, "changeLayout: "

    .line 187
    .line 188
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v6, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    .line 202
    .line 203
    iget-boolean v1, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 204
    .line 205
    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    xor-int/2addr v4, v8

    .line 212
    new-instance v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;

    .line 213
    .line 214
    invoke-direct {v6, v0, v8}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 215
    .line 216
    .line 217
    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 218
    .line 219
    iput-object v8, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 220
    .line 221
    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 222
    .line 223
    iput-object v8, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 224
    .line 225
    iput-object v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 226
    .line 227
    iget-object v8, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    .line 228
    .line 229
    invoke-virtual {v8, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 230
    .line 231
    .line 232
    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mIsMainDisplay:Z

    .line 233
    .line 234
    iput v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mToPosition:I

    .line 235
    .line 236
    iput-boolean v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    .line 237
    .line 238
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_MULTI_SPLIT:Z

    .line 239
    .line 240
    if-eqz p0, :cond_9

    .line 241
    .line 242
    iget-object p0, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    if-eqz p0, :cond_9

    .line 249
    .line 250
    iput v7, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_9
    iget-object p0, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mSplitController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    .line 256
    .line 257
    .line 258
    move-result p0

    .line 259
    iput p0, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mCurrentSplitMode:I

    .line 260
    .line 261
    :goto_4
    iput-object v6, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mHideLayoutCallback:Ljava/util/function/Consumer;

    .line 262
    .line 263
    iput v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->mRequestedCreateMode:I

    .line 264
    .line 265
    invoke-virtual {v5}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;->changeLayout()V

    .line 266
    .line 267
    .line 268
    iput-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    .line 269
    .line 270
    :goto_5
    return-void

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
