.class public final Landroidx/fragment/app/DefaultSpecialEffectsController;
.super Landroidx/fragment/app/SpecialEffectsController;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ge v1, v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public static findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/collection/ArrayMap$EntrySet;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/collection/ArrayMap$EntrySet;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    move-object v0, p0

    .line 12
    check-cast v0, Landroidx/collection/ArrayMap$MapIterator;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$MapIterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$MapIterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/view/View;

    .line 31
    .line 32
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 33
    .line 34
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$MapIterator;->remove()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public final executeOperations(Ljava/util/List;Z)V
    .locals 38

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v6, p2

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v11, 0x4

    .line 21
    const/4 v12, 0x2

    .line 22
    const/4 v13, 0x1

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v4}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(Landroid/view/View;)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget-object v5, Landroidx/fragment/app/DefaultSpecialEffectsController$10;->$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State:[I

    .line 40
    .line 41
    iget-object v14, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 42
    .line 43
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    aget v5, v5, v14

    .line 48
    .line 49
    if-eq v5, v13, :cond_2

    .line 50
    .line 51
    if-eq v5, v12, :cond_2

    .line 52
    .line 53
    const/4 v12, 0x3

    .line 54
    if-eq v5, v12, :cond_2

    .line 55
    .line 56
    if-eq v5, v11, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 60
    .line 61
    if-eq v4, v5, :cond_0

    .line 62
    .line 63
    move-object v10, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v5, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 66
    .line 67
    if-ne v4, v5, :cond_0

    .line 68
    .line 69
    if-nez v9, :cond_0

    .line 70
    .line 71
    move-object v9, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static {v12}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v15, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v5, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v4, -0x1

    .line 105
    add-int/2addr v0, v4

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 111
    .line 112
    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 129
    .line 130
    iget-object v3, v3, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 131
    .line 132
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 133
    .line 134
    iget-object v13, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 135
    .line 136
    iget v8, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 137
    .line 138
    iput v8, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    .line 139
    .line 140
    iget v8, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 141
    .line 142
    iput v8, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    .line 143
    .line 144
    iget v8, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 145
    .line 146
    iput v8, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    .line 147
    .line 148
    iget v8, v13, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 149
    .line 150
    iput v8, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    .line 151
    .line 152
    const/4 v13, 0x1

    .line 153
    goto :goto_1

    .line 154
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_8

    .line 163
    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 169
    .line 170
    new-instance v2, Landroidx/core/os/CancellationSignal;

    .line 171
    .line 172
    invoke-direct {v2}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 176
    .line 177
    .line 178
    iget-object v3, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    .line 179
    .line 180
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 184
    .line 185
    invoke-direct {v3, v1, v2, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v2, Landroidx/core/os/CancellationSignal;

    .line 192
    .line 193
    invoke-direct {v2}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->onStart()V

    .line 197
    .line 198
    .line 199
    iget-object v3, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 205
    .line 206
    if-eqz v6, :cond_6

    .line 207
    .line 208
    if-ne v1, v9, :cond_7

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    if-ne v1, v10, :cond_7

    .line 212
    .line 213
    :goto_3
    const/4 v8, 0x1

    .line 214
    goto :goto_4

    .line 215
    :cond_7
    const/4 v8, 0x0

    .line 216
    :goto_4
    invoke-direct {v3, v1, v2, v6, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$1;

    .line 223
    .line 224
    invoke-direct {v2, v7, v5, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$1;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mCompletionListeners:Ljava/util/List;

    .line 228
    .line 229
    check-cast v1, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_8
    new-instance v13, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const/4 v3, 0x0

    .line 245
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_10

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 256
    .line 257
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_9

    .line 262
    .line 263
    move-object/from16 v18, v0

    .line 264
    .line 265
    goto/16 :goto_8

    .line 266
    .line 267
    :cond_9
    iget-object v2, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    iget-object v8, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 274
    .line 275
    invoke-virtual {v1, v8}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroidx/fragment/app/FragmentTransitionImpl;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    const-string v4, " returned Transition "

    .line 280
    .line 281
    move-object/from16 v18, v0

    .line 282
    .line 283
    const-string v0, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 284
    .line 285
    iget-object v1, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 286
    .line 287
    if-eqz v11, :cond_b

    .line 288
    .line 289
    if-eqz v12, :cond_b

    .line 290
    .line 291
    if-ne v11, v12, :cond_a

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 302
    .line 303
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v0, " which uses a different Transition  type than its shared element transition "

    .line 313
    .line 314
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v3

    .line 328
    :cond_b
    :goto_6
    if-eqz v11, :cond_c

    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_c
    move-object v11, v12

    .line 332
    :goto_7
    if-nez v3, :cond_d

    .line 333
    .line 334
    move-object v3, v11

    .line 335
    goto :goto_8

    .line 336
    :cond_d
    if-eqz v11, :cond_f

    .line 337
    .line 338
    if-ne v3, v11, :cond_e

    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 342
    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 349
    .line 350
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v0, " which uses a different Transition  type than other Fragments."

    .line 360
    .line 361
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    throw v3

    .line 372
    :cond_f
    :goto_8
    move-object/from16 v0, v18

    .line 373
    .line 374
    const/4 v4, -0x1

    .line 375
    const/4 v11, 0x4

    .line 376
    const/4 v12, 0x2

    .line 377
    goto/16 :goto_5

    .line 378
    .line 379
    :cond_10
    iget-object v8, v7, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    .line 380
    .line 381
    if-nez v3, :cond_12

    .line 382
    .line 383
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_11

    .line 392
    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 398
    .line 399
    iget-object v2, v1, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 400
    .line 401
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 402
    .line 403
    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 407
    .line 408
    .line 409
    goto :goto_9

    .line 410
    :cond_11
    move-object v11, v5

    .line 411
    move-object/from16 v36, v9

    .line 412
    .line 413
    move-object v12, v13

    .line 414
    move-object/from16 v26, v14

    .line 415
    .line 416
    move-object v14, v10

    .line 417
    goto/16 :goto_22

    .line 418
    .line 419
    :cond_12
    new-instance v11, Landroid/view/View;

    .line 420
    .line 421
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 426
    .line 427
    .line 428
    new-instance v12, Landroid/graphics/Rect;

    .line 429
    .line 430
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 431
    .line 432
    .line 433
    new-instance v4, Ljava/util/ArrayList;

    .line 434
    .line 435
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .line 437
    .line 438
    new-instance v2, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 444
    .line 445
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 449
    .line 450
    .line 451
    move-result-object v24

    .line 452
    move-object/from16 v19, v5

    .line 453
    .line 454
    move-object v5, v9

    .line 455
    move-object v6, v10

    .line 456
    const/4 v0, 0x0

    .line 457
    const/16 v18, 0x0

    .line 458
    .line 459
    const/16 v25, 0x0

    .line 460
    .line 461
    :goto_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v20

    .line 465
    if-eqz v20, :cond_29

    .line 466
    .line 467
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v20

    .line 471
    move-object/from16 v26, v14

    .line 472
    .line 473
    move-object/from16 v14, v20

    .line 474
    .line 475
    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 476
    .line 477
    iget-object v14, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mSharedElementTransition:Ljava/lang/Object;

    .line 478
    .line 479
    if-eqz v14, :cond_13

    .line 480
    .line 481
    const/16 v20, 0x1

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_13
    const/16 v20, 0x0

    .line 485
    .line 486
    :goto_b
    if-eqz v20, :cond_28

    .line 487
    .line 488
    if-eqz v5, :cond_28

    .line 489
    .line 490
    if-eqz v6, :cond_28

    .line 491
    .line 492
    invoke-virtual {v3, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v14

    .line 500
    iget-object v0, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 501
    .line 502
    iget-object v6, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 503
    .line 504
    if-eqz v6, :cond_14

    .line 505
    .line 506
    iget-object v6, v6, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 507
    .line 508
    if-nez v6, :cond_15

    .line 509
    .line 510
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .line 514
    .line 515
    :cond_15
    iget-object v5, v5, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 516
    .line 517
    move-object/from16 v20, v3

    .line 518
    .line 519
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 520
    .line 521
    if-eqz v3, :cond_16

    .line 522
    .line 523
    iget-object v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 524
    .line 525
    if-nez v3, :cond_17

    .line 526
    .line 527
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    .line 528
    .line 529
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .line 531
    .line 532
    :cond_17
    move-object/from16 v27, v15

    .line 533
    .line 534
    iget-object v15, v5, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 535
    .line 536
    if-eqz v15, :cond_18

    .line 537
    .line 538
    iget-object v15, v15, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 539
    .line 540
    if-nez v15, :cond_19

    .line 541
    .line 542
    :cond_18
    new-instance v15, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .line 546
    .line 547
    :cond_19
    move-object/from16 v29, v11

    .line 548
    .line 549
    move-object/from16 v28, v13

    .line 550
    .line 551
    const/4 v13, 0x0

    .line 552
    :goto_c
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 553
    .line 554
    .line 555
    move-result v11

    .line 556
    if-ge v13, v11, :cond_1b

    .line 557
    .line 558
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 563
    .line 564
    .line 565
    move-result v11

    .line 566
    move-object/from16 v21, v15

    .line 567
    .line 568
    const/4 v15, -0x1

    .line 569
    if-eq v11, v15, :cond_1a

    .line 570
    .line 571
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v15

    .line 575
    check-cast v15, Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {v6, v11, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    .line 581
    .line 582
    move-object/from16 v15, v21

    .line 583
    .line 584
    goto :goto_c

    .line 585
    :cond_1b
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    .line 586
    .line 587
    if-eqz v3, :cond_1c

    .line 588
    .line 589
    iget-object v3, v3, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 590
    .line 591
    if-nez v3, :cond_1d

    .line 592
    .line 593
    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    .line 594
    .line 595
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .line 597
    .line 598
    :cond_1d
    move-object v11, v3

    .line 599
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 600
    .line 601
    .line 602
    move-result v3

    .line 603
    const/4 v13, 0x0

    .line 604
    :goto_d
    if-ge v13, v3, :cond_1e

    .line 605
    .line 606
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v15

    .line 610
    check-cast v15, Ljava/lang/String;

    .line 611
    .line 612
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v21

    .line 616
    move/from16 v22, v3

    .line 617
    .line 618
    move-object/from16 v3, v21

    .line 619
    .line 620
    check-cast v3, Ljava/lang/String;

    .line 621
    .line 622
    invoke-virtual {v1, v15, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    add-int/lit8 v13, v13, 0x1

    .line 626
    .line 627
    move/from16 v3, v22

    .line 628
    .line 629
    goto :goto_d

    .line 630
    :cond_1e
    const/4 v3, 0x2

    .line 631
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 632
    .line 633
    .line 634
    move-result v13

    .line 635
    if-eqz v13, :cond_20

    .line 636
    .line 637
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 642
    .line 643
    .line 644
    move-result v13

    .line 645
    if-eqz v13, :cond_1f

    .line 646
    .line 647
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v13

    .line 651
    check-cast v13, Ljava/lang/String;

    .line 652
    .line 653
    goto :goto_e

    .line 654
    :cond_1f
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 659
    .line 660
    .line 661
    move-result v13

    .line 662
    if-eqz v13, :cond_20

    .line 663
    .line 664
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v13

    .line 668
    check-cast v13, Ljava/lang/String;

    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_20
    new-instance v13, Landroidx/collection/ArrayMap;

    .line 672
    .line 673
    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 674
    .line 675
    .line 676
    iget-object v3, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 677
    .line 678
    invoke-static {v13, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v13, v6}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 682
    .line 683
    .line 684
    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-virtual {v1, v3}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 689
    .line 690
    .line 691
    new-instance v15, Landroidx/collection/ArrayMap;

    .line 692
    .line 693
    invoke-direct {v15}, Landroidx/collection/ArrayMap;-><init>()V

    .line 694
    .line 695
    .line 696
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 697
    .line 698
    invoke-static {v15, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->findNamedViews(Landroidx/collection/ArrayMap;Landroid/view/View;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v15, v11}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {v15, v0}, Landroidx/collection/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 709
    .line 710
    .line 711
    sget-object v0, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionCompat21;

    .line 712
    .line 713
    iget v0, v1, Landroidx/collection/SimpleArrayMap;->size:I

    .line 714
    .line 715
    const/4 v5, -0x1

    .line 716
    add-int/2addr v0, v5

    .line 717
    :goto_10
    if-ltz v0, :cond_22

    .line 718
    .line 719
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v3

    .line 723
    check-cast v3, Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {v15, v3}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    if-nez v3, :cond_21

    .line 730
    .line 731
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    :cond_21
    add-int/lit8 v0, v0, -0x1

    .line 735
    .line 736
    goto :goto_10

    .line 737
    :cond_22
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-static {v13, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-static {v15, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->retainMatchingViews(Landroidx/collection/ArrayMap;Ljava/util/Collection;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-eqz v0, :cond_23

    .line 756
    .line 757
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 761
    .line 762
    .line 763
    move-object/from16 v31, v1

    .line 764
    .line 765
    move/from16 v34, v5

    .line 766
    .line 767
    move-object v5, v9

    .line 768
    move-object v11, v5

    .line 769
    move-object v6, v10

    .line 770
    move-object v13, v6

    .line 771
    move-object v3, v12

    .line 772
    move-object/from16 v35, v19

    .line 773
    .line 774
    move-object/from16 v10, v20

    .line 775
    .line 776
    move-object/from16 v12, v28

    .line 777
    .line 778
    move-object/from16 v1, v29

    .line 779
    .line 780
    const/4 v0, 0x0

    .line 781
    move-object v9, v4

    .line 782
    move-object v4, v2

    .line 783
    goto/16 :goto_16

    .line 784
    .line 785
    :cond_23
    new-instance v3, Landroidx/fragment/app/DefaultSpecialEffectsController$6;

    .line 786
    .line 787
    move-object/from16 v30, v18

    .line 788
    .line 789
    move-object v0, v3

    .line 790
    move-object/from16 v31, v1

    .line 791
    .line 792
    move-object/from16 v1, p0

    .line 793
    .line 794
    move-object v7, v2

    .line 795
    move-object v2, v10

    .line 796
    move-object/from16 v32, v10

    .line 797
    .line 798
    move-object/from16 v33, v12

    .line 799
    .line 800
    move-object/from16 v10, v20

    .line 801
    .line 802
    move-object v12, v3

    .line 803
    move-object v3, v9

    .line 804
    move/from16 v34, v5

    .line 805
    .line 806
    move-object v5, v4

    .line 807
    move/from16 v4, p2

    .line 808
    .line 809
    move-object/from16 v36, v9

    .line 810
    .line 811
    move-object/from16 v35, v19

    .line 812
    .line 813
    move-object v9, v5

    .line 814
    move-object v5, v15

    .line 815
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$6;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;ZLandroidx/collection/ArrayMap;)V

    .line 816
    .line 817
    .line 818
    invoke-static {v8, v12}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 826
    .line 827
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    :goto_11
    move-object v1, v0

    .line 832
    check-cast v1, Landroidx/collection/IndexBasedArrayIterator;

    .line 833
    .line 834
    invoke-virtual {v1}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    if-eqz v2, :cond_24

    .line 839
    .line 840
    invoke-virtual {v1}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    check-cast v1, Landroid/view/View;

    .line 845
    .line 846
    invoke-static {v9, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 847
    .line 848
    .line 849
    goto :goto_11

    .line 850
    :cond_24
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 851
    .line 852
    .line 853
    move-result v0

    .line 854
    if-nez v0, :cond_25

    .line 855
    .line 856
    const/4 v0, 0x0

    .line 857
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    check-cast v1, Ljava/lang/String;

    .line 862
    .line 863
    invoke-virtual {v13, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    check-cast v0, Landroid/view/View;

    .line 868
    .line 869
    invoke-virtual {v10, v0, v14}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    .line 870
    .line 871
    .line 872
    goto :goto_12

    .line 873
    :cond_25
    move-object/from16 v0, v30

    .line 874
    .line 875
    :goto_12
    invoke-virtual {v15}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    check-cast v1, Landroidx/collection/ArrayMap$ValueCollection;

    .line 880
    .line 881
    invoke-virtual {v1}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    :goto_13
    move-object v2, v1

    .line 886
    check-cast v2, Landroidx/collection/IndexBasedArrayIterator;

    .line 887
    .line 888
    invoke-virtual {v2}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 889
    .line 890
    .line 891
    move-result v3

    .line 892
    if-eqz v3, :cond_26

    .line 893
    .line 894
    invoke-virtual {v2}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    check-cast v2, Landroid/view/View;

    .line 899
    .line 900
    invoke-static {v7, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 901
    .line 902
    .line 903
    goto :goto_13

    .line 904
    :cond_26
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 905
    .line 906
    .line 907
    move-result v1

    .line 908
    if-nez v1, :cond_27

    .line 909
    .line 910
    const/4 v1, 0x0

    .line 911
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    move-result-object v2

    .line 915
    check-cast v2, Ljava/lang/String;

    .line 916
    .line 917
    invoke-virtual {v15, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    check-cast v1, Landroid/view/View;

    .line 922
    .line 923
    if-eqz v1, :cond_27

    .line 924
    .line 925
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$7;

    .line 926
    .line 927
    move-object v4, v7

    .line 928
    move-object/from16 v3, v33

    .line 929
    .line 930
    move-object/from16 v7, p0

    .line 931
    .line 932
    invoke-direct {v2, v7, v10, v1, v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$7;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 933
    .line 934
    .line 935
    invoke-static {v8, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 936
    .line 937
    .line 938
    move-object/from16 v1, v29

    .line 939
    .line 940
    const/16 v25, 0x1

    .line 941
    .line 942
    goto :goto_14

    .line 943
    :cond_27
    move-object v4, v7

    .line 944
    move-object/from16 v3, v33

    .line 945
    .line 946
    move-object/from16 v7, p0

    .line 947
    .line 948
    move-object/from16 v1, v29

    .line 949
    .line 950
    :goto_14
    invoke-virtual {v10, v14, v1, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 951
    .line 952
    .line 953
    const/16 v19, 0x0

    .line 954
    .line 955
    const/16 v20, 0x0

    .line 956
    .line 957
    move-object/from16 v17, v10

    .line 958
    .line 959
    move-object/from16 v18, v14

    .line 960
    .line 961
    move-object/from16 v21, v14

    .line 962
    .line 963
    move-object/from16 v22, v4

    .line 964
    .line 965
    invoke-virtual/range {v17 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 966
    .line 967
    .line 968
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 969
    .line 970
    move-object/from16 v12, v28

    .line 971
    .line 972
    move-object/from16 v11, v36

    .line 973
    .line 974
    invoke-virtual {v12, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-object/from16 v13, v32

    .line 978
    .line 979
    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-object v5, v11

    .line 983
    move-object v6, v13

    .line 984
    goto :goto_15

    .line 985
    :cond_28
    move-object/from16 v31, v1

    .line 986
    .line 987
    move-object v1, v11

    .line 988
    move-object/from16 v27, v15

    .line 989
    .line 990
    move-object/from16 v30, v18

    .line 991
    .line 992
    move-object/from16 v35, v19

    .line 993
    .line 994
    const/16 v34, -0x1

    .line 995
    .line 996
    move-object v11, v9

    .line 997
    move-object v9, v4

    .line 998
    move-object v4, v2

    .line 999
    move-object/from16 v37, v10

    .line 1000
    .line 1001
    move-object v10, v3

    .line 1002
    move-object v3, v12

    .line 1003
    move-object v12, v13

    .line 1004
    move-object/from16 v13, v37

    .line 1005
    .line 1006
    move-object v14, v0

    .line 1007
    move-object/from16 v0, v30

    .line 1008
    .line 1009
    :goto_15
    move-object/from16 v18, v0

    .line 1010
    .line 1011
    move-object v0, v14

    .line 1012
    :goto_16
    move-object v2, v4

    .line 1013
    move-object v4, v9

    .line 1014
    move-object v9, v11

    .line 1015
    move-object/from16 v14, v26

    .line 1016
    .line 1017
    move-object/from16 v15, v27

    .line 1018
    .line 1019
    move-object/from16 v19, v35

    .line 1020
    .line 1021
    move-object v11, v1

    .line 1022
    move-object/from16 v1, v31

    .line 1023
    .line 1024
    move-object/from16 v37, v12

    .line 1025
    .line 1026
    move-object v12, v3

    .line 1027
    move-object v3, v10

    .line 1028
    move-object v10, v13

    .line 1029
    move-object/from16 v13, v37

    .line 1030
    .line 1031
    goto/16 :goto_a

    .line 1032
    .line 1033
    :cond_29
    move-object/from16 v31, v1

    .line 1034
    .line 1035
    move-object v1, v11

    .line 1036
    move-object/from16 v26, v14

    .line 1037
    .line 1038
    move-object/from16 v27, v15

    .line 1039
    .line 1040
    move-object/from16 v30, v18

    .line 1041
    .line 1042
    move-object/from16 v35, v19

    .line 1043
    .line 1044
    move-object v11, v9

    .line 1045
    move-object v9, v4

    .line 1046
    move-object v4, v2

    .line 1047
    move-object/from16 v37, v10

    .line 1048
    .line 1049
    move-object v10, v3

    .line 1050
    move-object v3, v12

    .line 1051
    move-object v12, v13

    .line 1052
    move-object/from16 v13, v37

    .line 1053
    .line 1054
    new-instance v2, Ljava/util/ArrayList;

    .line 1055
    .line 1056
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v14

    .line 1063
    move-object/from16 v36, v11

    .line 1064
    .line 1065
    const/4 v11, 0x0

    .line 1066
    const/4 v15, 0x0

    .line 1067
    :goto_17
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1068
    .line 1069
    .line 1070
    move-result v17

    .line 1071
    if-eqz v17, :cond_36

    .line 1072
    .line 1073
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v17

    .line 1077
    move-object/from16 p2, v14

    .line 1078
    .line 1079
    move-object/from16 v14, v17

    .line 1080
    .line 1081
    check-cast v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1082
    .line 1083
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1084
    .line 1085
    .line 1086
    move-result v17

    .line 1087
    move-object/from16 v32, v13

    .line 1088
    .line 1089
    iget-object v13, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1090
    .line 1091
    if-eqz v17, :cond_2a

    .line 1092
    .line 1093
    move-object/from16 v24, v15

    .line 1094
    .line 1095
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1096
    .line 1097
    invoke-virtual {v12, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1101
    .line 1102
    .line 1103
    move-object/from16 v28, v0

    .line 1104
    .line 1105
    move-object/from16 v17, v1

    .line 1106
    .line 1107
    move-object v1, v11

    .line 1108
    move-object/from16 v15, v24

    .line 1109
    .line 1110
    move-object/from16 v0, v30

    .line 1111
    .line 1112
    move-object/from16 v11, v35

    .line 1113
    .line 1114
    goto/16 :goto_1e

    .line 1115
    .line 1116
    :cond_2a
    move-object/from16 v24, v15

    .line 1117
    .line 1118
    iget-object v15, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 1119
    .line 1120
    invoke-virtual {v10, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v15

    .line 1124
    if-eqz v0, :cond_2c

    .line 1125
    .line 1126
    if-eq v13, v5, :cond_2b

    .line 1127
    .line 1128
    if-ne v13, v6, :cond_2c

    .line 1129
    .line 1130
    :cond_2b
    const/4 v6, 0x1

    .line 1131
    goto :goto_18

    .line 1132
    :cond_2c
    const/4 v6, 0x0

    .line 1133
    :goto_18
    if-nez v15, :cond_2e

    .line 1134
    .line 1135
    if-nez v6, :cond_2d

    .line 1136
    .line 1137
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1138
    .line 1139
    invoke-virtual {v12, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v14}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1143
    .line 1144
    .line 1145
    :cond_2d
    move-object/from16 v28, v0

    .line 1146
    .line 1147
    move-object/from16 v17, v1

    .line 1148
    .line 1149
    move-object v1, v11

    .line 1150
    move-object/from16 v15, v24

    .line 1151
    .line 1152
    move-object/from16 v0, v30

    .line 1153
    .line 1154
    move-object/from16 v11, v35

    .line 1155
    .line 1156
    goto/16 :goto_1d

    .line 1157
    .line 1158
    :cond_2e
    move-object/from16 v28, v0

    .line 1159
    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    .line 1161
    .line 1162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .line 1164
    .line 1165
    move-object/from16 v29, v11

    .line 1166
    .line 1167
    iget-object v11, v13, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1168
    .line 1169
    iget-object v11, v11, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1170
    .line 1171
    invoke-static {v0, v11}, Landroidx/fragment/app/DefaultSpecialEffectsController;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1172
    .line 1173
    .line 1174
    if-eqz v6, :cond_30

    .line 1175
    .line 1176
    if-ne v13, v5, :cond_2f

    .line 1177
    .line 1178
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1179
    .line 1180
    .line 1181
    goto :goto_19

    .line 1182
    :cond_2f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1183
    .line 1184
    .line 1185
    :cond_30
    :goto_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v6

    .line 1189
    if-eqz v6, :cond_31

    .line 1190
    .line 1191
    invoke-virtual {v10, v1, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->addTarget(Landroid/view/View;Ljava/lang/Object;)V

    .line 1192
    .line 1193
    .line 1194
    goto :goto_1a

    .line 1195
    :cond_31
    invoke-virtual {v10, v15, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1196
    .line 1197
    .line 1198
    const/16 v21, 0x0

    .line 1199
    .line 1200
    const/16 v22, 0x0

    .line 1201
    .line 1202
    move-object/from16 v17, v10

    .line 1203
    .line 1204
    move-object/from16 v18, v15

    .line 1205
    .line 1206
    move-object/from16 v19, v15

    .line 1207
    .line 1208
    move-object/from16 v20, v0

    .line 1209
    .line 1210
    invoke-virtual/range {v17 .. v22}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1211
    .line 1212
    .line 1213
    iget-object v6, v13, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1214
    .line 1215
    sget-object v11, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1216
    .line 1217
    if-ne v6, v11, :cond_32

    .line 1218
    .line 1219
    move-object/from16 v11, v35

    .line 1220
    .line 1221
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1222
    .line 1223
    .line 1224
    iget-object v6, v13, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1225
    .line 1226
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1227
    .line 1228
    invoke-virtual {v10, v15, v6, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1229
    .line 1230
    .line 1231
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$8;

    .line 1232
    .line 1233
    invoke-direct {v6, v7, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$8;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;)V

    .line 1234
    .line 1235
    .line 1236
    invoke-static {v8, v6}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1237
    .line 1238
    .line 1239
    goto :goto_1b

    .line 1240
    :cond_32
    :goto_1a
    move-object/from16 v11, v35

    .line 1241
    .line 1242
    :goto_1b
    iget-object v6, v13, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1243
    .line 1244
    move-object/from16 v17, v1

    .line 1245
    .line 1246
    sget-object v1, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1247
    .line 1248
    if-ne v6, v1, :cond_34

    .line 1249
    .line 1250
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1251
    .line 1252
    .line 1253
    if-eqz v25, :cond_33

    .line 1254
    .line 1255
    invoke-virtual {v10, v15, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1256
    .line 1257
    .line 1258
    :cond_33
    move-object/from16 v0, v30

    .line 1259
    .line 1260
    goto :goto_1c

    .line 1261
    :cond_34
    move-object/from16 v0, v30

    .line 1262
    .line 1263
    invoke-virtual {v10, v0, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->setEpicenter(Landroid/view/View;Ljava/lang/Object;)V

    .line 1264
    .line 1265
    .line 1266
    :goto_1c
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1267
    .line 1268
    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    iget-boolean v1, v14, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mOverlapAllowed:Z

    .line 1272
    .line 1273
    if-eqz v1, :cond_35

    .line 1274
    .line 1275
    move-object/from16 v1, v29

    .line 1276
    .line 1277
    invoke-virtual {v10, v1, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    move-object/from16 v15, v24

    .line 1282
    .line 1283
    goto :goto_1d

    .line 1284
    :cond_35
    move-object/from16 v6, v24

    .line 1285
    .line 1286
    move-object/from16 v1, v29

    .line 1287
    .line 1288
    invoke-virtual {v10, v6, v15}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v15

    .line 1292
    :goto_1d
    move-object/from16 v6, v32

    .line 1293
    .line 1294
    :goto_1e
    move-object/from16 v14, p2

    .line 1295
    .line 1296
    move-object/from16 v30, v0

    .line 1297
    .line 1298
    move-object/from16 v35, v11

    .line 1299
    .line 1300
    move-object/from16 v0, v28

    .line 1301
    .line 1302
    move-object/from16 v13, v32

    .line 1303
    .line 1304
    move-object v11, v1

    .line 1305
    move-object/from16 v1, v17

    .line 1306
    .line 1307
    goto/16 :goto_17

    .line 1308
    .line 1309
    :cond_36
    move-object v1, v11

    .line 1310
    move-object/from16 v32, v13

    .line 1311
    .line 1312
    move-object v6, v15

    .line 1313
    move-object/from16 v11, v35

    .line 1314
    .line 1315
    move-object v13, v0

    .line 1316
    invoke-virtual {v10, v1, v6, v13}, Landroidx/fragment/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v0

    .line 1320
    if-nez v0, :cond_37

    .line 1321
    .line 1322
    move-object/from16 v14, v32

    .line 1323
    .line 1324
    goto :goto_22

    .line 1325
    :cond_37
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v1

    .line 1329
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1330
    .line 1331
    .line 1332
    move-result v3

    .line 1333
    if-eqz v3, :cond_3f

    .line 1334
    .line 1335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    check-cast v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1340
    .line 1341
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1342
    .line 1343
    .line 1344
    move-result v6

    .line 1345
    if-eqz v6, :cond_38

    .line 1346
    .line 1347
    goto :goto_1f

    .line 1348
    :cond_38
    iget-object v6, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1349
    .line 1350
    move-object/from16 v14, v32

    .line 1351
    .line 1352
    if-eqz v13, :cond_3a

    .line 1353
    .line 1354
    if-eq v6, v5, :cond_39

    .line 1355
    .line 1356
    if-ne v6, v14, :cond_3a

    .line 1357
    .line 1358
    :cond_39
    move-object/from16 p2, v1

    .line 1359
    .line 1360
    const/4 v15, 0x1

    .line 1361
    goto :goto_20

    .line 1362
    :cond_3a
    move-object/from16 p2, v1

    .line 1363
    .line 1364
    const/4 v15, 0x0

    .line 1365
    :goto_20
    iget-object v1, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;->mTransition:Ljava/lang/Object;

    .line 1366
    .line 1367
    if-nez v1, :cond_3b

    .line 1368
    .line 1369
    if-eqz v15, :cond_3e

    .line 1370
    .line 1371
    :cond_3b
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1372
    .line 1373
    invoke-static {v8}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v1

    .line 1377
    if-nez v1, :cond_3d

    .line 1378
    .line 1379
    const/4 v1, 0x2

    .line 1380
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1381
    .line 1382
    .line 1383
    move-result v15

    .line 1384
    if-eqz v15, :cond_3c

    .line 1385
    .line 1386
    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1387
    .line 1388
    .line 1389
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    :cond_3c
    invoke-virtual {v3}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1393
    .line 1394
    .line 1395
    goto :goto_21

    .line 1396
    :cond_3d
    iget-object v1, v6, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1397
    .line 1398
    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$9;

    .line 1399
    .line 1400
    invoke-direct {v1, v7, v3, v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$9;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1401
    .line 1402
    .line 1403
    iget-object v3, v3, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    .line 1404
    .line 1405
    invoke-virtual {v10, v0, v3, v1}, Landroidx/fragment/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Landroidx/fragment/app/DefaultSpecialEffectsController$9;)V

    .line 1406
    .line 1407
    .line 1408
    :cond_3e
    :goto_21
    move-object/from16 v1, p2

    .line 1409
    .line 1410
    move-object/from16 v32, v14

    .line 1411
    .line 1412
    goto :goto_1f

    .line 1413
    :cond_3f
    move-object/from16 v14, v32

    .line 1414
    .line 1415
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1416
    .line 1417
    invoke-static {v8}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    .line 1418
    .line 1419
    .line 1420
    move-result v1

    .line 1421
    if-nez v1, :cond_40

    .line 1422
    .line 1423
    :goto_22
    move-object/from16 v32, v14

    .line 1424
    .line 1425
    const/4 v7, 0x0

    .line 1426
    goto/16 :goto_29

    .line 1427
    .line 1428
    :cond_40
    const/4 v1, 0x4

    .line 1429
    invoke-static {v2, v1}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 1430
    .line 1431
    .line 1432
    new-instance v1, Ljava/util/ArrayList;

    .line 1433
    .line 1434
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1438
    .line 1439
    .line 1440
    move-result v3

    .line 1441
    const/4 v5, 0x0

    .line 1442
    :goto_23
    if-ge v5, v3, :cond_41

    .line 1443
    .line 1444
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v6

    .line 1448
    check-cast v6, Landroid/view/View;

    .line 1449
    .line 1450
    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1451
    .line 1452
    invoke-static {v6}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v15

    .line 1456
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    .line 1458
    .line 1459
    const/4 v15, 0x0

    .line 1460
    invoke-static {v6, v15}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    add-int/lit8 v5, v5, 0x1

    .line 1464
    .line 1465
    goto :goto_23

    .line 1466
    :cond_41
    const/4 v5, 0x2

    .line 1467
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1468
    .line 1469
    .line 1470
    move-result v3

    .line 1471
    if-eqz v3, :cond_43

    .line 1472
    .line 1473
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v3

    .line 1477
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1478
    .line 1479
    .line 1480
    move-result v5

    .line 1481
    if-eqz v5, :cond_42

    .line 1482
    .line 1483
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v5

    .line 1487
    check-cast v5, Landroid/view/View;

    .line 1488
    .line 1489
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1490
    .line 1491
    .line 1492
    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    goto :goto_24

    .line 1496
    :cond_42
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v3

    .line 1500
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1501
    .line 1502
    .line 1503
    move-result v5

    .line 1504
    if-eqz v5, :cond_43

    .line 1505
    .line 1506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v5

    .line 1510
    check-cast v5, Landroid/view/View;

    .line 1511
    .line 1512
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    goto :goto_25

    .line 1519
    :cond_43
    invoke-virtual {v10, v8, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    new-instance v3, Ljava/util/ArrayList;

    .line 1527
    .line 1528
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    .line 1530
    .line 1531
    const/4 v5, 0x0

    .line 1532
    :goto_26
    if-ge v5, v0, :cond_47

    .line 1533
    .line 1534
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v6

    .line 1538
    check-cast v6, Landroid/view/View;

    .line 1539
    .line 1540
    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1541
    .line 1542
    invoke-static {v6}, Landroidx/core/view/ViewCompat$Api21Impl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v15

    .line 1546
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    .line 1548
    .line 1549
    if-nez v15, :cond_44

    .line 1550
    .line 1551
    move-object/from16 v32, v14

    .line 1552
    .line 1553
    goto :goto_28

    .line 1554
    :cond_44
    move-object/from16 v32, v14

    .line 1555
    .line 1556
    const/4 v14, 0x0

    .line 1557
    invoke-static {v6, v14}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1558
    .line 1559
    .line 1560
    move-object/from16 v6, v31

    .line 1561
    .line 1562
    invoke-virtual {v6, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v16

    .line 1566
    move-object/from16 v14, v16

    .line 1567
    .line 1568
    check-cast v14, Ljava/lang/String;

    .line 1569
    .line 1570
    const/4 v6, 0x0

    .line 1571
    :goto_27
    if-ge v6, v0, :cond_46

    .line 1572
    .line 1573
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v7

    .line 1577
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v7

    .line 1581
    if-eqz v7, :cond_45

    .line 1582
    .line 1583
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v6

    .line 1587
    check-cast v6, Landroid/view/View;

    .line 1588
    .line 1589
    invoke-static {v6, v15}, Landroidx/core/view/ViewCompat$Api21Impl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    goto :goto_28

    .line 1593
    :cond_45
    add-int/lit8 v6, v6, 0x1

    .line 1594
    .line 1595
    move-object/from16 v7, p0

    .line 1596
    .line 1597
    goto :goto_27

    .line 1598
    :cond_46
    :goto_28
    add-int/lit8 v5, v5, 0x1

    .line 1599
    .line 1600
    move-object/from16 v7, p0

    .line 1601
    .line 1602
    move-object/from16 v14, v32

    .line 1603
    .line 1604
    goto :goto_26

    .line 1605
    :cond_47
    move-object/from16 v32, v14

    .line 1606
    .line 1607
    new-instance v5, Landroidx/fragment/app/FragmentTransitionImpl$1;

    .line 1608
    .line 1609
    move-object/from16 v17, v5

    .line 1610
    .line 1611
    move-object/from16 v18, v10

    .line 1612
    .line 1613
    move/from16 v19, v0

    .line 1614
    .line 1615
    move-object/from16 v20, v4

    .line 1616
    .line 1617
    move-object/from16 v21, v1

    .line 1618
    .line 1619
    move-object/from16 v22, v9

    .line 1620
    .line 1621
    move-object/from16 v23, v3

    .line 1622
    .line 1623
    invoke-direct/range {v17 .. v23}, Landroidx/fragment/app/FragmentTransitionImpl$1;-><init>(Landroidx/fragment/app/FragmentTransitionImpl;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1624
    .line 1625
    .line 1626
    invoke-static {v8, v5}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1627
    .line 1628
    .line 1629
    const/4 v7, 0x0

    .line 1630
    invoke-static {v2, v7}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 1631
    .line 1632
    .line 1633
    invoke-virtual {v10, v13, v9, v4}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1634
    .line 1635
    .line 1636
    :goto_29
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1637
    .line 1638
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 1639
    .line 1640
    .line 1641
    move-result v9

    .line 1642
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v10

    .line 1646
    new-instance v13, Ljava/util/ArrayList;

    .line 1647
    .line 1648
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1649
    .line 1650
    .line 1651
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v14

    .line 1655
    move v6, v7

    .line 1656
    :goto_2a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 1657
    .line 1658
    .line 1659
    move-result v0

    .line 1660
    if-eqz v0, :cond_50

    .line 1661
    .line 1662
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1663
    .line 1664
    .line 1665
    move-result-object v0

    .line 1666
    move-object v15, v0

    .line 1667
    check-cast v15, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 1668
    .line 1669
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->isVisibilityUnchanged()Z

    .line 1670
    .line 1671
    .line 1672
    move-result v0

    .line 1673
    if-eqz v0, :cond_48

    .line 1674
    .line 1675
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1676
    .line 1677
    .line 1678
    goto :goto_2a

    .line 1679
    :cond_48
    invoke-virtual {v15, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    if-nez v0, :cond_49

    .line 1684
    .line 1685
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1686
    .line 1687
    .line 1688
    goto :goto_2a

    .line 1689
    :cond_49
    iget-object v5, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1690
    .line 1691
    if-nez v5, :cond_4a

    .line 1692
    .line 1693
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    .line 1695
    .line 1696
    goto :goto_2a

    .line 1697
    :cond_4a
    iget-object v4, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1698
    .line 1699
    iget-object v0, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1700
    .line 1701
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1702
    .line 1703
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    .line 1705
    .line 1706
    move-result-object v2

    .line 1707
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1708
    .line 1709
    .line 1710
    move-result v1

    .line 1711
    if-eqz v1, :cond_4c

    .line 1712
    .line 1713
    const/4 v1, 0x2

    .line 1714
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1715
    .line 1716
    .line 1717
    move-result v2

    .line 1718
    if-eqz v2, :cond_4b

    .line 1719
    .line 1720
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1721
    .line 1722
    .line 1723
    :cond_4b
    invoke-virtual {v15}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1724
    .line 1725
    .line 1726
    goto :goto_2a

    .line 1727
    :cond_4c
    iget-object v1, v4, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1728
    .line 1729
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->GONE:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1730
    .line 1731
    if-ne v1, v2, :cond_4d

    .line 1732
    .line 1733
    const/4 v6, 0x1

    .line 1734
    goto :goto_2b

    .line 1735
    :cond_4d
    move v6, v7

    .line 1736
    :goto_2b
    if-eqz v6, :cond_4e

    .line 1737
    .line 1738
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1739
    .line 1740
    .line 1741
    :cond_4e
    iget-object v3, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1742
    .line 1743
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1744
    .line 1745
    .line 1746
    new-instance v2, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    .line 1747
    .line 1748
    move-object v0, v2

    .line 1749
    move-object/from16 v1, p0

    .line 1750
    .line 1751
    move-object v7, v2

    .line 1752
    move-object v2, v8

    .line 1753
    move-object/from16 p2, v3

    .line 1754
    .line 1755
    move-object/from16 v16, v4

    .line 1756
    .line 1757
    move v4, v6

    .line 1758
    move-object v6, v5

    .line 1759
    move-object/from16 v5, v16

    .line 1760
    .line 1761
    move-object/from16 v28, v12

    .line 1762
    .line 1763
    move-object v12, v6

    .line 1764
    move-object v6, v15

    .line 1765
    invoke-direct/range {v0 .. v6}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual {v12, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1769
    .line 1770
    .line 1771
    move-object/from16 v0, p2

    .line 1772
    .line 1773
    invoke-virtual {v12, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    .line 1777
    .line 1778
    .line 1779
    const/4 v0, 0x2

    .line 1780
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1781
    .line 1782
    .line 1783
    move-result v1

    .line 1784
    if-eqz v1, :cond_4f

    .line 1785
    .line 1786
    invoke-virtual/range {v16 .. v16}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 1787
    .line 1788
    .line 1789
    :cond_4f
    new-instance v0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    .line 1790
    .line 1791
    move-object/from16 v7, p0

    .line 1792
    .line 1793
    move-object/from16 v1, v16

    .line 1794
    .line 1795
    invoke-direct {v0, v7, v12, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1796
    .line 1797
    .line 1798
    iget-object v1, v15, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    .line 1799
    .line 1800
    invoke-virtual {v1, v0}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 1801
    .line 1802
    .line 1803
    move-object/from16 v12, v28

    .line 1804
    .line 1805
    const/4 v6, 0x1

    .line 1806
    const/4 v7, 0x0

    .line 1807
    goto/16 :goto_2a

    .line 1808
    .line 1809
    :cond_50
    move-object/from16 v7, p0

    .line 1810
    .line 1811
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1812
    .line 1813
    .line 1814
    move-result-object v12

    .line 1815
    :goto_2c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1816
    .line 1817
    .line 1818
    move-result v0

    .line 1819
    if-eqz v0, :cond_57

    .line 1820
    .line 1821
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v0

    .line 1825
    move-object v13, v0

    .line 1826
    check-cast v13, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    .line 1827
    .line 1828
    iget-object v14, v13, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mOperation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1829
    .line 1830
    iget-object v0, v14, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1831
    .line 1832
    if-eqz v9, :cond_52

    .line 1833
    .line 1834
    const/4 v1, 0x2

    .line 1835
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1836
    .line 1837
    .line 1838
    move-result v2

    .line 1839
    if-eqz v2, :cond_51

    .line 1840
    .line 1841
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1842
    .line 1843
    .line 1844
    :cond_51
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1845
    .line 1846
    .line 1847
    goto :goto_2c

    .line 1848
    :cond_52
    const/4 v1, 0x2

    .line 1849
    if-eqz v6, :cond_54

    .line 1850
    .line 1851
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1852
    .line 1853
    .line 1854
    move-result v2

    .line 1855
    if-eqz v2, :cond_53

    .line 1856
    .line 1857
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1858
    .line 1859
    .line 1860
    :cond_53
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1861
    .line 1862
    .line 1863
    goto :goto_2c

    .line 1864
    :cond_54
    iget-object v15, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1865
    .line 1866
    invoke-virtual {v13, v10}, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v0

    .line 1870
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1871
    .line 1872
    .line 1873
    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 1874
    .line 1875
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1876
    .line 1877
    .line 1878
    iget-object v1, v14, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1879
    .line 1880
    sget-object v2, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->REMOVED:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1881
    .line 1882
    if-eq v1, v2, :cond_55

    .line 1883
    .line 1884
    invoke-virtual {v15, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v13}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    .line 1888
    .line 1889
    .line 1890
    move/from16 p1, v6

    .line 1891
    .line 1892
    goto :goto_2d

    .line 1893
    :cond_55
    invoke-virtual {v8, v15}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1894
    .line 1895
    .line 1896
    new-instance v5, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;

    .line 1897
    .line 1898
    invoke-direct {v5, v0, v8, v15}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1899
    .line 1900
    .line 1901
    new-instance v4, Landroidx/fragment/app/DefaultSpecialEffectsController$4;

    .line 1902
    .line 1903
    move-object v0, v4

    .line 1904
    move-object/from16 v1, p0

    .line 1905
    .line 1906
    move-object v2, v14

    .line 1907
    move-object v3, v8

    .line 1908
    move/from16 p1, v6

    .line 1909
    .line 1910
    move-object v6, v4

    .line 1911
    move-object v4, v15

    .line 1912
    move-object v7, v5

    .line 1913
    move-object v5, v13

    .line 1914
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$4;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V

    .line 1915
    .line 1916
    .line 1917
    invoke-virtual {v7, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1918
    .line 1919
    .line 1920
    invoke-virtual {v15, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1921
    .line 1922
    .line 1923
    const/4 v0, 0x2

    .line 1924
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1925
    .line 1926
    .line 1927
    move-result v1

    .line 1928
    if-eqz v1, :cond_56

    .line 1929
    .line 1930
    invoke-virtual {v14}, Landroidx/fragment/app/SpecialEffectsController$Operation;->toString()Ljava/lang/String;

    .line 1931
    .line 1932
    .line 1933
    :cond_56
    :goto_2d
    new-instance v6, Landroidx/fragment/app/DefaultSpecialEffectsController$5;

    .line 1934
    .line 1935
    move-object v0, v6

    .line 1936
    move-object/from16 v1, p0

    .line 1937
    .line 1938
    move-object v2, v15

    .line 1939
    move-object v3, v8

    .line 1940
    move-object v4, v13

    .line 1941
    move-object v5, v14

    .line 1942
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/DefaultSpecialEffectsController$5;-><init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/SpecialEffectsController$Operation;)V

    .line 1943
    .line 1944
    .line 1945
    iget-object v0, v13, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->mSignal:Landroidx/core/os/CancellationSignal;

    .line 1946
    .line 1947
    invoke-virtual {v0, v6}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 1948
    .line 1949
    .line 1950
    move-object/from16 v7, p0

    .line 1951
    .line 1952
    move/from16 v6, p1

    .line 1953
    .line 1954
    goto/16 :goto_2c

    .line 1955
    .line 1956
    :cond_57
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v0

    .line 1960
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1961
    .line 1962
    .line 1963
    move-result v1

    .line 1964
    if-eqz v1, :cond_58

    .line 1965
    .line 1966
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1967
    .line 1968
    .line 1969
    move-result-object v1

    .line 1970
    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 1971
    .line 1972
    iget-object v2, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFragment:Landroidx/fragment/app/Fragment;

    .line 1973
    .line 1974
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1975
    .line 1976
    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$Operation;->mFinalState:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    .line 1977
    .line 1978
    invoke-virtual {v1, v2}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;)V

    .line 1979
    .line 1980
    .line 1981
    goto :goto_2e

    .line 1982
    :cond_58
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1983
    .line 1984
    .line 1985
    const/4 v0, 0x2

    .line 1986
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    .line 1987
    .line 1988
    .line 1989
    move-result v0

    .line 1990
    if-eqz v0, :cond_59

    .line 1991
    .line 1992
    invoke-static/range {v36 .. v36}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1993
    .line 1994
    .line 1995
    invoke-static/range {v32 .. v32}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    :cond_59
    return-void
.end method
