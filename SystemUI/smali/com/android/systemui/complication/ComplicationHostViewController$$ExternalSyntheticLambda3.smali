.class public final synthetic Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationHostViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationHostViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_9

    .line 10
    .line 11
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    check-cast v1, Lcom/android/systemui/complication/ComplicationId;

    .line 16
    .line 17
    iget-object v3, v0, Lcom/android/systemui/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/complication/ComplicationLayoutEngine;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine;->mEntries:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "could not find id:"

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "ComplicationLayoutEng"

    .line 44
    .line 45
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_0
    iget-object v4, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$Parent;

    .line 51
    .line 52
    check-cast v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    .line 53
    .line 54
    iget-object v5, v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v4, v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    .line 60
    .line 61
    check-cast v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/android/systemui/complication/ComplicationLayoutEngine$PositionGroup;->mDirectionGroups:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object v6, v2

    .line 74
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const/4 v8, 0x0

    .line 79
    if-eqz v7, :cond_4

    .line 80
    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    .line 86
    .line 87
    iget-object v7, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_2

    .line 94
    .line 95
    move-object v7, v2

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    check-cast v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    .line 102
    .line 103
    :goto_1
    if-eqz v6, :cond_3

    .line 104
    .line 105
    if-eqz v7, :cond_1

    .line 106
    .line 107
    invoke-virtual {v7, v6}, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->compareTo(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-lez v8, :cond_1

    .line 112
    .line 113
    :cond_3
    move-object v6, v7

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    if-nez v6, :cond_5

    .line 116
    .line 117
    goto/16 :goto_7

    .line 118
    .line 119
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_c

    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;

    .line 138
    .line 139
    iget-object v7, v6, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 140
    .line 141
    iget-object v5, v5, Lcom/android/systemui/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    move-object v14, v7

    .line 148
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_6

    .line 153
    .line 154
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    new-instance v15, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 164
    .line 165
    iget-object v9, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    .line 166
    .line 167
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    .line 169
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 170
    .line 171
    invoke-direct {v15, v10, v9}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 172
    .line 173
    .line 174
    iget-object v13, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    .line 175
    .line 176
    iget v12, v13, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    .line 177
    .line 178
    iget-boolean v11, v13, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    .line 179
    .line 180
    iget-object v9, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 181
    .line 182
    const/4 v10, 0x1

    .line 183
    if-ne v14, v9, :cond_7

    .line 184
    .line 185
    move/from16 v16, v10

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    move/from16 v16, v8

    .line 189
    .line 190
    :goto_3
    new-instance v9, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    move-object/from16 p0, v9

    .line 193
    .line 194
    move v8, v10

    .line 195
    move-object v10, v7

    .line 196
    move/from16 v17, v11

    .line 197
    .line 198
    move/from16 v11, v16

    .line 199
    .line 200
    move/from16 v16, v12

    .line 201
    .line 202
    move-object v2, v13

    .line 203
    move-object v13, v15

    .line 204
    move-object/from16 v18, v15

    .line 205
    .line 206
    move/from16 v15, v17

    .line 207
    .line 208
    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;ZILandroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/view/View;Z)V

    .line 209
    .line 210
    .line 211
    iget v2, v2, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    .line 212
    .line 213
    invoke-static {v2, v9}, Lcom/android/systemui/complication/ComplicationLayoutParams;->iteratePositions(ILjava/util/function/Consumer;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mLayoutParams:Lcom/android/systemui/complication/ComplicationLayoutParams;

    .line 217
    .line 218
    iget v2, v2, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    .line 219
    .line 220
    const/4 v9, -0x1

    .line 221
    if-eq v2, v9, :cond_8

    .line 222
    .line 223
    move v10, v8

    .line 224
    goto :goto_4

    .line 225
    :cond_8
    const/4 v10, 0x0

    .line 226
    :goto_4
    if-eqz v10, :cond_b

    .line 227
    .line 228
    move/from16 v9, v16

    .line 229
    .line 230
    if-eq v9, v8, :cond_a

    .line 231
    .line 232
    const/4 v8, 0x2

    .line 233
    if-eq v9, v8, :cond_a

    .line 234
    .line 235
    const/4 v8, 0x4

    .line 236
    if-eq v9, v8, :cond_9

    .line 237
    .line 238
    const/16 v8, 0x8

    .line 239
    .line 240
    if-eq v9, v8, :cond_9

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_9
    move-object/from16 v8, v18

    .line 244
    .line 245
    iput v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_a
    move-object/from16 v8, v18

    .line 249
    .line 250
    iput v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 251
    .line 252
    goto :goto_6

    .line 253
    :cond_b
    :goto_5
    move-object/from16 v8, v18

    .line 254
    .line 255
    :goto_6
    iget-object v2, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 256
    .line 257
    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    iget-object v14, v7, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 261
    .line 262
    const/4 v8, 0x0

    .line 263
    goto :goto_2

    .line 264
    :cond_c
    :goto_7
    iget-object v2, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 265
    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Landroid/view/ViewGroup;

    .line 271
    .line 272
    iget-object v4, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 273
    .line 274
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mTouchInsetSession:Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    .line 278
    .line 279
    iget-object v3, v3, Lcom/android/systemui/complication/ComplicationLayoutEngine$ViewEntry;->mView:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    new-instance v4, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;

    .line 285
    .line 286
    const/4 v5, 0x2

    .line 287
    invoke-direct {v4, v2, v3, v5}, Lcom/android/systemui/touch/TouchInsetManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;Landroid/view/View;I)V

    .line 288
    .line 289
    .line 290
    iget-object v2, v2, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;->mExecutor:Ljava/util/concurrent/Executor;

    .line 291
    .line 292
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 293
    .line 294
    .line 295
    :goto_8
    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    .line 296
    .line 297
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :goto_9
    iget-object v0, v0, Lcom/android/systemui/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/complication/ComplicationHostViewController;

    .line 302
    .line 303
    move-object/from16 v1, p1

    .line 304
    .line 305
    check-cast v1, Lcom/android/systemui/complication/ComplicationViewModel;

    .line 306
    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    iget-object v0, v1, Lcom/android/systemui/complication/ComplicationViewModel;->mId:Lcom/android/systemui/complication/ComplicationId;

    .line 311
    .line 312
    throw v2

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
