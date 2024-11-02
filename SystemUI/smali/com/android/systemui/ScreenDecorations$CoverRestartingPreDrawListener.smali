.class public final Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final mTargetRotation:I

.field public final mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method private constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->mView:Landroid/view/View;

    .line 4
    iput p3, p0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->mTargetRotation:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/RegionInterceptingFrameLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->mView:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    iget v1, v0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->mTargetRotation:I

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 15
    .line 16
    iget v3, v2, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v1, v3, :cond_0

    .line 20
    .line 21
    return v4

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v2, Lcom/android/systemui/ScreenDecorations;->mCoverPendingConfigChange:Z

    .line 24
    .line 25
    iget-object v3, v2, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-ne v3, v5, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v4, v1

    .line 43
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v5, "must call on "

    .line 46
    .line 47
    .line 48
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v5, v2, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v5, ", but was "

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v4, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v2, Lcom/android/systemui/ScreenDecorations;->mCoverWindowContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iget-object v4, v2, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 92
    .line 93
    .line 94
    iget-object v3, v2, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 95
    .line 96
    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 97
    .line 98
    iget-object v14, v2, Lcom/android/systemui/ScreenDecorations;->mCoverDotViewController:Lcom/android/systemui/decor/CoverPrivacyDotViewController;

    .line 99
    .line 100
    iget-object v4, v14, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter v4

    .line 103
    :try_start_0
    iget-object v5, v14, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 104
    .line 105
    iget v6, v5, Lcom/android/systemui/decor/CoverViewState;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    .line 107
    if-ne v3, v6, :cond_2

    .line 108
    .line 109
    monitor-exit v4

    .line 110
    goto :goto_3

    .line 111
    :cond_2
    :try_start_1
    iget-boolean v5, v5, Lcom/android/systemui/decor/CoverViewState;->layoutRtl:Z

    .line 112
    .line 113
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    monitor-exit v4

    .line 116
    invoke-virtual {v14}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_3

    .line 129
    .line 130
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Landroid/view/View;

    .line 135
    .line 136
    const/4 v7, 0x4

    .line 137
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v14, v3, v5}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    if-eqz v11, :cond_4

    .line 146
    .line 147
    invoke-virtual {v14, v11}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    const/4 v4, -0x1

    .line 153
    :goto_2
    move v10, v4

    .line 154
    iget-object v15, v14, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 155
    .line 156
    monitor-enter v15

    .line 157
    :try_start_2
    iget-object v4, v14, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->nextViewState:Lcom/android/systemui/decor/CoverViewState;

    .line 158
    .line 159
    const/4 v5, 0x0

    .line 160
    const/4 v6, 0x0

    .line 161
    const/4 v7, 0x0

    .line 162
    const/4 v8, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    const/16 v13, 0x8f

    .line 165
    .line 166
    move v9, v3

    .line 167
    invoke-static/range {v4 .. v13}, Lcom/android/systemui/decor/CoverViewState;->copy$default(Lcom/android/systemui/decor/CoverViewState;ZZZZIILandroid/view/View;Ljava/lang/String;I)Lcom/android/systemui/decor/CoverViewState;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v14, v4}, Lcom/android/systemui/decor/CoverPrivacyDotViewController;->setNextViewState(Lcom/android/systemui/decor/CoverViewState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    monitor-exit v15

    .line 175
    :goto_3
    iget-boolean v4, v2, Lcom/android/systemui/ScreenDecorations;->mCoverPendingConfigChange:Z

    .line 176
    .line 177
    if-nez v4, :cond_6

    .line 178
    .line 179
    iget v4, v2, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 180
    .line 181
    if-eq v3, v4, :cond_6

    .line 182
    .line 183
    iget-object v5, v2, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    .line 184
    .line 185
    iget-object v6, v5, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 186
    .line 187
    const-string v7, "ScreenDecorationsLog"

    .line 188
    .line 189
    sget-object v8, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 190
    .line 191
    const-string/jumbo v5, "updateCoverRotation, "

    .line 192
    .line 193
    .line 194
    const-string v9, " -> "

    .line 195
    .line 196
    invoke-static {v5, v4, v9, v3}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    const/4 v10, 0x0

    .line 201
    const/16 v11, 0x8

    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    invoke-static/range {v6 .. v12}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    iput v3, v2, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 208
    .line 209
    const/4 v14, 0x0

    .line 210
    invoke-virtual {v2}, Lcom/android/systemui/ScreenDecorations;->hasCoverOverlay()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_5

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_5
    iget-object v13, v2, Lcom/android/systemui/ScreenDecorations;->mCoverOverlay:Lcom/android/systemui/decor/OverlayWindow;

    .line 218
    .line 219
    const/4 v15, 0x0

    .line 220
    iget v3, v2, Lcom/android/systemui/ScreenDecorations;->mCoverRotation:I

    .line 221
    .line 222
    iget v4, v2, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    .line 223
    .line 224
    iget-object v2, v2, Lcom/android/systemui/ScreenDecorations;->mCoverDisplayInfo:Landroid/view/DisplayInfo;

    .line 225
    .line 226
    iget-object v2, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 227
    .line 228
    move/from16 v16, v3

    .line 229
    .line 230
    move/from16 v17, v4

    .line 231
    .line 232
    move-object/from16 v18, v2

    .line 233
    .line 234
    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/decor/OverlayWindow;->onReloadResAndMeasure([Ljava/lang/Integer;IIILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener;->mView:Landroid/view/View;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 240
    .line 241
    .line 242
    return v1

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    monitor-exit v15

    .line 245
    throw v0

    .line 246
    :catchall_1
    move-exception v0

    .line 247
    monitor-exit v4

    .line 248
    throw v0
.end method
