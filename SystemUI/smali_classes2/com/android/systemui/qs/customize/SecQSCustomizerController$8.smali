.class public final Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->isShown()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/view/View;

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq p2, v3, :cond_d

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    if-eq p2, v4, :cond_c

    .line 44
    .line 45
    const/4 v4, 0x4

    .line 46
    if-eq p2, v4, :cond_a

    .line 47
    .line 48
    const/4 v4, 0x5

    .line 49
    if-eq p2, v4, :cond_2

    .line 50
    .line 51
    const/4 p1, 0x6

    .line 52
    if-eq p2, p1, :cond_1

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->removeAreaAnimationMessage()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    const v4, 0x7f0a084d

    .line 68
    .line 69
    .line 70
    if-ne p2, v4, :cond_3

    .line 71
    .line 72
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 73
    .line 74
    iget v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 75
    .line 76
    const/16 v6, 0x1388

    .line 77
    .line 78
    if-ne v5, v6, :cond_3

    .line 79
    .line 80
    iget-object v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 81
    .line 82
    const/16 v6, 0x3e8

    .line 83
    .line 84
    invoke-virtual {p2, v5, v6, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;II)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const v5, 0x7f0a084c

    .line 93
    .line 94
    .line 95
    const/16 v6, 0x1770

    .line 96
    .line 97
    if-ne p2, v5, :cond_4

    .line 98
    .line 99
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 100
    .line 101
    iget v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 102
    .line 103
    if-ne v5, v6, :cond_4

    .line 104
    .line 105
    iget-object v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 106
    .line 107
    const/16 v6, 0x7d0

    .line 108
    .line 109
    invoke-virtual {p2, v5, v6, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    const v5, 0x7f0a009d

    .line 118
    .line 119
    .line 120
    if-ne p2, v5, :cond_5

    .line 121
    .line 122
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 123
    .line 124
    iget v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 125
    .line 126
    if-eq v5, v6, :cond_5

    .line 127
    .line 128
    iget-object v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 129
    .line 130
    const/16 v6, 0xcc

    .line 131
    .line 132
    invoke-static {p2, v5, v6}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->-$$Nest$manimatePage(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    const v5, 0x7f0a009c

    .line 141
    .line 142
    .line 143
    if-ne p2, v5, :cond_6

    .line 144
    .line 145
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 146
    .line 147
    iget v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 148
    .line 149
    if-eq v5, v6, :cond_6

    .line 150
    .line 151
    iget-object v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 152
    .line 153
    const/16 v6, 0xcb

    .line 154
    .line 155
    invoke-static {p2, v5, v6}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->-$$Nest$manimatePage(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 160
    .line 161
    iget-object v5, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 162
    .line 163
    invoke-virtual {p2, v5, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animateCurrentPage(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 169
    .line 170
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    if-ne p2, v4, :cond_7

    .line 177
    .line 178
    move v1, v3

    .line 179
    :cond_7
    if-eqz v1, :cond_8

    .line 180
    .line 181
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 185
    .line 186
    :goto_1
    iget v2, p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mColumns:I

    .line 187
    .line 188
    iget v4, p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    .line 189
    .line 190
    mul-int/2addr v2, v4

    .line 191
    rem-int/2addr v0, v2

    .line 192
    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    rem-int v2, v0, v2

    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    div-int/2addr v0, p2

    .line 203
    if-eqz v1, :cond_9

    .line 204
    .line 205
    const p2, 0x7f130d0a

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_9
    const p2, 0x7f130d09

    .line 210
    .line 211
    .line 212
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    add-int/2addr v0, v3

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    add-int/2addr v2, v3

    .line 224
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 241
    .line 242
    iget-boolean p1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsDroppedOnView:Z

    .line 243
    .line 244
    if-nez p1, :cond_b

    .line 245
    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string p2, "ACTION_DRAG_ENDED mWhereAmI = "

    .line 249
    .line 250
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 254
    .line 255
    iget p2, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mWhereAmI:I

    .line 256
    .line 257
    const-string v0, "SecQSCustomizerController"

    .line 258
    .line 259
    invoke-static {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 263
    .line 264
    iget-object p2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 265
    .line 266
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 270
    .line 271
    iput-boolean v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsDroppedOnView:Z

    .line 272
    .line 273
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 276
    .line 277
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 278
    .line 279
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsMultiTouch:Z

    .line 280
    .line 281
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsDragging:Z

    .line 282
    .line 283
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 284
    .line 285
    iput-boolean v1, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 288
    .line 289
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 293
    .line 294
    iput-boolean v3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsDroppedOnView:Z

    .line 295
    .line 296
    iget-object v0, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;

    .line 297
    .line 298
    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->animationDrop(Lcom/android/systemui/qs/customize/SecQSCustomizerBase$CustomTileInfo;)V

    .line 299
    .line 300
    .line 301
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 302
    .line 303
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 304
    .line 305
    check-cast p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 306
    .line 307
    iput-boolean v1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsMultiTouch:Z

    .line 308
    .line 309
    iput-boolean v1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsDragging:Z

    .line 310
    .line 311
    iget-object v0, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 312
    .line 313
    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 314
    .line 315
    iget-object p2, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    .line 316
    .line 317
    iput-boolean v1, p2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsMultiTouch:Z

    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    const p2, 0x7f130d06

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 335
    .line 336
    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mIsDroppedOnView:Z

    .line 337
    .line 338
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 339
    .line 340
    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;

    .line 341
    .line 342
    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerBase;->mIsDragging:Z

    .line 343
    .line 344
    :goto_3
    return v3
.end method
