.class public final Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mClipNotificationScrollToTop:Z

.field public mCollapsedSize:I

.field public mEnableNotificationClipping:Z

.field public mGapHeight:F

.field public mGapHeightOnLockscreen:F

.field public mGroupExpandInterpolationY:F

.field mHeadsUpInset:F

.field public final mHostView:Landroid/view/ViewGroup;

.field public mIsExpanded:Z

.field public mMarginBottom:I

.field public mMaxGroupExpandedBottomGap:F

.field public mPaddingBetweenElements:F

.field public mPinnedZTranslationExtra:I

.field public final mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "StackScrollAlgorithm"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SourceType;->from(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/SourceType$Companion$from$1;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHostView:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static childNeedsGapHeight(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;ILandroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->beginsSection(Landroid/view/View;Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    instance-of p0, p3, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    instance-of p0, p2, Lcom/android/systemui/statusbar/notification/row/FooterView;

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static getNotificationChildrenStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_1e

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 18
    .line 19
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 20
    .line 21
    if-eqz v5, :cond_1c

    .line 22
    .line 23
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 24
    .line 25
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 26
    .line 27
    if-eqz v5, :cond_1c

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 32
    .line 33
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 34
    .line 35
    check-cast v6, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderExpandedHeight:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 53
    .line 54
    add-int/2addr v7, v2

    .line 55
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    const/4 v9, 0x1

    .line 60
    sub-int/2addr v8, v9

    .line 61
    add-int/lit8 v10, v8, 0x1

    .line 62
    .line 63
    iget-boolean v11, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 64
    .line 65
    if-eqz v11, :cond_1

    .line 66
    .line 67
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_1

    .line 72
    .line 73
    move v11, v9

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    move v11, v2

    .line 76
    :goto_2
    iget-boolean v12, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUserLocked:Z

    .line 77
    .line 78
    if-eqz v12, :cond_2

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    move v12, v10

    .line 90
    const/4 v10, 0x0

    .line 91
    :goto_3
    iget-boolean v14, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 92
    .line 93
    if-eqz v14, :cond_3

    .line 94
    .line 95
    iget-object v14, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 96
    .line 97
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    .line 98
    .line 99
    .line 100
    move-result v14

    .line 101
    if-nez v14, :cond_3

    .line 102
    .line 103
    move v14, v9

    .line 104
    goto :goto_4

    .line 105
    :cond_3
    move v14, v2

    .line 106
    :goto_4
    move v15, v2

    .line 107
    move/from16 v16, v9

    .line 108
    .line 109
    :goto_5
    if-ge v15, v6, :cond_f

    .line 110
    .line 111
    iget-object v9, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 112
    .line 113
    check-cast v9, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 120
    .line 121
    if-nez v16, :cond_6

    .line 122
    .line 123
    if-eqz v11, :cond_4

    .line 124
    .line 125
    int-to-float v7, v7

    .line 126
    iget v13, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 127
    .line 128
    int-to-float v13, v13

    .line 129
    iget v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 130
    .line 131
    int-to-float v2, v2

    .line 132
    invoke-static {v13, v2, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    add-float/2addr v2, v7

    .line 137
    float-to-int v2, v2

    .line 138
    goto :goto_9

    .line 139
    :cond_4
    iget-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    iget v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_5
    iget v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 147
    .line 148
    :goto_6
    add-int/2addr v2, v7

    .line 149
    goto :goto_9

    .line 150
    :cond_6
    if-eqz v11, :cond_7

    .line 151
    .line 152
    int-to-float v2, v7

    .line 153
    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 154
    .line 155
    const/4 v13, 0x0

    .line 156
    add-int/2addr v7, v13

    .line 157
    int-to-float v7, v7

    .line 158
    const/4 v13, 0x0

    .line 159
    invoke-static {v13, v7, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    add-float/2addr v7, v2

    .line 164
    float-to-int v2, v7

    .line 165
    goto :goto_8

    .line 166
    :cond_7
    iget-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 167
    .line 168
    if-eqz v2, :cond_8

    .line 169
    .line 170
    iget v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    .line 171
    .line 172
    const/4 v13, 0x0

    .line 173
    add-int/2addr v2, v13

    .line 174
    goto :goto_7

    .line 175
    :cond_8
    const/4 v2, 0x0

    .line 176
    :goto_7
    add-int/2addr v7, v2

    .line 177
    move v2, v7

    .line 178
    :goto_8
    const/16 v16, 0x0

    .line 179
    .line 180
    :goto_9
    iget-object v7, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 181
    .line 182
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    iput v13, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 187
    .line 188
    move-object/from16 v17, v0

    .line 189
    .line 190
    add-int/lit8 v0, v2, 0x0

    .line 191
    .line 192
    int-to-float v0, v0

    .line 193
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 194
    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 198
    .line 199
    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mExpandAnimationRunning:Z

    .line 200
    .line 201
    if-nez v0, :cond_b

    .line 202
    .line 203
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 204
    .line 205
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 206
    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    goto :goto_a

    .line 210
    :cond_9
    if-eqz v14, :cond_a

    .line 211
    .line 212
    iget-boolean v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mEnableShadowOnChildNotifications:Z

    .line 213
    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 217
    .line 218
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 219
    .line 220
    .line 221
    goto :goto_b

    .line 222
    :cond_a
    const/4 v0, 0x0

    .line 223
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 224
    .line 225
    .line 226
    goto :goto_b

    .line 227
    :cond_b
    :goto_a
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getTranslationZ()F

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 232
    .line 233
    .line 234
    :goto_b
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 235
    .line 236
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->dimmed:Z

    .line 237
    .line 238
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 239
    .line 240
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->hideSensitive:Z

    .line 241
    .line 242
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 243
    .line 244
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    iput v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->clipTopAmount:I

    .line 248
    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 251
    .line 252
    .line 253
    if-ge v15, v12, :cond_d

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_c

    .line 260
    .line 261
    move v9, v10

    .line 262
    goto :goto_c

    .line 263
    :cond_c
    const/high16 v9, 0x3f800000    # 1.0f

    .line 264
    .line 265
    :goto_c
    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 266
    .line 267
    .line 268
    goto :goto_d

    .line 269
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    .line 270
    .line 271
    cmpl-float v9, v10, v0

    .line 272
    .line 273
    if-nez v9, :cond_e

    .line 274
    .line 275
    if-gt v15, v8, :cond_e

    .line 276
    .line 277
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mActualHeight:I

    .line 278
    .line 279
    int-to-float v0, v0

    .line 280
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 281
    .line 282
    sub-float/2addr v0, v9

    .line 283
    iget v9, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 284
    .line 285
    int-to-float v9, v9

    .line 286
    div-float/2addr v0, v9

    .line 287
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 288
    .line 289
    .line 290
    iget v0, v7, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mAlpha:F

    .line 291
    .line 292
    const/high16 v9, 0x3f800000    # 1.0f

    .line 293
    .line 294
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    const/4 v9, 0x0

    .line 299
    invoke-static {v9, v0}, Ljava/lang/Math;->max(FF)F

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 304
    .line 305
    .line 306
    :cond_e
    :goto_d
    iget v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 307
    .line 308
    iput v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    .line 309
    .line 310
    iget-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 311
    .line 312
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 313
    .line 314
    add-int v7, v2, v13

    .line 315
    .line 316
    add-int/lit8 v15, v15, 0x1

    .line 317
    .line 318
    move-object/from16 v0, v17

    .line 319
    .line 320
    const/4 v2, 0x0

    .line 321
    goto/16 :goto_5

    .line 322
    .line 323
    :cond_f
    move-object/from16 v17, v0

    .line 324
    .line 325
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    .line 326
    .line 327
    if-eqz v0, :cond_14

    .line 328
    .line 329
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    .line 330
    .line 331
    const/4 v2, 0x1

    .line 332
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    .line 337
    .line 338
    .line 339
    move-result v6

    .line 340
    sub-int/2addr v6, v2

    .line 341
    check-cast v0, Ljava/util/ArrayList;

    .line 342
    .line 343
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 348
    .line 349
    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 350
    .line 351
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 352
    .line 353
    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V

    .line 354
    .line 355
    .line 356
    iget-boolean v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    .line 357
    .line 358
    if-nez v2, :cond_12

    .line 359
    .line 360
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 361
    .line 362
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mSingleLineView:Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    .line 363
    .line 364
    if-eqz v2, :cond_14

    .line 365
    .line 366
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    .line 367
    .line 368
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    const/16 v8, 0x8

    .line 373
    .line 374
    if-ne v7, v8, :cond_10

    .line 375
    .line 376
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    .line 377
    .line 378
    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-ne v7, v8, :cond_11

    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_11
    move-object v2, v6

    .line 386
    :goto_e
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 387
    .line 388
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 393
    .line 394
    .line 395
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 396
    .line 397
    iget v6, v6, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 398
    .line 399
    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationBase:[I

    .line 400
    .line 401
    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 402
    .line 403
    .line 404
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationUtils;->sLocationOffset:[I

    .line 405
    .line 406
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 407
    .line 408
    .line 409
    const/4 v2, 0x1

    .line 410
    aget v0, v0, v2

    .line 411
    .line 412
    aget v2, v7, v2

    .line 413
    .line 414
    sub-int/2addr v0, v2

    .line 415
    int-to-float v0, v0

    .line 416
    add-float/2addr v6, v0

    .line 417
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 418
    .line 419
    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 420
    .line 421
    .line 422
    goto :goto_10

    .line 423
    :cond_12
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 424
    .line 425
    iget v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 426
    .line 427
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 428
    .line 429
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    if-eqz v6, :cond_13

    .line 434
    .line 435
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderExpandedHeight:I

    .line 436
    .line 437
    goto :goto_f

    .line 438
    :cond_13
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    .line 439
    .line 440
    :goto_f
    int-to-float v6, v6

    .line 441
    add-float/2addr v2, v6

    .line 442
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 443
    .line 444
    .line 445
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 446
    .line 447
    const/4 v2, 0x0

    .line 448
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 449
    .line 450
    .line 451
    :cond_14
    :goto_10
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 452
    .line 453
    if-eqz v0, :cond_1b

    .line 454
    .line 455
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 456
    .line 457
    if-nez v0, :cond_15

    .line 458
    .line 459
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 460
    .line 461
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    .line 462
    .line 463
    .line 464
    iput-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 465
    .line 466
    :cond_15
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 467
    .line 468
    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 469
    .line 470
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 474
    .line 475
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildIsExpanding:Z

    .line 476
    .line 477
    if-eqz v0, :cond_16

    .line 478
    .line 479
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 480
    .line 481
    iget-object v2, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 482
    .line 483
    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getTranslationZ()F

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 488
    .line 489
    .line 490
    goto :goto_11

    .line 491
    :cond_16
    if-eqz v14, :cond_17

    .line 492
    .line 493
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 494
    .line 495
    iget v2, v5, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mZTranslation:F

    .line 496
    .line 497
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 498
    .line 499
    .line 500
    goto :goto_11

    .line 501
    :cond_17
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 502
    .line 503
    const/4 v2, 0x0

    .line 504
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setZTranslation(F)V

    .line 505
    .line 506
    .line 507
    :goto_11
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    .line 508
    .line 509
    const/4 v2, 0x0

    .line 510
    int-to-float v5, v2

    .line 511
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 512
    .line 513
    .line 514
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 515
    .line 516
    const v5, 0x1020464

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 524
    .line 525
    const v6, 0x10202d9

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    if-eqz v0, :cond_18

    .line 533
    .line 534
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 535
    .line 536
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 537
    .line 538
    .line 539
    :cond_18
    if-eqz v5, :cond_19

    .line 540
    .line 541
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 542
    .line 543
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 544
    .line 545
    .line 546
    :cond_19
    iget-object v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 547
    .line 548
    const v5, 0x1020006

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    .line 556
    .line 557
    const v6, 0x1020338

    .line 558
    .line 559
    .line 560
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v5

    .line 564
    if-eqz v0, :cond_1a

    .line 565
    .line 566
    iget v6, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationYFactor:F

    .line 567
    .line 568
    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 569
    .line 570
    const/high16 v8, 0x3f800000    # 1.0f

    .line 571
    .line 572
    sub-float v9, v8, v7

    .line 573
    .line 574
    mul-float/2addr v9, v6

    .line 575
    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 576
    .line 577
    .line 578
    goto :goto_12

    .line 579
    :cond_1a
    const/high16 v8, 0x3f800000    # 1.0f

    .line 580
    .line 581
    :goto_12
    if-eqz v5, :cond_1d

    .line 582
    .line 583
    iget v0, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mTranslationYFactor:F

    .line 584
    .line 585
    iget v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mHeaderVisibleAmount:F

    .line 586
    .line 587
    sub-float v9, v8, v4

    .line 588
    .line 589
    mul-float/2addr v9, v0

    .line 590
    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 591
    .line 592
    .line 593
    goto :goto_13

    .line 594
    :cond_1b
    const/4 v2, 0x0

    .line 595
    goto :goto_13

    .line 596
    :cond_1c
    move-object/from16 v17, v0

    .line 597
    .line 598
    :cond_1d
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 599
    .line 600
    move-object/from16 v0, v17

    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :cond_1e
    return-void
.end method

.method public static getPreviousGroupExpandFraction(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mUserLocked:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isGroupExpanded()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/high16 p0, 0x3f800000    # 1.0f

    .line 27
    .line 28
    return p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method


# virtual methods
.method public clampHunToTop(FFFLcom/android/systemui/statusbar/notification/stack/ExpandableViewState;)V
    .locals 0

    .line 1
    add-float/2addr p1, p2

    .line 2
    iget p0, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 3
    .line 4
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    iget p1, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 9
    .line 10
    sub-float p1, p0, p1

    .line 11
    .line 12
    iget p2, p4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 13
    .line 14
    int-to-float p2, p2

    .line 15
    sub-float/2addr p2, p1

    .line 16
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    float-to-int p1, p1

    .line 21
    iput p1, p4, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 22
    .line 23
    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public computeCornerRoundnessForPinnedHun(FFFF)F
    .locals 0

    .line 1
    sub-float/2addr p1, p3

    .line 2
    const/4 p0, 0x0

    .line 3
    sub-float/2addr p2, p1

    .line 4
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    div-float/2addr p0, p3

    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p4, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public getGapForLocation(FZ)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget p2, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    .line 7
    .line 8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    .line 9
    .line 10
    invoke-static {p2, p0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    .line 18
    .line 19
    return p0

    .line 20
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    .line 21
    .line 22
    return p0
.end method

.method public final initView(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0709d3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPaddingBetweenElements:F

    .line 14
    .line 15
    const v1, 0x7f070a04

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 23
    .line 24
    const v1, 0x7f050068

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mEnableNotificationClipping:Z

    .line 32
    .line 33
    const v1, 0x7f050005

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 41
    .line 42
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const v2, 0x7f0703df

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v1

    .line 54
    int-to-float v1, v2

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mHeadsUpInset:F

    .line 56
    .line 57
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    const v1, 0x7f0703de

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const v1, 0x7f0703dd

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mPinnedZTranslationExtra:I

    .line 73
    .line 74
    const v1, 0x7f070a24

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    int-to-float v1, v1

    .line 82
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeight:F

    .line 83
    .line 84
    const v1, 0x7f070a26

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    int-to-float v1, v1

    .line 92
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mGapHeightOnLockscreen:F

    .line 93
    .line 94
    const v1, 0x7f070a10

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMarginBottom:I

    .line 102
    .line 103
    invoke-static {p1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    .line 104
    .line 105
    .line 106
    const p1, 0x7f0709cd

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 110
    .line 111
    .line 112
    const p1, 0x7f0709cc

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 116
    .line 117
    .line 118
    const p1, 0x7f0709d4

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm;->mMaxGroupExpandedBottomGap:F

    .line 126
    .line 127
    return-void
.end method

.method public maybeUpdateHeadsUpIsVisible(Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;ZZZFF)V
    .locals 0

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    if-eqz p4, :cond_1

    .line 6
    .line 7
    cmpg-float p0, p5, p6

    .line 8
    .line 9
    if-gez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    iput-boolean p0, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public updatePulsingStates(Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V
    .locals 5

    .line 1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, p0, :cond_3

    .line 11
    .line 12
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/view/View;

    .line 19
    .line 20
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 21
    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showingPulsing()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 43
    .line 44
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 45
    .line 46
    move-object v0, v3

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    cmpl-float p1, p0, p1

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    const/high16 p1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    cmpl-float p0, p0, p1

    .line 60
    .line 61
    if-nez p0, :cond_5

    .line 62
    .line 63
    :cond_4
    iput-object v0, p2, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsingRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 64
    .line 65
    :cond_5
    return-void
.end method

.method public updateViewWithShelf(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;F)V
    .locals 1

    .line 1
    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 2
    .line 3
    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setYTranslation(F)V

    .line 8
    .line 9
    .line 10
    iget p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mYTranslation:F

    .line 11
    .line 12
    cmpl-float p0, p0, p3

    .line 13
    .line 14
    if-ltz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isExpandAnimationRunning()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    const/4 p3, 0x1

    .line 21
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasExpandingChild()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    move p0, p3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move p0, v0

    .line 33
    :goto_0
    iput-boolean p0, p2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 34
    .line 35
    iput-boolean p3, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 36
    .line 37
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 38
    .line 39
    :cond_1
    return-void
.end method
