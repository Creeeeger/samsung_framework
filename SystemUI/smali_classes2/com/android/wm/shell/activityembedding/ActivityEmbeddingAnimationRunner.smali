.class public final Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mActiveAnimator:Landroid/animation/Animator;

.field final mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

.field public final mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mController:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    .line 5
    .line 6
    new-instance p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 12
    .line 13
    return-void
.end method

.method public static createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 24
    .line 25
    invoke-static {p0, p1, v1, v3, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v1

    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    const v0, 0x10a0167

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const v0, 0x10a0168

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_4

    .line 55
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    const v0, 0x10a0038

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const v0, 0x10a0039

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_4

    .line 73
    :cond_4
    if-eqz v2, :cond_5

    .line 74
    .line 75
    const v0, 0x10a000d

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    const v0, 0x10a000e

    .line 80
    .line 81
    .line 82
    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 103
    .line 104
    .line 105
    iget p2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 106
    .line 107
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 108
    .line 109
    .line 110
    :goto_5
    move-object v2, v0

    .line 111
    goto :goto_c

    .line 112
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    iget-object v3, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 124
    .line 125
    invoke-static {p0, p1, v1, v3, v1}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->loadAttributeAnimation(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_6

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_6
    move v0, v1

    .line 139
    :goto_7
    if-eqz v0, :cond_8

    .line 140
    .line 141
    if-eqz v2, :cond_7

    .line 142
    .line 143
    const v0, 0x10a0169

    .line 144
    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_7
    const v0, 0x10a016a

    .line 148
    .line 149
    .line 150
    :goto_8
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    goto :goto_b

    .line 155
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 156
    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    if-eqz v2, :cond_9

    .line 160
    .line 161
    const v0, 0x10a003a

    .line 162
    .line 163
    .line 164
    goto :goto_9

    .line 165
    :cond_9
    const v0, 0x10a003b

    .line 166
    .line 167
    .line 168
    :goto_9
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_b

    .line 173
    :cond_a
    if-eqz v2, :cond_b

    .line 174
    .line 175
    const v0, 0x10a000f

    .line 176
    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_b
    const v0, 0x10a0010

    .line 180
    .line 181
    .line 182
    :goto_a
    invoke-virtual {v3, v0}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationRes(I)Landroid/view/animation/Animation;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :goto_b
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 203
    .line 204
    .line 205
    iget p2, p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 206
    .line 207
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 208
    .line 209
    .line 210
    goto :goto_5

    .line 211
    :goto_c
    new-instance p2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-static {p1, p0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {p0, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    move-object v1, p2

    .line 226
    move-object v3, p1

    .line 227
    move-object v5, p3

    .line 228
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo$Root;)V

    .line 229
    .line 230
    .line 231
    return-object p2

    .line 232
    nop

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {v7}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_1

    .line 51
    .line 52
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 53
    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_ANIMATION:Z

    .line 72
    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    :goto_2
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/16 v5, 0x3e8

    .line 107
    .line 108
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    if-eqz v7, :cond_5

    .line 113
    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 119
    .line 120
    invoke-static {p0, v7, p2, v2}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    add-int/lit8 v8, v5, 0x1

    .line 127
    .line 128
    iput v5, v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 129
    .line 130
    move v5, v8

    .line 131
    :cond_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 150
    .line 151
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_6

    .line 160
    .line 161
    move v2, v6

    .line 162
    goto :goto_5

    .line 163
    :cond_6
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    xor-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    :goto_5
    if-eqz v2, :cond_8

    .line 178
    .line 179
    invoke-static {v1, v1, p3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    if-eqz v2, :cond_8

    .line 184
    .line 185
    new-instance v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    .line 186
    .line 187
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    .line 188
    .line 189
    const/high16 v9, 0x3f800000    # 1.0f

    .line 190
    .line 191
    invoke-direct {v8, v9, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 192
    .line 193
    .line 194
    invoke-static {v1, p0}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {p0, v9}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-direct {v7, v8, v1, v2, v9}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    .line 203
    .line 204
    .line 205
    if-nez p1, :cond_7

    .line 206
    .line 207
    add-int/lit8 v2, v5, 0x1

    .line 208
    .line 209
    iput v5, v7, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 210
    .line 211
    move v5, v2

    .line 212
    :cond_7
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    :cond_8
    invoke-static {p0, v1, p2, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapter(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;Landroid/graphics/Rect;)Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-nez p1, :cond_9

    .line 220
    .line 221
    add-int/lit8 v2, v5, 0x1

    .line 222
    .line 223
    iput v5, v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 224
    .line 225
    move v5, v2

    .line 226
    :cond_9
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_a
    return-object v4
.end method

.method public static getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const v1, 0x7fffffff

    .line 37
    .line 38
    .line 39
    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method


# virtual methods
.method public createAnimator(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;Ljava/util/List;)Landroid/animation/Animator;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/lang/Runnable;",
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;>;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v6, 0x0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const/4 v8, 0x6

    .line 23
    if-eqz v7, :cond_2

    .line 24
    .line 25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 30
    .line 31
    const/16 v12, 0x4000

    .line 32
    .line 33
    invoke-virtual {v7, v12}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 34
    .line 35
    .line 36
    move-result v12

    .line 37
    if-eqz v12, :cond_1

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    move-object v14, v1

    .line 45
    move-object v1, v2

    .line 46
    move-object v2, v4

    .line 47
    move-object v4, v14

    .line 48
    goto/16 :goto_17

    .line 49
    .line 50
    :cond_1
    if-nez v6, :cond_0

    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-ne v9, v8, :cond_0

    .line 57
    .line 58
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-nez v7, :cond_0

    .line 71
    .line 72
    const/4 v6, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v6, :cond_22

    .line 75
    .line 76
    new-instance v4, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    if-ne v12, v8, :cond_3

    .line 106
    .line 107
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-eqz v12, :cond_4

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    invoke-virtual {v1, v7}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    if-eqz v7, :cond_3

    .line 136
    .line 137
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    invoke-static {v12}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-eqz v12, :cond_3

    .line 146
    .line 147
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    const/4 v7, 0x0

    .line 167
    const/4 v12, 0x0

    .line 168
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_9

    .line 173
    .line 174
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    check-cast v13, Landroid/window/TransitionInfo$Change;

    .line 179
    .line 180
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    if-eqz v14, :cond_7

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 188
    .line 189
    .line 190
    move-result-object v14

    .line 191
    if-eqz v14, :cond_8

    .line 192
    .line 193
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-virtual {v1, v14}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v14

    .line 205
    if-eqz v14, :cond_8

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_8
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    or-int/2addr v7, v14

    .line 217
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    or-int/2addr v12, v13

    .line 226
    goto :goto_2

    .line 227
    :cond_9
    if-eqz v7, :cond_a

    .line 228
    .line 229
    if-eqz v12, :cond_a

    .line 230
    .line 231
    :goto_3
    const/4 v4, 0x1

    .line 232
    goto :goto_4

    .line 233
    :cond_a
    const/4 v4, 0x0

    .line 234
    :goto_4
    if-eqz v4, :cond_b

    .line 235
    .line 236
    new-instance v4, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    move-object v14, v1

    .line 242
    move-object v3, v4

    .line 243
    move-object v4, v14

    .line 244
    goto/16 :goto_15

    .line 245
    .line 246
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v6, Landroid/util/ArraySet;

    .line 252
    .line 253
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 254
    .line 255
    .line 256
    new-instance v7, Landroid/graphics/Rect;

    .line 257
    .line 258
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v12

    .line 265
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v12

    .line 269
    const/4 v13, 0x0

    .line 270
    move-object v11, v0

    .line 271
    move-object v14, v1

    .line 272
    move-object v15, v14

    .line 273
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v16

    .line 277
    if-eqz v16, :cond_11

    .line 278
    .line 279
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v16

    .line 283
    move-object/from16 v9, v16

    .line 284
    .line 285
    check-cast v9, Landroid/window/TransitionInfo$Change;

    .line 286
    .line 287
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    if-ne v10, v8, :cond_10

    .line 292
    .line 293
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-virtual {v10, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_c

    .line 306
    .line 307
    goto/16 :goto_8

    .line 308
    .line 309
    :cond_c
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    if-eqz v8, :cond_d

    .line 317
    .line 318
    invoke-virtual {v15, v8}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    if-eqz v8, :cond_d

    .line 323
    .line 324
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 325
    .line 326
    .line 327
    move-result v10

    .line 328
    invoke-static {v10}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    if-eqz v10, :cond_d

    .line 333
    .line 334
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :cond_d
    move-object v8, v9

    .line 339
    :goto_6
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 347
    .line 348
    .line 349
    move-result-object v10

    .line 350
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 351
    .line 352
    .line 353
    if-eq v8, v9, :cond_e

    .line 354
    .line 355
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 360
    .line 361
    .line 362
    :cond_e
    iget-object v10, v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 363
    .line 364
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 372
    .line 373
    .line 374
    move-result-object v13

    .line 375
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 376
    .line 377
    .line 378
    move-result v14

    .line 379
    int-to-float v14, v14

    .line 380
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 381
    .line 382
    .line 383
    move-result v15

    .line 384
    int-to-float v15, v15

    .line 385
    div-float/2addr v14, v15

    .line 386
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 387
    .line 388
    .line 389
    move-result v15

    .line 390
    int-to-float v15, v15

    .line 391
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    int-to-float v5, v5

    .line 396
    div-float/2addr v15, v5

    .line 397
    move-object/from16 v17, v12

    .line 398
    .line 399
    const/high16 v5, 0x3f800000    # 1.0f

    .line 400
    .line 401
    div-float v12, v5, v14

    .line 402
    .line 403
    div-float v3, v5, v15

    .line 404
    .line 405
    new-instance v5, Landroid/view/animation/AnimationSet;

    .line 406
    .line 407
    const/4 v0, 0x0

    .line 408
    invoke-direct {v5, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 409
    .line 410
    .line 411
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 412
    .line 413
    move-object/from16 v19, v4

    .line 414
    .line 415
    move-object/from16 v18, v6

    .line 416
    .line 417
    const/4 v4, 0x0

    .line 418
    const/high16 v6, 0x3f800000    # 1.0f

    .line 419
    .line 420
    invoke-direct {v0, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 421
    .line 422
    .line 423
    iget-object v4, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 424
    .line 425
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    .line 427
    .line 428
    const-wide/16 v1, 0x50

    .line 429
    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 431
    .line 432
    .line 433
    const-wide/16 v1, 0x1e

    .line 434
    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 439
    .line 440
    .line 441
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 442
    .line 443
    invoke-direct {v0, v12, v12, v3, v3}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 444
    .line 445
    .line 446
    iget-object v1, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 449
    .line 450
    .line 451
    const-wide/16 v2, 0x205

    .line 452
    .line 453
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    invoke-virtual {v5, v0, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 476
    .line 477
    .line 478
    iget v0, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 479
    .line 480
    invoke-virtual {v5, v0}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 481
    .line 482
    .line 483
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 484
    .line 485
    const/4 v2, 0x1

    .line 486
    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 490
    .line 491
    .line 492
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    .line 493
    .line 494
    const/high16 v2, 0x3f800000    # 1.0f

    .line 495
    .line 496
    invoke-direct {v1, v14, v2, v15, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 497
    .line 498
    .line 499
    const-wide/16 v2, 0x205

    .line 500
    .line 501
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 505
    .line 506
    .line 507
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .line 508
    .line 509
    iget v2, v11, Landroid/graphics/Rect;->left:I

    .line 510
    .line 511
    iget v3, v13, Landroid/graphics/Rect;->left:I

    .line 512
    .line 513
    sub-int/2addr v2, v3

    .line 514
    int-to-float v2, v2

    .line 515
    iget v3, v11, Landroid/graphics/Rect;->top:I

    .line 516
    .line 517
    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 518
    .line 519
    sub-int/2addr v3, v4

    .line 520
    int-to-float v3, v3

    .line 521
    const/4 v4, 0x0

    .line 522
    invoke-direct {v1, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 523
    .line 524
    .line 525
    const-wide/16 v2, 0x205

    .line 526
    .line 527
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 531
    .line 532
    .line 533
    new-instance v1, Landroid/graphics/Rect;

    .line 534
    .line 535
    invoke-direct {v1, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 536
    .line 537
    .line 538
    new-instance v4, Landroid/graphics/Rect;

    .line 539
    .line 540
    invoke-direct {v4, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 541
    .line 542
    .line 543
    const/4 v6, 0x0

    .line 544
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 548
    .line 549
    .line 550
    new-instance v6, Landroid/view/animation/ClipRectAnimation;

    .line 551
    .line 552
    invoke-direct {v6, v1, v4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 570
    .line 571
    .line 572
    move-result v3

    .line 573
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 578
    .line 579
    .line 580
    iget v1, v10, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->scaleCurrentDuration(F)V

    .line 583
    .line 584
    .line 585
    filled-new-array {v5, v0}, [Landroid/view/animation/Animation;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const/4 v1, 0x1

    .line 590
    aget-object v2, v0, v1

    .line 591
    .line 592
    move-object/from16 v1, p2

    .line 593
    .line 594
    invoke-static {v9, v8, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->getOrCreateScreenshot(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    move-object/from16 v4, p1

    .line 599
    .line 600
    invoke-static {v9, v4}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    if-eqz v3, :cond_f

    .line 609
    .line 610
    new-instance v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;

    .line 611
    .line 612
    const/4 v10, 0x0

    .line 613
    aget-object v11, v0, v10

    .line 614
    .line 615
    invoke-direct {v6, v11, v9, v3, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$SnapshotAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Root;)V

    .line 616
    .line 617
    .line 618
    move-object/from16 v3, v19

    .line 619
    .line 620
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    goto :goto_7

    .line 624
    :cond_f
    move-object/from16 v3, v19

    .line 625
    .line 626
    new-instance v6, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v10, "Failed to take screenshot for change="

    .line 629
    .line 630
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    const-string v9, "ActivityEmbeddingAnimR"

    .line 641
    .line 642
    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    :goto_7
    new-instance v6, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;

    .line 646
    .line 647
    const/4 v9, 0x1

    .line 648
    aget-object v0, v0, v9

    .line 649
    .line 650
    invoke-direct {v6, v0, v8, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter$BoundsChangeAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-object/from16 v11, p0

    .line 657
    .line 658
    move-object v13, v2

    .line 659
    move-object v14, v4

    .line 660
    move-object v15, v14

    .line 661
    goto :goto_9

    .line 662
    :cond_10
    :goto_8
    move-object v3, v4

    .line 663
    move-object/from16 v18, v6

    .line 664
    .line 665
    move-object/from16 v17, v12

    .line 666
    .line 667
    move-object v4, v1

    .line 668
    move-object v1, v2

    .line 669
    :goto_9
    move-object/from16 v0, p0

    .line 670
    .line 671
    move-object v2, v1

    .line 672
    move-object v1, v4

    .line 673
    move-object/from16 v12, v17

    .line 674
    .line 675
    move-object/from16 v6, v18

    .line 676
    .line 677
    const/4 v8, 0x6

    .line 678
    move-object v4, v3

    .line 679
    move-object/from16 v3, p3

    .line 680
    .line 681
    goto/16 :goto_5

    .line 682
    .line 683
    :cond_11
    move-object v3, v4

    .line 684
    move-object/from16 v18, v6

    .line 685
    .line 686
    move-object v4, v1

    .line 687
    move-object v1, v2

    .line 688
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    .line 689
    .line 690
    .line 691
    move-result v0

    .line 692
    if-nez v0, :cond_21

    .line 693
    .line 694
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    const/4 v2, 0x1

    .line 703
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 704
    .line 705
    .line 706
    move-result v5

    .line 707
    if-eqz v5, :cond_1f

    .line 708
    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v5

    .line 713
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 714
    .line 715
    move-object/from16 v6, v18

    .line 716
    .line 717
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    move-result v8

    .line 721
    if-eqz v8, :cond_12

    .line 722
    .line 723
    move-object/from16 v18, v6

    .line 724
    .line 725
    goto :goto_a

    .line 726
    :cond_12
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 727
    .line 728
    .line 729
    move-result-object v8

    .line 730
    if-eqz v8, :cond_14

    .line 731
    .line 732
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 733
    .line 734
    .line 735
    move-result-object v8

    .line 736
    invoke-virtual {v15, v8}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 737
    .line 738
    .line 739
    move-result-object v8

    .line 740
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v8

    .line 744
    if-nez v8, :cond_13

    .line 745
    .line 746
    goto :goto_b

    .line 747
    :cond_13
    const/4 v9, 0x6

    .line 748
    goto :goto_c

    .line 749
    :cond_14
    :goto_b
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 750
    .line 751
    .line 752
    move-result v8

    .line 753
    const/4 v9, 0x6

    .line 754
    if-ne v8, v9, :cond_16

    .line 755
    .line 756
    :goto_c
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 757
    .line 758
    .line 759
    move-result v8

    .line 760
    invoke-static {v8}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 761
    .line 762
    .line 763
    move-result v8

    .line 764
    if-eqz v8, :cond_15

    .line 765
    .line 766
    const/4 v8, 0x0

    .line 767
    goto :goto_d

    .line 768
    :cond_15
    const/high16 v8, 0x3f800000    # 1.0f

    .line 769
    .line 770
    :goto_d
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .line 771
    .line 772
    invoke-direct {v10, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 773
    .line 774
    .line 775
    move-object/from16 v17, v0

    .line 776
    .line 777
    move-object/from16 v18, v6

    .line 778
    .line 779
    move-object v8, v7

    .line 780
    const-wide/16 v6, 0x205

    .line 781
    .line 782
    goto/16 :goto_14

    .line 783
    .line 784
    :cond_16
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 785
    .line 786
    .line 787
    move-result v2

    .line 788
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    if-eqz v2, :cond_1b

    .line 793
    .line 794
    iget-object v2, v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 795
    .line 796
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 800
    .line 801
    .line 802
    move-result-object v8

    .line 803
    iget v10, v7, Landroid/graphics/Rect;->top:I

    .line 804
    .line 805
    iget v12, v8, Landroid/graphics/Rect;->top:I

    .line 806
    .line 807
    if-ne v10, v12, :cond_18

    .line 808
    .line 809
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 810
    .line 811
    move-object/from16 v17, v0

    .line 812
    .line 813
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 814
    .line 815
    if-ne v9, v0, :cond_19

    .line 816
    .line 817
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 818
    .line 819
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 820
    .line 821
    if-ne v0, v9, :cond_17

    .line 822
    .line 823
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    neg-int v0, v0

    .line 828
    goto :goto_e

    .line 829
    :cond_17
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    :goto_e
    const/4 v9, 0x0

    .line 834
    goto :goto_f

    .line 835
    :cond_18
    move-object/from16 v17, v0

    .line 836
    .line 837
    :cond_19
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    if-ne v10, v12, :cond_1a

    .line 842
    .line 843
    neg-int v0, v0

    .line 844
    :cond_1a
    move v9, v0

    .line 845
    const/4 v0, 0x0

    .line 846
    :goto_f
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    .line 847
    .line 848
    int-to-float v0, v0

    .line 849
    int-to-float v9, v9

    .line 850
    const/4 v12, 0x0

    .line 851
    invoke-direct {v10, v12, v0, v12, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 852
    .line 853
    .line 854
    iget-object v0, v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 855
    .line 856
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 857
    .line 858
    .line 859
    const-wide/16 v0, 0x205

    .line 860
    .line 861
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 873
    .line 874
    .line 875
    move-result v9

    .line 876
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 877
    .line 878
    .line 879
    move-result v8

    .line 880
    invoke-virtual {v10, v0, v1, v9, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 881
    .line 882
    .line 883
    iget v0, v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 884
    .line 885
    invoke-virtual {v10, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 886
    .line 887
    .line 888
    move-object/from16 v18, v6

    .line 889
    .line 890
    move-object v8, v7

    .line 891
    const-wide/16 v6, 0x205

    .line 892
    .line 893
    goto :goto_13

    .line 894
    :cond_1b
    move-object/from16 v17, v0

    .line 895
    .line 896
    iget-object v0, v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 897
    .line 898
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 906
    .line 907
    iget v8, v1, Landroid/graphics/Rect;->top:I

    .line 908
    .line 909
    if-ne v2, v8, :cond_1d

    .line 910
    .line 911
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 912
    .line 913
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 914
    .line 915
    if-ne v9, v10, :cond_1d

    .line 916
    .line 917
    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 918
    .line 919
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 920
    .line 921
    if-ne v2, v8, :cond_1c

    .line 922
    .line 923
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    neg-int v2, v2

    .line 928
    goto :goto_10

    .line 929
    :cond_1c
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    :goto_10
    const/4 v8, 0x0

    .line 934
    goto :goto_12

    .line 935
    :cond_1d
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 936
    .line 937
    .line 938
    move-result v9

    .line 939
    if-ne v2, v8, :cond_1e

    .line 940
    .line 941
    neg-int v2, v9

    .line 942
    goto :goto_11

    .line 943
    :cond_1e
    move v2, v9

    .line 944
    :goto_11
    move v8, v2

    .line 945
    const/4 v2, 0x0

    .line 946
    :goto_12
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    .line 947
    .line 948
    int-to-float v2, v2

    .line 949
    int-to-float v8, v8

    .line 950
    const/4 v10, 0x0

    .line 951
    invoke-direct {v9, v2, v10, v8, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 952
    .line 953
    .line 954
    iget-object v2, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mFastOutExtraSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 955
    .line 956
    invoke-virtual {v9, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 957
    .line 958
    .line 959
    move-object/from16 v18, v6

    .line 960
    .line 961
    move-object v8, v7

    .line 962
    const-wide/16 v6, 0x205

    .line 963
    .line 964
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 968
    .line 969
    .line 970
    move-result v2

    .line 971
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 972
    .line 973
    .line 974
    move-result v10

    .line 975
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 976
    .line 977
    .line 978
    move-result v12

    .line 979
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 980
    .line 981
    .line 982
    move-result v1

    .line 983
    invoke-virtual {v9, v2, v10, v12, v1}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 984
    .line 985
    .line 986
    iget v0, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;->mTransitionAnimationScaleSetting:F

    .line 987
    .line 988
    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 989
    .line 990
    .line 991
    move-object v10, v9

    .line 992
    :goto_13
    const/4 v2, 0x0

    .line 993
    :goto_14
    new-instance v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 994
    .line 995
    invoke-static {v5, v15}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 996
    .line 997
    .line 998
    move-result v1

    .line 999
    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    invoke-direct {v0, v10, v5, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;-><init>(Landroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Root;)V

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-object/from16 v1, p2

    .line 1010
    .line 1011
    move-object v7, v8

    .line 1012
    move-object/from16 v0, v17

    .line 1013
    .line 1014
    goto/16 :goto_a

    .line 1015
    .line 1016
    :cond_1f
    if-eqz v2, :cond_20

    .line 1017
    .line 1018
    if-eqz v13, :cond_20

    .line 1019
    .line 1020
    const/4 v0, 0x1

    .line 1021
    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    .line 1022
    .line 1023
    .line 1024
    :cond_20
    :goto_15
    move-object/from16 v0, p0

    .line 1025
    .line 1026
    move-object/from16 v1, p2

    .line 1027
    .line 1028
    move-object v2, v3

    .line 1029
    goto :goto_17

    .line 1030
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1031
    .line 1032
    const-string v1, "There should be at least one changing window to play the change animation"

    .line 1033
    .line 1034
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    throw v0

    .line 1038
    :cond_22
    move-object v4, v1

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getType()I

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-eqz v0, :cond_23

    .line 1048
    .line 1049
    move-object/from16 v0, p0

    .line 1050
    .line 1051
    iget-object v1, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 1052
    .line 1053
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    new-instance v2, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;

    .line 1057
    .line 1058
    const/4 v3, 0x0

    .line 1059
    invoke-direct {v2, v1, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V

    .line 1060
    .line 1061
    .line 1062
    move-object/from16 v1, p2

    .line 1063
    .line 1064
    invoke-static {v4, v3, v2, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v2

    .line 1068
    goto :goto_16

    .line 1069
    :cond_23
    move-object/from16 v0, p0

    .line 1070
    .line 1071
    move-object/from16 v1, p2

    .line 1072
    .line 1073
    iget-object v2, v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->mAnimationSpec:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;

    .line 1074
    .line 1075
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    new-instance v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;

    .line 1079
    .line 1080
    const/4 v5, 0x1

    .line 1081
    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationSpec;I)V

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v4, v5, v3, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->createOpenCloseAnimationAdapters(Landroid/window/TransitionInfo;ZLcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1;Landroid/view/SurfaceControl$Transaction;)Ljava/util/List;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v2

    .line 1088
    :goto_16
    move-object v14, v4

    .line 1089
    :goto_17
    const/4 v3, 0x2

    .line 1090
    new-array v5, v3, [F

    .line 1091
    .line 1092
    fill-array-data v5, :array_0

    .line 1093
    .line 1094
    .line 1095
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v5

    .line 1099
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v6

    .line 1103
    const-wide/16 v7, 0x0

    .line 1104
    .line 1105
    if-eqz v6, :cond_26

    .line 1106
    .line 1107
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v4

    .line 1111
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v4

    .line 1115
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1116
    .line 1117
    .line 1118
    move-result v6

    .line 1119
    if-eqz v6, :cond_2f

    .line 1120
    .line 1121
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v6

    .line 1125
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 1126
    .line 1127
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v9

    .line 1131
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v10

    .line 1135
    if-eqz v10, :cond_24

    .line 1136
    .line 1137
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v10

    .line 1141
    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 1142
    .line 1143
    int-to-float v10, v10

    .line 1144
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v11

    .line 1148
    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 1149
    .line 1150
    int-to-float v11, v11

    .line 1151
    invoke-virtual {v1, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1152
    .line 1153
    .line 1154
    goto :goto_19

    .line 1155
    :cond_24
    invoke-static {v6, v14}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    .line 1156
    .line 1157
    .line 1158
    move-result v10

    .line 1159
    invoke-virtual {v14, v10}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v10

    .line 1163
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v11

    .line 1167
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 1168
    .line 1169
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v12

    .line 1173
    iget v12, v12, Landroid/graphics/Point;->x:I

    .line 1174
    .line 1175
    sub-int/2addr v11, v12

    .line 1176
    int-to-float v11, v11

    .line 1177
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v12

    .line 1181
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1182
    .line 1183
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v10

    .line 1187
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 1188
    .line 1189
    sub-int/2addr v12, v10

    .line 1190
    int-to-float v10, v12

    .line 1191
    invoke-virtual {v1, v9, v11, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1192
    .line 1193
    .line 1194
    :goto_19
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v10

    .line 1198
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 1199
    .line 1200
    .line 1201
    move-result v10

    .line 1202
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v11

    .line 1206
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 1207
    .line 1208
    .line 1209
    move-result v11

    .line 1210
    invoke-virtual {v1, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1214
    .line 1215
    .line 1216
    move-result v6

    .line 1217
    if-ne v6, v3, :cond_25

    .line 1218
    .line 1219
    invoke-virtual {v1, v9}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1220
    .line 1221
    .line 1222
    goto :goto_18

    .line 1223
    :cond_25
    invoke-virtual {v1, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1224
    .line 1225
    .line 1226
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1227
    .line 1228
    invoke-virtual {v1, v9, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1229
    .line 1230
    .line 1231
    goto :goto_18

    .line 1232
    :cond_26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v6

    .line 1236
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1237
    .line 1238
    .line 1239
    move-result v9

    .line 1240
    if-eqz v9, :cond_29

    .line 1241
    .line 1242
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v9

    .line 1246
    check-cast v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1247
    .line 1248
    iget-object v10, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1249
    .line 1250
    invoke-virtual {v10}, Landroid/view/animation/Animation;->hasExtension()Z

    .line 1251
    .line 1252
    .line 1253
    move-result v11

    .line 1254
    if-nez v11, :cond_27

    .line 1255
    .line 1256
    goto :goto_1a

    .line 1257
    :cond_27
    iget-object v9, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1258
    .line 1259
    invoke-virtual {v9}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 1260
    .line 1261
    .line 1262
    move-result v11

    .line 1263
    invoke-static {v11}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v11

    .line 1267
    if-eqz v11, :cond_28

    .line 1268
    .line 1269
    new-instance v11, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;

    .line 1270
    .line 1271
    move-object/from16 v12, p3

    .line 1272
    .line 1273
    invoke-direct {v11, v9, v10, v12}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2;-><init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V

    .line 1274
    .line 1275
    .line 1276
    move-object/from16 v13, p5

    .line 1277
    .line 1278
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
    .line 1280
    .line 1281
    goto :goto_1a

    .line 1282
    :cond_28
    move-object/from16 v12, p3

    .line 1283
    .line 1284
    move-object/from16 v13, p5

    .line 1285
    .line 1286
    invoke-static {v9, v10, v1, v12}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 1287
    .line 1288
    .line 1289
    goto :goto_1a

    .line 1290
    :cond_29
    move-object/from16 v12, p3

    .line 1291
    .line 1292
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v6

    .line 1296
    :cond_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v9

    .line 1300
    if-eqz v9, :cond_2c

    .line 1301
    .line 1302
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v9

    .line 1306
    check-cast v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1307
    .line 1308
    iget-object v10, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mChange:Landroid/window/TransitionInfo$Change;

    .line 1309
    .line 1310
    iget-object v9, v9, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1311
    .line 1312
    const/4 v11, 0x0

    .line 1313
    invoke-static {v14, v10, v9, v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I

    .line 1314
    .line 1315
    .line 1316
    move-result v9

    .line 1317
    if-eqz v9, :cond_2a

    .line 1318
    .line 1319
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v4

    .line 1323
    if-nez v9, :cond_2b

    .line 1324
    .line 1325
    goto :goto_1b

    .line 1326
    :cond_2b
    invoke-static {v9}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v6

    .line 1330
    const/4 v9, 0x3

    .line 1331
    new-array v9, v9, [F

    .line 1332
    .line 1333
    invoke-virtual {v6}, Landroid/graphics/Color;->red()F

    .line 1334
    .line 1335
    .line 1336
    move-result v10

    .line 1337
    aput v10, v9, v11

    .line 1338
    .line 1339
    invoke-virtual {v6}, Landroid/graphics/Color;->green()F

    .line 1340
    .line 1341
    .line 1342
    move-result v10

    .line 1343
    const/4 v13, 0x1

    .line 1344
    aput v10, v9, v13

    .line 1345
    .line 1346
    invoke-virtual {v6}, Landroid/graphics/Color;->blue()F

    .line 1347
    .line 1348
    .line 1349
    move-result v6

    .line 1350
    aput v6, v9, v3

    .line 1351
    .line 1352
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    .line 1353
    .line 1354
    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 1355
    .line 1356
    .line 1357
    const-string v6, "Animation Background"

    .line 1358
    .line 1359
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v3

    .line 1363
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v3

    .line 1367
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v3

    .line 1371
    invoke-virtual {v3, v13}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v3

    .line 1375
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    const/high16 v4, -0x80000000

    .line 1380
    .line 1381
    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v4

    .line 1385
    invoke-virtual {v4, v3, v9}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v4

    .line 1389
    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v12, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1393
    .line 1394
    .line 1395
    :cond_2c
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1400
    .line 1401
    .line 1402
    move-result v4

    .line 1403
    if-eqz v4, :cond_2d

    .line 1404
    .line 1405
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v4

    .line 1409
    check-cast v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1410
    .line 1411
    iget-object v4, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1412
    .line 1413
    invoke-virtual {v4}, Landroid/view/animation/Animation;->computeDurationHint()J

    .line 1414
    .line 1415
    .line 1416
    move-result-wide v9

    .line 1417
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 1418
    .line 1419
    .line 1420
    move-result-wide v7

    .line 1421
    goto :goto_1c

    .line 1422
    :cond_2d
    new-instance v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0;

    .line 1423
    .line 1424
    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/animation/ValueAnimator;)V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1428
    .line 1429
    .line 1430
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v3

    .line 1434
    invoke-virtual {v3}, Landroid/view/Choreographer;->getVsyncId()J

    .line 1435
    .line 1436
    .line 1437
    move-result-wide v3

    .line 1438
    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 1439
    .line 1440
    .line 1441
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v3

    .line 1445
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1446
    .line 1447
    .line 1448
    move-result v4

    .line 1449
    if-eqz v4, :cond_2f

    .line 1450
    .line 1451
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v4

    .line 1455
    check-cast v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;

    .line 1456
    .line 1457
    iget-object v6, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mLeash:Landroid/view/SurfaceControl;

    .line 1458
    .line 1459
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1460
    .line 1461
    .line 1462
    iget v9, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mOverrideLayer:I

    .line 1463
    .line 1464
    const/4 v10, -0x1

    .line 1465
    if-eq v9, v10, :cond_2e

    .line 1466
    .line 1467
    invoke-virtual {v1, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1468
    .line 1469
    .line 1470
    :cond_2e
    iget-object v6, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mTransformation:Landroid/view/animation/Transformation;

    .line 1471
    .line 1472
    iget-object v9, v4, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->mAnimation:Landroid/view/animation/Animation;

    .line 1473
    .line 1474
    const/4 v10, 0x0

    .line 1475
    invoke-virtual {v9, v10, v6}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;->onAnimationUpdateInner(Landroid/view/SurfaceControl$Transaction;)V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_1d

    .line 1482
    :cond_2f
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1483
    .line 1484
    .line 1485
    new-instance v1, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;

    .line 1486
    .line 1487
    move-object/from16 v3, p4

    .line 1488
    .line 1489
    invoke-direct {v1, v0, v2, v3}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner$1;-><init>(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1493
    .line 1494
    .line 1495
    return-object v5

    .line 1496
    nop

    .line 1497
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
