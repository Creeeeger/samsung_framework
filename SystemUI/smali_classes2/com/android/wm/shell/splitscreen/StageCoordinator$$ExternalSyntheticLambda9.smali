.class public final synthetic Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;->f$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 2
    .line 3
    if-nez p1, :cond_11

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    .line 7
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget-wide v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 14
    .line 15
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    add-long/2addr v0, v2

    .line 18
    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSeqForAsyncTransaction:J

    .line 27
    .line 28
    invoke-virtual {p5, v0, v1}, Landroid/window/WindowContainerTransaction;->setSeqForAsyncTransaction(J)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 32
    .line 33
    iget-object v0, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    if-eq p2, p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p2, p3, v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(ILandroid/content/res/Resources;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 63
    .line 64
    iget v2, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mRotation:I

    .line 65
    .line 66
    invoke-virtual {v0, p3}, Lcom/android/wm/shell/common/split/SplitLayout;->rotateTo(I)V

    .line 67
    .line 68
    .line 69
    if-eqz p4, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 72
    .line 73
    iget-object p4, p4, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    .line 74
    .line 75
    invoke-virtual {v0, p4}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 76
    .line 77
    .line 78
    :cond_2
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    const/4 v3, 0x0

    .line 82
    if-eqz p4, :cond_4

    .line 83
    .line 84
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    if-nez p4, :cond_4

    .line 89
    .line 90
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 91
    .line 92
    if-eqz p4, :cond_6

    .line 93
    .line 94
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 95
    .line 96
    iget p4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    .line 97
    .line 98
    if-ne p4, v0, :cond_3

    .line 99
    .line 100
    move p4, v0

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move p4, v3

    .line 103
    :goto_0
    if-nez p4, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    if-eq v2, p3, :cond_6

    .line 107
    .line 108
    const/4 p4, 0x3

    .line 109
    if-eq p3, p4, :cond_5

    .line 110
    .line 111
    if-ne v2, p4, :cond_6

    .line 112
    .line 113
    :cond_5
    move p3, v0

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    :goto_1
    move p3, v3

    .line 116
    :goto_2
    if-eqz p3, :cond_a

    .line 117
    .line 118
    sget-boolean p4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 119
    .line 120
    if-eqz p4, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    .line 123
    .line 124
    .line 125
    move-result p4

    .line 126
    if-nez p4, :cond_a

    .line 127
    .line 128
    :cond_7
    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTopStageAfterFoldDismiss:I

    .line 129
    .line 130
    const/4 v2, -0x1

    .line 131
    if-eq p4, v2, :cond_8

    .line 132
    .line 133
    move p4, v0

    .line 134
    goto :goto_3

    .line 135
    :cond_8
    move p4, v3

    .line 136
    :goto_3
    if-nez p4, :cond_a

    .line 137
    .line 138
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 139
    .line 140
    iget v2, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 141
    .line 142
    iget v4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerSize:I

    .line 143
    .line 144
    add-int/2addr v2, v4

    .line 145
    int-to-float v2, v2

    .line 146
    iget-object v4, p4, Lcom/android/wm/shell/common/split/SplitLayout;->mRootBounds:Landroid/graphics/Rect;

    .line 147
    .line 148
    invoke-static {v4}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape(Landroid/graphics/Rect;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_9

    .line 153
    .line 154
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    goto :goto_4

    .line 159
    :cond_9
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    :goto_4
    int-to-float v4, v4

    .line 164
    div-float/2addr v2, v4

    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    .line 167
    sub-float/2addr v4, v2

    .line 168
    invoke-virtual {p4, v4, v3, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(FZZ)V

    .line 169
    .line 170
    .line 171
    iget p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 172
    .line 173
    invoke-static {p4}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 174
    .line 175
    .line 176
    move-result p4

    .line 177
    invoke-virtual {p0, p5, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(Landroid/window/WindowContainerTransaction;I)V

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_a
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 182
    .line 183
    invoke-virtual {p0, p4, p5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;Z)Z

    .line 184
    .line 185
    .line 186
    :goto_5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isLandscape()Z

    .line 187
    .line 188
    .line 189
    move-result p4

    .line 190
    if-eq p2, p4, :cond_f

    .line 191
    .line 192
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREE_POSITION:Z

    .line 193
    .line 194
    if-eqz p2, :cond_b

    .line 195
    .line 196
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-nez p2, :cond_d

    .line 201
    .line 202
    :cond_b
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 203
    .line 204
    if-eqz p2, :cond_e

    .line 205
    .line 206
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 207
    .line 208
    iget p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitScreenFeasibleMode:I

    .line 209
    .line 210
    if-ne p2, v0, :cond_c

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_c
    move v0, v3

    .line 214
    :goto_6
    if-eqz v0, :cond_e

    .line 215
    .line 216
    :cond_d
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSplitDivisionIfNeeded()V

    .line 217
    .line 218
    .line 219
    :cond_e
    invoke-virtual {p0, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateStagePositionIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 220
    .line 221
    .line 222
    :cond_f
    if-eqz p3, :cond_10

    .line 223
    .line 224
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 225
    .line 226
    if-eqz p1, :cond_10

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-nez p1, :cond_10

    .line 233
    .line 234
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 235
    .line 236
    invoke-virtual {p0, p1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->handleLayoutSizeChange(Lcom/android/wm/shell/common/split/SplitLayout;Z)V

    .line 237
    .line 238
    .line 239
    :cond_10
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    :goto_7
    return-void
.end method
