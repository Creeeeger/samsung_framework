.class public final Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDropTargetUiController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDragStartedWithinThreshold:Z

.field public mEdgeFlags:I

.field public mIgnoreActionDragLocation:Z

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mShowDropTarget:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 14
    .line 15
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 24
    .line 25
    return-void
.end method

.method public static containsFlag(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    const v1, 0x3d656042    # 0.056f

    .line 25
    .line 26
    .line 27
    mul-float/2addr v0, v1

    .line 28
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    .line 30
    add-float/2addr v0, v1

    .line 31
    float-to-int v0, v0

    .line 32
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v2, v0

    .line 37
    cmpg-float v1, v1, v2

    .line 38
    .line 39
    if-ltz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 46
    .line 47
    sub-int/2addr p1, v0

    .line 48
    int-to-float p1, p1

    .line 49
    cmpl-float p0, p0, p1

    .line 50
    .line 51
    if-lez p0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 p0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 57
    :goto_1
    return p0
.end method


# virtual methods
.method public final onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, -0x1

    .line 15
    const-string v7, "DragAndDropController_Launchable"

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v10, 0x2

    .line 21
    iget-object v11, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    const/4 v13, 0x0

    .line 25
    if-eq v4, v12, :cond_13

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    if-eq v4, v10, :cond_4

    .line 29
    .line 30
    if-eq v4, v5, :cond_3

    .line 31
    .line 32
    if-eq v4, v2, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    if-eq v4, v1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_b

    .line 38
    .line 39
    :cond_0
    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 40
    .line 41
    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 42
    .line 43
    check-cast v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 44
    .line 45
    invoke-virtual {v1, v8, v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_b

    .line 49
    .line 50
    :cond_1
    iput-boolean v12, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 51
    .line 52
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 53
    .line 54
    move-object v4, v2

    .line 55
    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 56
    .line 57
    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    .line 58
    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 62
    .line 63
    sub-int/2addr v4, v12

    .line 64
    iput v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 65
    .line 66
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    new-instance v4, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-direct {v4, v0, v3}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v2, v1, v4}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iput-boolean v13, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 79
    .line 80
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_b

    .line 86
    .line 87
    :cond_3
    iput-boolean v12, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 88
    .line 89
    invoke-virtual {v11, v1, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    return v0

    .line 94
    :cond_4
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 95
    .line 96
    if-eqz v4, :cond_5

    .line 97
    .line 98
    const-string v0, "Ignore ACTION_DRAG_LOCATION"

    .line 99
    .line 100
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return v13

    .line 104
    :cond_5
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    .line 105
    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    invoke-static {v1, v3}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_6

    .line 113
    .line 114
    iput-boolean v13, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    .line 115
    .line 116
    :cond_6
    return v12

    .line 117
    :cond_7
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 118
    .line 119
    if-eqz v4, :cond_9

    .line 120
    .line 121
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 122
    .line 123
    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    .line 131
    .line 132
    .line 133
    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 134
    .line 135
    check-cast v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 136
    .line 137
    iget-object v4, v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissButtonView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 138
    .line 139
    iget-boolean v4, v4, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 140
    .line 141
    if-eqz v4, :cond_29

    .line 142
    .line 143
    iput-boolean v13, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 144
    .line 145
    invoke-virtual {v1, v8, v13}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-static {v3, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 155
    .line 156
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 157
    .line 158
    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    iput-boolean v13, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    .line 163
    .line 164
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyDragSplitAppIconHasDrawable(Z)V

    .line 169
    .line 170
    .line 171
    :cond_8
    return v13

    .line 172
    :cond_9
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    .line 173
    .line 174
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    float-to-int v4, v4

    .line 187
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    int-to-float v5, v5

    .line 200
    const v7, 0x3d656042    # 0.056f

    .line 201
    .line 202
    .line 203
    mul-float/2addr v5, v7

    .line 204
    const/high16 v7, 0x3f000000    # 0.5f

    .line 205
    .line 206
    add-float/2addr v5, v7

    .line 207
    float-to-int v5, v5

    .line 208
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 209
    .line 210
    sub-int/2addr v2, v5

    .line 211
    iget v7, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 212
    .line 213
    invoke-static {v7, v12}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag(II)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_a

    .line 218
    .line 219
    if-lt v4, v5, :cond_b

    .line 220
    .line 221
    :cond_a
    iget v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 222
    .line 223
    invoke-static {v5, v10}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag(II)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_c

    .line 228
    .line 229
    if-le v4, v2, :cond_c

    .line 230
    .line 231
    :cond_b
    move v2, v12

    .line 232
    goto :goto_0

    .line 233
    :cond_c
    move v2, v13

    .line 234
    :goto_0
    if-eqz v2, :cond_11

    .line 235
    .line 236
    invoke-static {v9}, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->showIfNeeded(Landroid/content/Context;)Z

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eqz v2, :cond_d

    .line 241
    .line 242
    iput-boolean v12, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 243
    .line 244
    return v13

    .line 245
    :cond_d
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    .line 248
    .line 249
    if-eqz v2, :cond_e

    .line 250
    .line 251
    invoke-interface {v2}, Lcom/android/wm/shell/draganddrop/AppResult;->hasResizableResolveInfo()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_e

    .line 256
    .line 257
    move v2, v12

    .line 258
    goto :goto_1

    .line 259
    :cond_e
    move v2, v13

    .line 260
    :goto_1
    if-nez v2, :cond_f

    .line 261
    .line 262
    const v1, 0x7f1304d4

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-static {v9, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 274
    .line 275
    .line 276
    iput-boolean v12, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 277
    .line 278
    return v13

    .line 279
    :cond_f
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/draganddrop/IDropTargetUiController;->performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    invoke-static {v3, v13}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 286
    .line 287
    .line 288
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 289
    .line 290
    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    .line 293
    .line 294
    .line 295
    iput-boolean v12, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    .line 296
    .line 297
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 298
    .line 299
    if-eqz v2, :cond_10

    .line 300
    .line 301
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    if-eqz v2, :cond_10

    .line 306
    .line 307
    iget-object v2, v11, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 308
    .line 309
    new-instance v4, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda1;

    .line 310
    .line 311
    invoke-direct {v4, v0}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;)V

    .line 312
    .line 313
    .line 314
    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 315
    .line 316
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 317
    .line 318
    .line 319
    :cond_10
    new-instance v0, Landroid/content/Intent;

    .line 320
    .line 321
    const-string v2, "com.samsung.android.action.ENTER_CONTENTS_TO_WINDOW"

    .line 322
    .line 323
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const/high16 v2, 0x40000000    # 2.0f

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 332
    .line 333
    const-string v4, "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

    .line 334
    .line 335
    invoke-virtual {v9, v0, v2, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    :cond_11
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    .line 339
    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    float-to-int v1, v1

    .line 345
    iget-boolean v2, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    .line 346
    .line 347
    if-eqz v2, :cond_29

    .line 348
    .line 349
    iget v2, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mInitialX:I

    .line 350
    .line 351
    iget v3, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    .line 352
    .line 353
    div-int/2addr v3, v10

    .line 354
    sub-int/2addr v1, v3

    .line 355
    iget v3, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    .line 356
    .line 357
    sub-int/2addr v1, v3

    .line 358
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    .line 363
    .line 364
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 365
    .line 366
    if-eqz v3, :cond_29

    .line 367
    .line 368
    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-nez v3, :cond_12

    .line 373
    .line 374
    goto/16 :goto_b

    .line 375
    .line 376
    :cond_12
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 377
    .line 378
    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 379
    .line 380
    .line 381
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 382
    .line 383
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_b

    .line 387
    .line 388
    :cond_13
    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 389
    .line 390
    if-eqz v4, :cond_14

    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v1, "Unexpected drag start during an active drag="

    .line 395
    .line 396
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 400
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    return v13

    .line 412
    :cond_14
    iput-boolean v13, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    .line 413
    .line 414
    add-int/2addr v4, v12

    .line 415
    iput v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 416
    .line 417
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 418
    .line 419
    iget-object v14, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 420
    .line 421
    invoke-virtual {v14, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 422
    .line 423
    .line 424
    move-result-object v16

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 426
    .line 427
    .line 428
    move-result-object v17

    .line 429
    const/16 v18, 0x0

    .line 430
    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    .line 432
    .line 433
    .line 434
    move-result-object v19

    .line 435
    iget-object v15, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 436
    .line 437
    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 438
    .line 439
    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 440
    .line 441
    move-object/from16 v20, v15

    .line 442
    .line 443
    move-object v15, v4

    .line 444
    move-object/from16 v21, v8

    .line 445
    .line 446
    invoke-virtual/range {v15 .. v21}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 447
    .line 448
    .line 449
    invoke-static {v1, v3}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    iput-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    .line 454
    .line 455
    iput v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 456
    .line 457
    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    .line 458
    .line 459
    invoke-virtual {v14, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    if-eqz v4, :cond_17

    .line 464
    .line 465
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    iget v8, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 470
    .line 471
    iget v9, v4, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 472
    .line 473
    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 474
    .line 475
    invoke-static {v5, v8, v9, v4}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-eq v4, v12, :cond_16

    .line 480
    .line 481
    if-eq v4, v10, :cond_15

    .line 482
    .line 483
    goto :goto_2

    .line 484
    :cond_15
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 485
    .line 486
    and-int/lit8 v4, v4, -0x3

    .line 487
    .line 488
    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_16
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 492
    .line 493
    and-int/lit8 v4, v4, -0x2

    .line 494
    .line 495
    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 496
    .line 497
    :cond_17
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    if-nez v4, :cond_18

    .line 502
    .line 503
    const-string/jumbo v4, "setIgnoreEdgeFlags. clipData null."

    .line 504
    .line 505
    .line 506
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    goto :goto_3

    .line 510
    :cond_18
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    const-string/jumbo v5, "setIgnoreEdgeFlags. description null."

    .line 515
    .line 516
    .line 517
    if-nez v4, :cond_19

    .line 518
    .line 519
    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    goto :goto_3

    .line 523
    :cond_19
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    .line 524
    .line 525
    .line 526
    move-result-object v4

    .line 527
    if-nez v4, :cond_1a

    .line 528
    .line 529
    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    goto :goto_3

    .line 533
    :cond_1a
    const-string v5, "com.samsung.android.content.clipdescription.extra.IGNORE_LEFT_EDGE"

    .line 534
    .line 535
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    if-eqz v5, :cond_1b

    .line 540
    .line 541
    iget v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 542
    .line 543
    and-int/lit8 v5, v5, -0x2

    .line 544
    .line 545
    iput v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 546
    .line 547
    :cond_1b
    const-string v5, "com.samsung.android.content.clipdescription.extra.IGNORE_RIGHT_EDGE"

    .line 548
    .line 549
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-eqz v4, :cond_1c

    .line 554
    .line 555
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 556
    .line 557
    and-int/lit8 v4, v4, -0x3

    .line 558
    .line 559
    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 560
    .line 561
    :cond_1c
    :goto_3
    invoke-virtual {v11}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyDragStarted()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v11}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->supportsMultiWindow()Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-eqz v4, :cond_29

    .line 569
    .line 570
    invoke-virtual {v14, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 575
    .line 576
    invoke-static {v4, v12}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag(II)Z

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    if-eqz v4, :cond_1d

    .line 581
    .line 582
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 583
    .line 584
    invoke-static {v4, v10}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag(II)Z

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    if-eqz v4, :cond_1d

    .line 589
    .line 590
    move v4, v12

    .line 591
    goto :goto_4

    .line 592
    :cond_1d
    move v4, v13

    .line 593
    :goto_4
    if-eqz v4, :cond_1e

    .line 594
    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    float-to-int v0, v0

    .line 600
    goto :goto_5

    .line 601
    :cond_1e
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 602
    .line 603
    invoke-static {v4, v12}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag(II)Z

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    if-eqz v4, :cond_1f

    .line 608
    .line 609
    move v0, v13

    .line 610
    goto :goto_5

    .line 611
    :cond_1f
    iget v0, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    .line 612
    .line 613
    invoke-static {v0, v10}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag(II)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-eqz v0, :cond_20

    .line 618
    .line 619
    iget v0, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 620
    .line 621
    goto :goto_5

    .line 622
    :cond_20
    move v0, v6

    .line 623
    :goto_5
    if-eq v0, v6, :cond_29

    .line 624
    .line 625
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    .line 626
    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    float-to-int v4, v4

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHeight()I

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    iget-object v5, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mContext:Landroid/content/Context;

    .line 641
    .line 642
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    const v6, 0x7f0702f2

    .line 647
    .line 648
    .line 649
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 650
    .line 651
    .line 652
    move-result v5

    .line 653
    iput v5, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    .line 654
    .line 655
    iget-object v5, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    .line 656
    .line 657
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    .line 658
    .line 659
    .line 660
    iput v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    .line 661
    .line 662
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    div-int/2addr v1, v10

    .line 667
    if-le v0, v1, :cond_21

    .line 668
    .line 669
    move v1, v12

    .line 670
    goto :goto_6

    .line 671
    :cond_21
    move v1, v13

    .line 672
    :goto_6
    if-eqz v1, :cond_22

    .line 673
    .line 674
    iget v1, v5, Landroid/graphics/Rect;->right:I

    .line 675
    .line 676
    goto :goto_7

    .line 677
    :cond_22
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 678
    .line 679
    :goto_7
    iput v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mInitialX:I

    .line 680
    .line 681
    iget v2, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    .line 682
    .line 683
    div-int/2addr v2, v10

    .line 684
    sub-int/2addr v4, v2

    .line 685
    iget v2, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    .line 686
    .line 687
    sub-int/2addr v4, v2

    .line 688
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    .line 689
    .line 690
    .line 691
    move-result v2

    .line 692
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 693
    .line 694
    .line 695
    move-result v4

    .line 696
    div-int/2addr v4, v10

    .line 697
    if-le v0, v4, :cond_23

    .line 698
    .line 699
    move v0, v12

    .line 700
    goto :goto_8

    .line 701
    :cond_23
    move v0, v13

    .line 702
    :goto_8
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    .line 703
    .line 704
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    .line 705
    .line 706
    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    .line 707
    .line 708
    invoke-interface {v6, v5, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 709
    .line 710
    .line 711
    move-result v5

    .line 712
    iget v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mLimitCount:I

    .line 713
    .line 714
    if-lt v5, v6, :cond_24

    .line 715
    .line 716
    goto/16 :goto_a

    .line 717
    .line 718
    :cond_24
    iget-boolean v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    .line 719
    .line 720
    if-eqz v5, :cond_25

    .line 721
    .line 722
    goto/16 :goto_a

    .line 723
    .line 724
    :cond_25
    iput-boolean v12, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    .line 725
    .line 726
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 727
    .line 728
    if-nez v5, :cond_27

    .line 729
    .line 730
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    .line 731
    .line 732
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    iget v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mLayoutResId:I

    .line 737
    .line 738
    const/4 v7, 0x0

    .line 739
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 740
    .line 741
    .line 742
    move-result-object v5

    .line 743
    iput-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 744
    .line 745
    new-instance v5, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v6, "SmartTip"

    .line 748
    .line 749
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    new-instance v7, Ljava/lang/StringBuilder;

    .line 762
    .line 763
    const-string v8, "addView: mRootView="

    .line 764
    .line 765
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    iget-object v8, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 769
    .line 770
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v7

    .line 777
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    .line 781
    .line 782
    const/4 v15, -0x1

    .line 783
    const/16 v16, -0x1

    .line 784
    .line 785
    const/16 v17, 0x96c

    .line 786
    .line 787
    const v18, 0x1000118

    .line 788
    .line 789
    .line 790
    const/16 v19, -0x3

    .line 791
    .line 792
    move-object v14, v5

    .line 793
    invoke-direct/range {v14 .. v19}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 797
    .line 798
    .line 799
    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 800
    .line 801
    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    .line 802
    .line 803
    iget-object v7, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 804
    .line 805
    invoke-interface {v6, v7, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    .line 807
    .line 808
    new-instance v5, Lcom/samsung/android/widget/SemTipPopup;

    .line 809
    .line 810
    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 811
    .line 812
    invoke-direct {v5, v6, v13}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    .line 813
    .line 814
    .line 815
    iput-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 816
    .line 817
    invoke-virtual {v5}, Lcom/samsung/android/widget/SemTipPopup;->semGetBubblePopupWindow()Landroid/widget/PopupWindow;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    if-eqz v5, :cond_26

    .line 822
    .line 823
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 824
    .line 825
    invoke-virtual {v5}, Lcom/samsung/android/widget/SemTipPopup;->semGetBubblePopupWindow()Landroid/widget/PopupWindow;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    invoke-virtual {v5, v13}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 830
    .line 831
    .line 832
    :cond_26
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 833
    .line 834
    invoke-virtual {v5}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    .line 835
    .line 836
    .line 837
    move-result-object v5

    .line 838
    if-eqz v5, :cond_27

    .line 839
    .line 840
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 841
    .line 842
    invoke-virtual {v5}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    .line 843
    .line 844
    .line 845
    move-result-object v5

    .line 846
    invoke-virtual {v5, v13}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 847
    .line 848
    .line 849
    :cond_27
    xor-int/2addr v0, v12

    .line 850
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 851
    .line 852
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 853
    .line 854
    .line 855
    move-result v5

    .line 856
    if-eqz v5, :cond_28

    .line 857
    .line 858
    invoke-virtual {v4, v1, v2, v0, v12}, Lcom/android/wm/shell/draganddrop/SmartTip;->showTipPopup(IIIZ)V

    .line 859
    .line 860
    .line 861
    goto :goto_9

    .line 862
    :cond_28
    iget-object v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 863
    .line 864
    new-instance v6, Lcom/android/wm/shell/draganddrop/SmartTip$1;

    .line 865
    .line 866
    const/16 v18, 0x1

    .line 867
    .line 868
    move-object v14, v6

    .line 869
    move-object v15, v4

    .line 870
    move/from16 v16, v1

    .line 871
    .line 872
    move/from16 v17, v2

    .line 873
    .line 874
    move/from16 v19, v0

    .line 875
    .line 876
    invoke-direct/range {v14 .. v19}, Lcom/android/wm/shell/draganddrop/SmartTip$1;-><init>(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v5, v6}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 880
    .line 881
    .line 882
    :goto_9
    iget-object v0, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    .line 883
    .line 884
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    iget-object v2, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    .line 889
    .line 890
    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    add-int/2addr v0, v12

    .line 895
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 896
    .line 897
    .line 898
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 899
    .line 900
    .line 901
    move v13, v12

    .line 902
    :goto_a
    iput-boolean v13, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    .line 903
    .line 904
    :cond_29
    :goto_b
    return v12
.end method
