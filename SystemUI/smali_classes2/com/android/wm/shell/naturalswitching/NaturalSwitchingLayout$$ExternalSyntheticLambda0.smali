.class public final synthetic Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "NaturalSwitchingLayout"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string/jumbo p0, "startNaturalSwitchingIfNeeded: failed, already started!"

    .line 22
    .line 23
    .line 24
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string/jumbo p0, "startNaturalSwitchingIfNeeded: failed, reason=hide_requested"

    .line 34
    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iput-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    .line 47
    .line 48
    if-ne v0, v3, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 59
    .line 60
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setDividerVisibilityFromNS(Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object v3, v0

    .line 81
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v4, "startNaturalSwitchingIfNeeded: "

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mBinder:Landroid/os/Binder;

    .line 104
    .line 105
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startNaturalSwitching(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    .line 106
    .line 107
    .line 108
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    .line 113
    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    .line 117
    .line 118
    if-ne v0, v1, :cond_5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleTaskAppearedInfos()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 133
    .line 134
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda4;

    .line 138
    .line 139
    invoke-direct {v3, p0, v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;Landroid/view/SurfaceControl$Transaction;)V

    .line 140
    .line 141
    .line 142
    check-cast v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_6

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_0
    return-void

    .line 157
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 160
    .line 161
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    .line 168
    .line 169
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    .line 170
    .line 171
    if-eqz v0, :cond_7

    .line 172
    .line 173
    const-string p0, "onPreDraw: failed, reason=hide_requested"

    .line 174
    .line 175
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_7
    iput-boolean v3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mReadyToStart:Z

    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    const-string v2, "NonDragTargetView"

    .line 187
    .line 188
    const-string/jumbo v5, "showBackground"

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDimView:Landroid/view/View;

    .line 200
    .line 201
    iget v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    .line 202
    .line 203
    if-ne v0, v3, :cond_8

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_8
    const/16 v4, 0x8

    .line 207
    .line 208
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    .line 212
    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    const/16 v2, 0x6c

    .line 225
    .line 226
    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    const-string v4, "audio"

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, Landroid/media/AudioManager;

    .line 244
    .line 245
    if-nez v2, :cond_9

    .line 246
    .line 247
    const-string v2, "DragTargetView"

    .line 248
    .line 249
    const-string/jumbo v4, "performSoundEffect: Couldn\'t get audio manager"

    .line 250
    .line 251
    .line 252
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_9
    const/16 v4, 0x6a

    .line 257
    .line 258
    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 259
    .line 260
    .line 261
    :goto_2
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    .line 262
    .line 263
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->startTransition(Z)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    .line 268
    .line 269
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->startSpringAnimation(Z)V

    .line 270
    .line 271
    .line 272
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    .line 273
    .line 274
    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    .line 275
    .line 276
    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    :goto_4
    return-void

    .line 283
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p0, Lcom/android/wm/shell/common/DismissButtonManager;

    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissButtonManager;->cleanUpDismissTarget()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
