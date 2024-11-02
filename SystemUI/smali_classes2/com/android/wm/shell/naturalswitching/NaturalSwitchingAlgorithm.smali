.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDragTargetWindowingMode:I

.field public mDropSide:I

.field public mHalfTarget:I

.field public mNeedToReparentCell:Z

.field public mPushRegion:I

.field public mShrunkWindowingMode:I

.field public mSplitCreateMode:I

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public mSwapWindowingMode:I

.field public mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public mToPosition:I

.field public mToWindowingMode:I

.field public mUseSingleNonTarget:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mHalfTarget:I

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final update(IIZ)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->updateForPush(I)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 6
    .line 7
    if-ne v1, p1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 10
    .line 11
    if-ne v1, p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 15
    .line 16
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 17
    .line 18
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x5

    .line 22
    const/4 v3, -0x1

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne p1, v4, :cond_2

    .line 25
    .line 26
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 31
    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_0
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 37
    .line 38
    iput v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-boolean v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mUseSingleNonTarget:Z

    .line 42
    .line 43
    const/16 v6, 0x8

    .line 44
    .line 45
    const/16 v7, 0x10

    .line 46
    .line 47
    const/16 v8, 0x20

    .line 48
    .line 49
    const/16 v9, 0x40

    .line 50
    .line 51
    const/4 v10, 0x3

    .line 52
    const/4 v11, 0x4

    .line 53
    if-eqz v5, :cond_12

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 56
    .line 57
    iget-boolean p2, p2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    .line 58
    .line 59
    if-eqz p2, :cond_8

    .line 60
    .line 61
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 62
    .line 63
    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iput v10, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 73
    .line 74
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 75
    .line 76
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 85
    .line 86
    if-ne p2, v1, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    move v6, v8

    .line 90
    :goto_2
    iput v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 94
    .line 95
    if-ne p2, v11, :cond_6

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    move v7, v9

    .line 99
    :goto_3
    iput v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 100
    .line 101
    :goto_4
    if-eqz p1, :cond_7

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    move v1, v10

    .line 105
    :goto_5
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    if-eqz p3, :cond_9

    .line 109
    .line 110
    iput v10, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_9
    iget p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 114
    .line 115
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 116
    .line 117
    :goto_6
    if-eq p1, v1, :cond_d

    .line 118
    .line 119
    if-eq p1, v11, :cond_c

    .line 120
    .line 121
    if-eq p1, v6, :cond_b

    .line 122
    .line 123
    if-eq p1, v7, :cond_a

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_a
    move v0, v9

    .line 127
    goto :goto_7

    .line 128
    :cond_b
    move v0, v8

    .line 129
    goto :goto_7

    .line 130
    :cond_c
    move v0, v7

    .line 131
    goto :goto_7

    .line 132
    :cond_d
    move v0, v6

    .line 133
    :goto_7
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 134
    .line 135
    if-eq p1, v1, :cond_11

    .line 136
    .line 137
    if-eq p1, v11, :cond_10

    .line 138
    .line 139
    if-eq p1, v6, :cond_f

    .line 140
    .line 141
    if-eq p1, v7, :cond_e

    .line 142
    .line 143
    move v1, v3

    .line 144
    goto :goto_8

    .line 145
    :cond_e
    move v1, v2

    .line 146
    goto :goto_8

    .line 147
    :cond_f
    move v1, v11

    .line 148
    goto :goto_8

    .line 149
    :cond_10
    move v1, v10

    .line 150
    :cond_11
    :goto_8
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 151
    .line 152
    return-void

    .line 153
    :cond_12
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 162
    .line 163
    if-eqz p1, :cond_1f

    .line 164
    .line 165
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 166
    .line 167
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 174
    .line 175
    invoke-virtual {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 176
    .line 177
    .line 178
    move-result p3

    .line 179
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 180
    .line 181
    iget v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 182
    .line 183
    if-eq v3, v1, :cond_18

    .line 184
    .line 185
    if-eq v3, v11, :cond_13

    .line 186
    .line 187
    if-eq v3, v6, :cond_18

    .line 188
    .line 189
    if-eq v3, v7, :cond_13

    .line 190
    .line 191
    goto :goto_e

    .line 192
    :cond_13
    if-ne v3, v11, :cond_14

    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_14
    move v7, v9

    .line 196
    :goto_9
    or-int/2addr v0, v7

    .line 197
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 198
    .line 199
    and-int/2addr p1, v6

    .line 200
    if-eqz p1, :cond_16

    .line 201
    .line 202
    or-int/lit8 p1, v0, 0x8

    .line 203
    .line 204
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 205
    .line 206
    if-eqz p3, :cond_15

    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_15
    move v1, v2

    .line 210
    :goto_a
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 211
    .line 212
    goto :goto_e

    .line 213
    :cond_16
    or-int/lit8 p1, v0, 0x20

    .line 214
    .line 215
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 216
    .line 217
    if-eqz p3, :cond_17

    .line 218
    .line 219
    move v2, v11

    .line 220
    :cond_17
    iput v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 221
    .line 222
    goto :goto_e

    .line 223
    :cond_18
    if-ne v3, v1, :cond_19

    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_19
    move v6, v8

    .line 227
    :goto_b
    or-int/2addr v0, v6

    .line 228
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 229
    .line 230
    and-int/2addr p1, v7

    .line 231
    if-eqz p1, :cond_1b

    .line 232
    .line 233
    or-int/lit8 p1, v0, 0x10

    .line 234
    .line 235
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 236
    .line 237
    if-eqz p3, :cond_1a

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_1a
    move v1, v10

    .line 241
    :goto_c
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 242
    .line 243
    goto :goto_e

    .line 244
    :cond_1b
    or-int/lit8 p1, v0, 0x40

    .line 245
    .line 246
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 247
    .line 248
    if-eqz p3, :cond_1c

    .line 249
    .line 250
    goto :goto_d

    .line 251
    :cond_1c
    move v1, v2

    .line 252
    :goto_d
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 253
    .line 254
    :goto_e
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 255
    .line 256
    invoke-static {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    const/16 p3, 0xc

    .line 261
    .line 262
    if-eqz p1, :cond_1e

    .line 263
    .line 264
    const/16 p1, 0xd

    .line 265
    .line 266
    if-ne p2, p1, :cond_1d

    .line 267
    .line 268
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 269
    .line 270
    goto :goto_f

    .line 271
    :cond_1d
    iput p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 272
    .line 273
    goto :goto_f

    .line 274
    :cond_1e
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 275
    .line 276
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 277
    .line 278
    if-eq p1, p3, :cond_1f

    .line 279
    .line 280
    if-eq p2, p3, :cond_1f

    .line 281
    .line 282
    iput-boolean v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 283
    .line 284
    :cond_1f
    :goto_f
    return-void
.end method

.method public final updateForPush(I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mPushRegion:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_c

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 7
    .line 8
    iput p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mPushRegion:I

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 20
    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_0
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 25
    .line 26
    iput v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x3

    .line 31
    const/4 v6, 0x1

    .line 32
    if-eq p1, v6, :cond_5

    .line 33
    .line 34
    if-eq p1, v2, :cond_4

    .line 35
    .line 36
    if-eq p1, v5, :cond_3

    .line 37
    .line 38
    if-eq p1, v4, :cond_2

    .line 39
    .line 40
    move v7, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v7, 0x40

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/16 v7, 0x20

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const/16 v7, 0x10

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    const/16 v7, 0x8

    .line 52
    .line 53
    :goto_0
    iput v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    .line 54
    .line 55
    iput v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 56
    .line 57
    iget v7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    .line 58
    .line 59
    const/16 v8, 0xc

    .line 60
    .line 61
    if-eq v7, v8, :cond_6

    .line 62
    .line 63
    invoke-static {v7}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_7

    .line 68
    .line 69
    :cond_6
    iput-boolean v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    .line 70
    .line 71
    :cond_7
    if-eq p1, v6, :cond_a

    .line 72
    .line 73
    if-eq p1, v2, :cond_b

    .line 74
    .line 75
    if-eq p1, v5, :cond_9

    .line 76
    .line 77
    if-eq p1, v4, :cond_8

    .line 78
    .line 79
    move v1, v3

    .line 80
    goto :goto_1

    .line 81
    :cond_8
    move v1, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_9
    move v1, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_a
    move v1, v4

    .line 86
    :cond_b
    :goto_1
    iput v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 87
    .line 88
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 89
    .line 90
    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 91
    .line 92
    :cond_c
    :goto_2
    return-void
.end method
