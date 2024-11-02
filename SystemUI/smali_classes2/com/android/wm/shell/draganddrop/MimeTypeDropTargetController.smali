.class public final Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDropTargetUiController;


# instance fields
.field public final mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mIgnoreActionDragLocation:Z

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "DragAndDropController_Mime"

    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    packed-switch v3, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :pswitch_0
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :pswitch_1
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 33
    .line 34
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 35
    .line 36
    iget-boolean v3, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    const-string v0, "dragLayout is showing"

    .line 41
    .line 42
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return v8

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    .line 47
    .line 48
    .line 49
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 50
    .line 51
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :pswitch_2
    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    .line 59
    .line 60
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 61
    .line 62
    move-object v4, v3

    .line 63
    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 64
    .line 65
    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_DROPPED:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 73
    .line 74
    iget-object v1, v5, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 75
    .line 76
    invoke-virtual {v5, v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget v4, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 81
    .line 82
    sub-int/2addr v4, v8

    .line 83
    iput v4, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 84
    .line 85
    new-instance v4, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v3, v1, v4}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_END:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    .line 97
    .line 98
    iget-object v1, v5, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 99
    .line 100
    invoke-virtual {v5, v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;Landroid/content/pm/ActivityInfo;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :pswitch_3
    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    .line 106
    .line 107
    invoke-virtual {v7, v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    return v0

    .line 112
    :pswitch_4
    iget-boolean v3, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    .line 113
    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    const-string v0, "Ignore ACTION_DRAG_LOCATION"

    .line 117
    .line 118
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v6

    .line 122
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    float-to-int v4, v4

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    float-to-int v5, v5

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_4

    .line 151
    .line 152
    const/4 v6, 0x4

    .line 153
    :cond_4
    invoke-static {v2, v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 154
    .line 155
    .line 156
    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 157
    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_5

    .line 165
    .line 166
    iget-object v3, v7, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 167
    .line 168
    new-instance v4, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;

    .line 169
    .line 170
    invoke-direct {v4, v0}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;)V

    .line 171
    .line 172
    .line 173
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 179
    .line 180
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :pswitch_5
    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 187
    .line 188
    if-eqz v3, :cond_6

    .line 189
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v1, "Unexpected drag start during an active drag="

    .line 193
    .line 194
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    return v6

    .line 210
    :cond_6
    iput-boolean v6, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    .line 211
    .line 212
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logStart(Landroid/view/DragEvent;)Lcom/android/internal/logging/InstanceId;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 217
    .line 218
    add-int/2addr v3, v8

    .line 219
    iput v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 220
    .line 221
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 224
    .line 225
    move/from16 v4, p2

    .line 226
    .line 227
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    iget-object v14, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    .line 240
    .line 241
    iget-object v15, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    .line 242
    .line 243
    move-object v9, v3

    .line 244
    check-cast v9, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 245
    .line 246
    invoke-virtual/range {v9 .. v15}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-static {v2, v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyDragStarted()V

    .line 256
    .line 257
    .line 258
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/draganddrop/IDropTargetUiController;->performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 262
    .line 263
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    .line 266
    .line 267
    .line 268
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    .line 269
    .line 270
    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    .line 273
    .line 274
    .line 275
    :goto_2
    return v8

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
