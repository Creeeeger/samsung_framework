.class public final Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;
.super Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 6

    .line 1
    const-string v0, "Wrong DropTarget type: #"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 6
    .line 7
    iget v1, p3, Landroid/graphics/Insets;->top:I

    .line 8
    .line 9
    add-int/2addr p2, v1

    .line 10
    div-int/lit8 p2, p2, 0x2

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :pswitch_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/Rect;

    .line 28
    .line 29
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    mul-int/lit8 v4, v3, 0x2

    .line 34
    .line 35
    div-int/lit8 v4, v4, 0x3

    .line 36
    .line 37
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 38
    .line 39
    iget p3, p3, Landroid/graphics/Insets;->right:I

    .line 40
    .line 41
    add-int/2addr v5, p3

    .line 42
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 43
    .line 44
    .line 45
    new-instance p3, Landroid/graphics/Rect;

    .line 46
    .line 47
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 48
    .line 49
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 50
    .line 51
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    invoke-direct {p3, v2, p2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 61
    .line 62
    new-instance v1, Landroid/graphics/Rect;

    .line 63
    .line 64
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 67
    .line 68
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 69
    .line 70
    iget p3, p3, Landroid/graphics/Insets;->right:I

    .line 71
    .line 72
    add-int/2addr v4, p3

    .line 73
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 74
    .line 75
    div-int/lit8 p3, p3, 0x3

    .line 76
    .line 77
    invoke-direct {v1, v2, v3, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    new-instance p3, Landroid/graphics/Rect;

    .line 81
    .line 82
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 85
    .line 86
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 87
    .line 88
    invoke-direct {p3, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_2
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 96
    .line 97
    new-instance v1, Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget p3, p3, Landroid/graphics/Insets;->left:I

    .line 102
    .line 103
    sub-int/2addr v2, p3

    .line 104
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 105
    .line 106
    mul-int/lit8 v3, p3, 0x2

    .line 107
    .line 108
    div-int/lit8 v3, v3, 0x3

    .line 109
    .line 110
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    invoke-direct {v1, v2, v3, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 113
    .line 114
    .line 115
    new-instance p3, Landroid/graphics/Rect;

    .line 116
    .line 117
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 118
    .line 119
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 120
    .line 121
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 122
    .line 123
    invoke-direct {p3, v2, p2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :pswitch_3
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 131
    .line 132
    new-instance v1, Landroid/graphics/Rect;

    .line 133
    .line 134
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 135
    .line 136
    iget p3, p3, Landroid/graphics/Insets;->left:I

    .line 137
    .line 138
    sub-int/2addr v2, p3

    .line 139
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 140
    .line 141
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 142
    .line 143
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    div-int/lit8 v4, v4, 0x3

    .line 146
    .line 147
    invoke-direct {v1, v2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 148
    .line 149
    .line 150
    new-instance p3, Landroid/graphics/Rect;

    .line 151
    .line 152
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 153
    .line 154
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 155
    .line 156
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 157
    .line 158
    invoke-direct {p3, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 162
    .line 163
    .line 164
    return-object v0

    .line 165
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 166
    .line 167
    iget v1, p3, Landroid/graphics/Insets;->left:I

    .line 168
    .line 169
    add-int/2addr p2, v1

    .line 170
    div-int/lit8 p2, p2, 0x2

    .line 171
    .line 172
    packed-switch p0, :pswitch_data_1

    .line 173
    .line 174
    .line 175
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1

    .line 185
    :pswitch_4
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 186
    .line 187
    new-instance v1, Landroid/graphics/Rect;

    .line 188
    .line 189
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 190
    .line 191
    mul-int/lit8 v3, v2, 0x2

    .line 192
    .line 193
    div-int/lit8 v3, v3, 0x3

    .line 194
    .line 195
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 196
    .line 197
    iget p3, p3, Landroid/graphics/Insets;->right:I

    .line 198
    .line 199
    add-int/2addr v2, p3

    .line 200
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    invoke-direct {v1, v3, v4, v2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    .line 204
    .line 205
    new-instance p3, Landroid/graphics/Rect;

    .line 206
    .line 207
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 208
    .line 209
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 210
    .line 211
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 212
    .line 213
    invoke-direct {p3, p2, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .line 215
    .line 216
    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 217
    .line 218
    .line 219
    return-object v0

    .line 220
    :pswitch_5
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 221
    .line 222
    new-instance v1, Landroid/graphics/Rect;

    .line 223
    .line 224
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 225
    .line 226
    iget p3, p3, Landroid/graphics/Insets;->left:I

    .line 227
    .line 228
    sub-int/2addr v2, p3

    .line 229
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 232
    .line 233
    div-int/lit8 v3, v3, 0x3

    .line 234
    .line 235
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 236
    .line 237
    invoke-direct {v1, v2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .line 239
    .line 240
    new-instance p3, Landroid/graphics/Rect;

    .line 241
    .line 242
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 243
    .line 244
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 245
    .line 246
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 247
    .line 248
    invoke-direct {p3, v2, v3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 252
    .line 253
    .line 254
    return-object v0

    .line 255
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v3, p1, Landroid/graphics/Insets;->left:I

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    iget p1, p1, Landroid/graphics/Insets;->right:I

    .line 24
    .line 25
    add-int/2addr v4, p1

    .line 26
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    :pswitch_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 41
    .line 42
    new-instance v1, Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    iget p1, p1, Landroid/graphics/Insets;->right:I

    .line 51
    .line 52
    add-int/2addr v4, p1

    .line 53
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 54
    .line 55
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_1
    :pswitch_1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 68
    .line 69
    new-instance v1, Landroid/graphics/Rect;

    .line 70
    .line 71
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 72
    .line 73
    iget p1, p1, Landroid/graphics/Insets;->left:I

    .line 74
    .line 75
    sub-int/2addr v2, p1

    .line 76
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    invoke-direct {v1, v2, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 23
    .line 24
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/16 v9, 0x9

    .line 29
    .line 30
    const/4 v10, 0x6

    .line 31
    const/4 v11, 0x7

    .line 32
    const/4 v12, 0x2

    .line 33
    const/16 v13, 0x8

    .line 34
    .line 35
    if-eqz v7, :cond_10

    .line 36
    .line 37
    new-instance v0, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v3, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    invoke-virtual {v6, v0, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getAllStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 61
    .line 62
    .line 63
    const/16 v6, 0x20

    .line 64
    .line 65
    const/16 v15, 0x40

    .line 66
    .line 67
    const/16 v8, 0x10

    .line 68
    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    and-int/lit8 v7, v14, 0x8

    .line 72
    .line 73
    if-eqz v7, :cond_0

    .line 74
    .line 75
    move v7, v13

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    and-int/lit8 v7, v14, 0x20

    .line 78
    .line 79
    if-eqz v7, :cond_3

    .line 80
    .line 81
    move v7, v6

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    and-int/lit8 v7, v14, 0x10

    .line 84
    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    move v7, v8

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    and-int/lit8 v7, v14, 0x40

    .line 90
    .line 91
    if-eqz v7, :cond_3

    .line 92
    .line 93
    move v7, v15

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 v7, 0x0

    .line 96
    :goto_0
    if-eq v7, v13, :cond_d

    .line 97
    .line 98
    if-eq v7, v8, :cond_a

    .line 99
    .line 100
    if-eq v7, v6, :cond_7

    .line 101
    .line 102
    if-eq v7, v15, :cond_4

    .line 103
    .line 104
    goto/16 :goto_9

    .line 105
    .line 106
    :cond_4
    and-int/lit8 v5, v14, 0x8

    .line 107
    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    move-object v6, v1

    .line 111
    goto :goto_1

    .line 112
    :cond_5
    move-object v6, v0

    .line 113
    :goto_1
    if-eqz v5, :cond_6

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    move-object v0, v1

    .line 117
    :goto_2
    invoke-static {v11, v4, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-static {v9, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-static {v12, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto/16 :goto_9

    .line 139
    .line 140
    :cond_7
    and-int/lit8 v6, v14, 0x10

    .line 141
    .line 142
    if-eqz v6, :cond_8

    .line 143
    .line 144
    move-object v7, v1

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    move-object v7, v0

    .line 147
    :goto_3
    if-eqz v6, :cond_9

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_9
    move-object v0, v1

    .line 151
    :goto_4
    invoke-static {v13, v4, v7}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-static {v9, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    invoke-static {v5, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_a
    and-int/lit8 v5, v14, 0x8

    .line 174
    .line 175
    if-eqz v5, :cond_b

    .line 176
    .line 177
    move-object v6, v1

    .line 178
    goto :goto_5

    .line 179
    :cond_b
    move-object v6, v0

    .line 180
    :goto_5
    if-eqz v5, :cond_c

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_c
    move-object v0, v1

    .line 184
    :goto_6
    invoke-static {v10, v4, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    invoke-static {v13, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    const/4 v0, 0x4

    .line 199
    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    goto :goto_9

    .line 207
    :cond_d
    and-int/lit8 v5, v14, 0x10

    .line 208
    .line 209
    if-eqz v5, :cond_e

    .line 210
    .line 211
    move-object v6, v1

    .line 212
    goto :goto_7

    .line 213
    :cond_e
    move-object v6, v0

    .line 214
    :goto_7
    if-eqz v5, :cond_f

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_f
    move-object v0, v1

    .line 218
    :goto_8
    invoke-static {v10, v4, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-static {v11, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    const/4 v0, 0x3

    .line 233
    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    :goto_9
    return-void

    .line 241
    :cond_10
    if-eqz p3, :cond_12

    .line 242
    .line 243
    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    .line 248
    .line 249
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 250
    .line 251
    .line 252
    new-instance v3, Landroid/graphics/Rect;

    .line 253
    .line 254
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 258
    .line 259
    .line 260
    if-eqz v0, :cond_11

    .line 261
    .line 262
    invoke-static {v5, v4, v1}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    const/4 v0, 0x3

    .line 270
    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    invoke-static {v10, v1, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    invoke-static {v11, v1, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    invoke-static {v13, v3, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    invoke-static {v9, v3, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_11
    invoke-static {v12, v4, v1}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    const/4 v0, 0x4

    .line 314
    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    const/4 v0, 0x0

    .line 322
    invoke-static {v10, v1, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    invoke-static {v13, v1, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    invoke-static {v11, v3, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    invoke-static {v9, v3, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    :goto_a
    return-void

    .line 351
    :cond_12
    iget v7, v1, Landroid/graphics/Rect;->right:I

    .line 352
    .line 353
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 354
    .line 355
    iget-object v8, v0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mContext:Landroid/content/Context;

    .line 356
    .line 357
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    const-string/jumbo v9, "task_bar"

    .line 362
    .line 363
    .line 364
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-ne v8, v5, :cond_13

    .line 369
    .line 370
    move v8, v5

    .line 371
    goto :goto_b

    .line 372
    :cond_13
    const/4 v8, 0x0

    .line 373
    :goto_b
    if-eqz v8, :cond_1b

    .line 374
    .line 375
    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    .line 376
    .line 377
    iget v9, v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    .line 378
    .line 379
    if-eq v9, v12, :cond_1a

    .line 380
    .line 381
    iget-boolean v8, v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->isDragFromRecent:Z

    .line 382
    .line 383
    if-nez v8, :cond_14

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :cond_14
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 387
    .line 388
    const v8, 0x7fffffff

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v8}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    :cond_15
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    if-eqz v8, :cond_18

    .line 404
    .line 405
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 410
    .line 411
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 412
    .line 413
    .line 414
    move-result v9

    .line 415
    if-eqz v9, :cond_16

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_16
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 419
    .line 420
    .line 421
    move-result v9

    .line 422
    if-ne v9, v12, :cond_17

    .line 423
    .line 424
    move v3, v5

    .line 425
    goto :goto_e

    .line 426
    :cond_17
    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-ne v8, v5, :cond_15

    .line 431
    .line 432
    :cond_18
    :goto_d
    const/4 v3, 0x0

    .line 433
    :goto_e
    if-eqz v3, :cond_19

    .line 434
    .line 435
    goto :goto_f

    .line 436
    :cond_19
    const/4 v3, 0x0

    .line 437
    goto :goto_10

    .line 438
    :cond_1a
    :goto_f
    move v3, v5

    .line 439
    :goto_10
    if-nez v3, :cond_1b

    .line 440
    .line 441
    move v3, v5

    .line 442
    goto :goto_11

    .line 443
    :cond_1b
    const/4 v3, 0x0

    .line 444
    :goto_11
    iget v8, v4, Landroid/graphics/Insets;->right:I

    .line 445
    .line 446
    sub-int v8, v7, v8

    .line 447
    .line 448
    iget v9, v4, Landroid/graphics/Insets;->left:I

    .line 449
    .line 450
    invoke-static {v8, v9, v12, v9}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    .line 451
    .line 452
    .line 453
    move-result v8

    .line 454
    if-eqz v3, :cond_1c

    .line 455
    .line 456
    iget v3, v4, Landroid/graphics/Insets;->bottom:I

    .line 457
    .line 458
    sub-int v3, v1, v3

    .line 459
    .line 460
    goto :goto_12

    .line 461
    :cond_1c
    move v3, v1

    .line 462
    :goto_12
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    .line 463
    .line 464
    .line 465
    move-result v9

    .line 466
    if-eqz v9, :cond_1d

    .line 467
    .line 468
    new-instance v9, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 469
    .line 470
    const/4 v14, 0x2

    .line 471
    const/4 v15, 0x0

    .line 472
    new-instance v10, Landroid/graphics/Rect;

    .line 473
    .line 474
    iget v11, v4, Landroid/graphics/Insets;->left:I

    .line 475
    .line 476
    iget v13, v4, Landroid/graphics/Insets;->right:I

    .line 477
    .line 478
    sub-int v13, v7, v13

    .line 479
    .line 480
    div-int/2addr v1, v12

    .line 481
    const/4 v5, 0x0

    .line 482
    invoke-direct {v10, v11, v5, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 483
    .line 484
    .line 485
    const/16 v17, 0x1

    .line 486
    .line 487
    new-instance v11, Landroid/graphics/Rect;

    .line 488
    .line 489
    invoke-direct {v11, v5, v5, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, v12, v11}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    .line 493
    .line 494
    .line 495
    move-result-object v18

    .line 496
    move-object v13, v9

    .line 497
    move-object/from16 v16, v10

    .line 498
    .line 499
    invoke-direct/range {v13 .. v18}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 506
    .line 507
    const/16 v20, 0x4

    .line 508
    .line 509
    const/16 v21, 0x0

    .line 510
    .line 511
    new-instance v9, Landroid/graphics/Rect;

    .line 512
    .line 513
    iget v10, v4, Landroid/graphics/Insets;->left:I

    .line 514
    .line 515
    iget v11, v4, Landroid/graphics/Insets;->right:I

    .line 516
    .line 517
    sub-int v11, v7, v11

    .line 518
    .line 519
    invoke-direct {v9, v10, v1, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 520
    .line 521
    .line 522
    const/16 v23, 0x1

    .line 523
    .line 524
    new-instance v10, Landroid/graphics/Rect;

    .line 525
    .line 526
    const/4 v11, 0x0

    .line 527
    invoke-direct {v10, v11, v1, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 528
    .line 529
    .line 530
    const/4 v1, 0x4

    .line 531
    invoke-virtual {v0, v1, v10}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    .line 532
    .line 533
    .line 534
    move-result-object v24

    .line 535
    move-object/from16 v19, v5

    .line 536
    .line 537
    move-object/from16 v22, v9

    .line 538
    .line 539
    invoke-direct/range {v19 .. v24}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    :cond_1d
    const/4 v1, 0x0

    .line 546
    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    if-eqz v5, :cond_1e

    .line 551
    .line 552
    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 553
    .line 554
    const/4 v10, 0x3

    .line 555
    const/4 v11, 0x0

    .line 556
    new-instance v12, Landroid/graphics/Rect;

    .line 557
    .line 558
    iget v6, v4, Landroid/graphics/Insets;->right:I

    .line 559
    .line 560
    sub-int v6, v7, v6

    .line 561
    .line 562
    invoke-direct {v12, v8, v1, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 563
    .line 564
    .line 565
    const/4 v13, 0x1

    .line 566
    new-instance v6, Landroid/graphics/Rect;

    .line 567
    .line 568
    div-int/lit8 v15, v7, 0x2

    .line 569
    .line 570
    invoke-direct {v6, v15, v1, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 571
    .line 572
    .line 573
    const/4 v1, 0x3

    .line 574
    invoke-virtual {v0, v1, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    .line 575
    .line 576
    .line 577
    move-result-object v14

    .line 578
    move-object v9, v5

    .line 579
    invoke-direct/range {v9 .. v14}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    .line 586
    .line 587
    const/16 v17, 0x1

    .line 588
    .line 589
    const/16 v18, 0x0

    .line 590
    .line 591
    new-instance v5, Landroid/graphics/Rect;

    .line 592
    .line 593
    iget v4, v4, Landroid/graphics/Insets;->left:I

    .line 594
    .line 595
    const/4 v6, 0x0

    .line 596
    invoke-direct {v5, v4, v6, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 597
    .line 598
    .line 599
    const/16 v20, 0x1

    .line 600
    .line 601
    new-instance v4, Landroid/graphics/Rect;

    .line 602
    .line 603
    invoke-direct {v4, v6, v6, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 604
    .line 605
    .line 606
    const/4 v3, 0x1

    .line 607
    invoke-virtual {v0, v3, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    .line 608
    .line 609
    .line 610
    move-result-object v21

    .line 611
    move-object/from16 v16, v1

    .line 612
    .line 613
    move-object/from16 v19, v5

    .line 614
    .line 615
    invoke-direct/range {v16 .. v21}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    :cond_1e
    return-void
.end method

.method public final getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const v1, 0x7f0702e5

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    neg-int p0, p0

    .line 21
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 22
    .line 23
    .line 24
    new-instance p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-ne p1, v1, :cond_0

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/PointF;

    .line 33
    .line 34
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 35
    .line 36
    int-to-float v1, v1

    .line 37
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    int-to-float v2, v2

    .line 40
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroid/graphics/PointF;

    .line 47
    .line 48
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    int-to-float p2, p2

    .line 54
    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/graphics/PointF;

    .line 61
    .line 62
    iget p2, v0, Landroid/graphics/Rect;->right:I

    .line 63
    .line 64
    int-to-float p2, p2

    .line 65
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    int-to-float v1, v1

    .line 68
    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    new-instance p1, Landroid/graphics/PointF;

    .line 75
    .line 76
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    int-to-float p2, p2

    .line 79
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 80
    .line 81
    int-to-float v0, v0

    .line 82
    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_0
    const/4 v1, 0x3

    .line 91
    if-ne p1, v1, :cond_1

    .line 92
    .line 93
    new-instance p1, Landroid/graphics/PointF;

    .line 94
    .line 95
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 96
    .line 97
    int-to-float v1, v1

    .line 98
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    int-to-float v2, v2

    .line 101
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance p1, Landroid/graphics/PointF;

    .line 108
    .line 109
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 110
    .line 111
    int-to-float v1, v1

    .line 112
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 113
    .line 114
    int-to-float v2, v2

    .line 115
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroid/graphics/PointF;

    .line 122
    .line 123
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    int-to-float v1, v1

    .line 126
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 127
    .line 128
    int-to-float p2, p2

    .line 129
    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    new-instance p1, Landroid/graphics/PointF;

    .line 136
    .line 137
    iget p2, v0, Landroid/graphics/Rect;->right:I

    .line 138
    .line 139
    int-to-float p2, p2

    .line 140
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    int-to-float v0, v0

    .line 143
    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x1

    .line 151
    if-ne p1, v1, :cond_2

    .line 152
    .line 153
    new-instance p1, Landroid/graphics/PointF;

    .line 154
    .line 155
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 156
    .line 157
    int-to-float v1, v1

    .line 158
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 159
    .line 160
    int-to-float v2, v2

    .line 161
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance p1, Landroid/graphics/PointF;

    .line 168
    .line 169
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 170
    .line 171
    int-to-float v1, v1

    .line 172
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 173
    .line 174
    int-to-float v2, v2

    .line 175
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance p1, Landroid/graphics/PointF;

    .line 182
    .line 183
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 184
    .line 185
    int-to-float v1, v1

    .line 186
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 187
    .line 188
    int-to-float v0, v0

    .line 189
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance p1, Landroid/graphics/PointF;

    .line 196
    .line 197
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 198
    .line 199
    int-to-float v0, v0

    .line 200
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 201
    .line 202
    int-to-float p2, p2

    .line 203
    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_2
    const/4 v1, 0x4

    .line 211
    if-ne p1, v1, :cond_3

    .line 212
    .line 213
    new-instance p1, Landroid/graphics/PointF;

    .line 214
    .line 215
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 216
    .line 217
    int-to-float v1, v1

    .line 218
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 219
    .line 220
    int-to-float v2, v2

    .line 221
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    new-instance p1, Landroid/graphics/PointF;

    .line 228
    .line 229
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 230
    .line 231
    int-to-float v0, v0

    .line 232
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 233
    .line 234
    int-to-float v1, v1

    .line 235
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance p1, Landroid/graphics/PointF;

    .line 242
    .line 243
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 244
    .line 245
    int-to-float v0, v0

    .line 246
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 247
    .line 248
    int-to-float v1, v1

    .line 249
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    new-instance p1, Landroid/graphics/PointF;

    .line 256
    .line 257
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 258
    .line 259
    int-to-float v0, v0

    .line 260
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 261
    .line 262
    int-to-float p2, p2

    .line 263
    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_3
    :goto_0
    return-object p0
.end method
