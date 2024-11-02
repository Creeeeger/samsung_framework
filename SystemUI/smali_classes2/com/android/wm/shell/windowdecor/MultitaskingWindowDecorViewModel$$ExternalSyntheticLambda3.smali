.class public final synthetic Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$4:Landroid/window/WindowContainerTransaction;


# direct methods
.method public synthetic constructor <init>(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$4:Landroid/window/WindowContainerTransaction;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3;->f$4:Landroid/window/WindowContainerTransaction;

    .line 8
    .line 9
    check-cast p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

    .line 10
    .line 11
    if-nez v0, :cond_c

    .line 12
    .line 13
    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v0, v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_6

    .line 22
    .line 23
    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    .line 27
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    check-cast v4, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 58
    .line 59
    if-eq v4, v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0, v3, v5}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_0
    new-instance v4, Lcom/android/wm/shell/common/DisplayLayout;

    .line 69
    .line 70
    invoke-direct {v4, v0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v4, v2, v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(ILandroid/content/res/Resources;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v3, v5}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v4, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    .line 86
    .line 87
    :goto_1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY:Z

    .line 88
    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iget v4, v4, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 98
    .line 99
    const/4 v6, 0x5

    .line 100
    if-eq v4, v6, :cond_4

    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    :cond_4
    if-eqz v5, :cond_5

    .line 104
    .line 105
    new-instance v4, Landroid/graphics/Rect;

    .line 106
    .line 107
    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 108
    .line 109
    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 115
    .line 116
    iget-object v7, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 117
    .line 118
    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-static {v6, v3, v4, v7}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 125
    .line 126
    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mLastFreeformBoundsBeforeStash:Landroid/graphics/Rect;

    .line 127
    .line 128
    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 129
    .line 130
    invoke-static {v4, v6, v1, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 131
    .line 132
    .line 133
    :goto_2
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_6

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_6
    iget-object v4, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    .line 144
    .line 145
    iget-object v6, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 146
    .line 147
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 148
    .line 149
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 150
    .line 151
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 156
    .line 157
    .line 158
    if-eqz v5, :cond_7

    .line 159
    .line 160
    new-instance v1, Landroid/graphics/Rect;

    .line 161
    .line 162
    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-static {v2, v3, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->adjustBoundsForScreenRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    iget-object v5, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-static {v4, v5, v1, v2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 174
    .line 175
    .line 176
    :goto_3
    if-eqz v0, :cond_8

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget v1, v3, Landroid/graphics/Rect;->left:I

    .line 183
    .line 184
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 185
    .line 186
    sub-int/2addr v1, v2

    .line 187
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 190
    .line 191
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 192
    .line 193
    add-int/2addr v5, v0

    .line 194
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 195
    .line 196
    invoke-virtual {v3, v1, v2, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    .line 198
    .line 199
    :cond_8
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 200
    .line 201
    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 202
    .line 203
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 204
    .line 205
    iget v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    .line 206
    .line 207
    iget v2, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashType:I

    .line 208
    .line 209
    if-nez v2, :cond_9

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_9
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isLeftStashed()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_a

    .line 217
    .line 218
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 219
    .line 220
    add-int/2addr v2, v1

    .line 221
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    goto :goto_4

    .line 226
    :cond_a
    iget v2, v3, Landroid/graphics/Rect;->right:I

    .line 227
    .line 228
    :goto_4
    sub-int/2addr v2, v1

    .line 229
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformStashYFraction:F

    .line 230
    .line 231
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    int-to-float v1, v1

    .line 236
    mul-float/2addr v0, v1

    .line 237
    float-to-int v0, v0

    .line 238
    invoke-virtual {v4, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 239
    .line 240
    .line 241
    :goto_5
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 242
    .line 243
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 244
    .line 245
    invoke-virtual {p0, v0, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_b

    .line 253
    .line 254
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 255
    .line 256
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getFreeformThickness$1()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->getCaptionVisibleHeight()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->updateDimBounds(IILandroid/graphics/Rect;)V

    .line 265
    .line 266
    .line 267
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    .line 270
    .line 271
    iget p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    .line 272
    .line 273
    int-to-float p0, p0

    .line 274
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    int-to-float v0, v0

    .line 279
    div-float/2addr p0, v0

    .line 280
    iget-object v0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    .line 281
    .line 282
    iget v0, v0, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    .line 283
    .line 284
    cmpl-float v0, v0, p0

    .line 285
    .line 286
    if-eqz v0, :cond_b

    .line 287
    .line 288
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 289
    .line 290
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 291
    .line 292
    .line 293
    iget-object v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 294
    .line 295
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 296
    .line 297
    invoke-virtual {v0, v1, p0}, Landroid/window/WindowContainerTransaction;->setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;

    .line 298
    .line 299
    .line 300
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 301
    .line 302
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 303
    .line 304
    .line 305
    :cond_b
    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    .line 306
    .line 307
    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    :goto_6
    return-void
.end method
