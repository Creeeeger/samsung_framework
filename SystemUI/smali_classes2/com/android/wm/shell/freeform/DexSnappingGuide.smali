.class public final Lcom/android/wm/shell/freeform/DexSnappingGuide;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBoundaryFinger:I

.field public final mBoundaryMouse:I

.field public mIsAttached:Z

.field public mLastSnapType:I

.field public mPointerAlpha:I

.field public mPointerPosition:I

.field public final mSnappingBounds:Landroid/graphics/Rect;

.field public final mSnappingOtherBounds:Landroid/graphics/Rect;

.field public final mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

.field public final mVisibleFrame:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    .line 27
    .line 28
    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    const-string/jumbo v0, "window"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/WindowManager;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 53
    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const v2, 0x7f0d00cd

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    .line 69
    .line 70
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    const/4 v3, -0x1

    .line 73
    const/4 v4, -0x1

    .line 74
    const/16 v5, 0x7f6

    .line 75
    .line 76
    const v6, 0x10318

    .line 77
    .line 78
    .line 79
    const/4 v7, -0x2

    .line 80
    move-object v2, v8

    .line 81
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 82
    .line 83
    .line 84
    const-string v2, "DexSnappingGuideWindow"

    .line 85
    .line 86
    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    const v2, 0x800033

    .line 90
    .line 91
    .line 92
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    .line 94
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 95
    .line 96
    or-int/lit8 v2, v2, 0x10

    .line 97
    .line 98
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 99
    .line 100
    invoke-interface {v0, v1, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mIsAttached:Z

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const v1, 0x7f0702c4

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryMouse:I

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const v0, 0x7f0702c3

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iput p1, p0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryFinger:I

    .line 131
    .line 132
    return-void
.end method

.method public static calculateGuideSize(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    div-int/2addr v0, v1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    div-int/2addr p2, v1

    .line 19
    and-int/lit8 v2, p0, 0x1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 24
    .line 25
    :cond_0
    and-int/lit8 v2, p0, 0x2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq p0, v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x6

    .line 33
    if-ne p0, v2, :cond_2

    .line 34
    .line 35
    :cond_1
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    :cond_2
    and-int/lit8 v2, p0, 0x4

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    add-int v2, v0, p1

    .line 42
    .line 43
    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    :cond_3
    and-int/lit8 v2, p0, 0x8

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    :cond_4
    const/4 p2, 0x1

    .line 52
    if-ne p0, p2, :cond_5

    .line 53
    .line 54
    add-int/2addr v0, p1

    .line 55
    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    if-ne p0, v1, :cond_6

    .line 59
    .line 60
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    const/4 p1, 0x4

    .line 65
    if-ne p0, p1, :cond_7

    .line 66
    .line 67
    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_7
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method


# virtual methods
.method public final show(FFLandroid/app/TaskInfo;II)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    move/from16 v2, p4

    .line 5
    .line 6
    move/from16 v3, p5

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    if-ne v2, v5, :cond_0

    .line 11
    .line 12
    move v6, v5

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v6, v4

    .line 15
    :goto_0
    iget-object v7, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mVisibleFrame:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    iget v6, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryFinger:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget v6, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mBoundaryMouse:I

    .line 39
    .line 40
    :goto_1
    if-ltz v10, :cond_2

    .line 41
    .line 42
    if-gt v10, v6, :cond_2

    .line 43
    .line 44
    move v12, v5

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move v12, v4

    .line 47
    :goto_2
    if-ltz v11, :cond_3

    .line 48
    .line 49
    if-gt v11, v6, :cond_3

    .line 50
    .line 51
    or-int/lit8 v12, v12, 0x2

    .line 52
    .line 53
    :cond_3
    sub-int/2addr v8, v6

    .line 54
    if-lt v10, v8, :cond_4

    .line 55
    .line 56
    or-int/lit8 v12, v12, 0x4

    .line 57
    .line 58
    :cond_4
    sub-int/2addr v9, v6

    .line 59
    if-lt v11, v9, :cond_5

    .line 60
    .line 61
    or-int/lit8 v12, v12, 0x8

    .line 62
    .line 63
    :cond_5
    const/16 v6, 0x8

    .line 64
    .line 65
    if-ne v12, v6, :cond_6

    .line 66
    .line 67
    move v12, v4

    .line 68
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget v6, v6, Landroid/content/res/Configuration;->dexCompatEnabled:I

    .line 73
    .line 74
    const/4 v8, 0x2

    .line 75
    if-ne v6, v8, :cond_7

    .line 76
    .line 77
    move v6, v5

    .line 78
    goto :goto_3

    .line 79
    :cond_7
    move v6, v4

    .line 80
    :goto_3
    const/4 v9, 0x4

    .line 81
    iget-object v10, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mView:Lcom/android/wm/shell/freeform/DexSnappingGuideView;

    .line 82
    .line 83
    if-nez v6, :cond_8

    .line 84
    .line 85
    iget-boolean v6, v1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 86
    .line 87
    if-nez v6, :cond_9

    .line 88
    .line 89
    :cond_8
    if-ne v12, v8, :cond_19

    .line 90
    .line 91
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/app/TaskInfo;->getWindowingMode()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v11}, Landroid/content/res/Configuration;->isNewDexMode()Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_a

    .line 104
    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 110
    .line 111
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-eqz v11, :cond_a

    .line 116
    .line 117
    move v11, v5

    .line 118
    goto :goto_4

    .line 119
    :cond_a
    move v11, v4

    .line 120
    :goto_4
    if-eq v6, v5, :cond_b

    .line 121
    .line 122
    iget v13, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    .line 123
    .line 124
    if-ne v12, v13, :cond_b

    .line 125
    .line 126
    if-nez v11, :cond_b

    .line 127
    .line 128
    return v13

    .line 129
    :cond_b
    iget-object v13, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingBounds:Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 132
    .line 133
    .line 134
    iget-object v14, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 137
    .line 138
    .line 139
    if-eq v6, v5, :cond_10

    .line 140
    .line 141
    if-eqz v11, :cond_c

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_c
    if-nez v12, :cond_d

    .line 145
    .line 146
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_8

    .line 150
    .line 151
    :cond_d
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_f

    .line 156
    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-nez v1, :cond_f

    .line 166
    .line 167
    const/4 v1, 0x3

    .line 168
    if-eq v2, v1, :cond_e

    .line 169
    .line 170
    return v4

    .line 171
    :cond_e
    if-eq v12, v8, :cond_f

    .line 172
    .line 173
    return v4

    .line 174
    :cond_f
    invoke-static {v12, v3, v7, v13, v14}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->calculateGuideSize(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v12, v13}, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->show(ILandroid/graphics/Rect;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :cond_10
    :goto_5
    if-nez v12, :cond_16

    .line 183
    .line 184
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    iget-object v1, v1, Landroid/app/TaskInfo;->snappingGuideBounds:Landroid/graphics/Rect;

    .line 189
    .line 190
    iget v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    .line 191
    .line 192
    if-nez v3, :cond_12

    .line 193
    .line 194
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    sub-int/2addr v2, v3

    .line 199
    if-le v3, v2, :cond_11

    .line 200
    .line 201
    iput v2, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    .line 202
    .line 203
    iput v9, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_11
    iput v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    .line 207
    .line 208
    iput v5, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    .line 209
    .line 210
    :cond_12
    :goto_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    iput v3, v13, Landroid/graphics/Rect;->top:I

    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    add-int/2addr v4, v3

    .line 225
    iput v4, v13, Landroid/graphics/Rect;->bottom:I

    .line 226
    .line 227
    iget v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    .line 228
    .line 229
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    div-int/2addr v4, v8

    .line 234
    if-lt v3, v4, :cond_13

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    div-int/2addr v3, v8

    .line 241
    sub-int/2addr v2, v3

    .line 242
    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    add-int/2addr v1, v2

    .line 249
    iput v1, v13, Landroid/graphics/Rect;->right:I

    .line 250
    .line 251
    goto :goto_7

    .line 252
    :cond_13
    iget v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerPosition:I

    .line 253
    .line 254
    if-ne v3, v5, :cond_14

    .line 255
    .line 256
    iget v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    .line 257
    .line 258
    sub-int/2addr v2, v3

    .line 259
    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    add-int/2addr v1, v2

    .line 266
    iput v1, v13, Landroid/graphics/Rect;->right:I

    .line 267
    .line 268
    goto :goto_7

    .line 269
    :cond_14
    if-ne v3, v9, :cond_15

    .line 270
    .line 271
    iget v3, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mPointerAlpha:I

    .line 272
    .line 273
    add-int/2addr v2, v3

    .line 274
    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 275
    .line 276
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    sub-int/2addr v2, v1

    .line 281
    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 282
    .line 283
    :cond_15
    :goto_7
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v12, v13}, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->show(ILandroid/graphics/Rect;)V

    .line 287
    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_16
    and-int/lit8 v1, v12, 0x1

    .line 291
    .line 292
    if-nez v1, :cond_17

    .line 293
    .line 294
    and-int/lit8 v1, v12, 0x4

    .line 295
    .line 296
    if-eqz v1, :cond_18

    .line 297
    .line 298
    :cond_17
    invoke-static {v12, v3, v7, v13, v14}, Lcom/android/wm/shell/freeform/DexSnappingGuide;->calculateGuideSize(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v10, v12, v13}, Lcom/android/wm/shell/freeform/DexSnappingGuideView;->show(ILandroid/graphics/Rect;)V

    .line 302
    .line 303
    .line 304
    :cond_18
    :goto_8
    iput v12, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    .line 305
    .line 306
    return v12

    .line 307
    :cond_19
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    iput v4, v0, Lcom/android/wm/shell/freeform/DexSnappingGuide;->mLastSnapType:I

    .line 311
    .line 312
    return v4
.end method
