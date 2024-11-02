.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuView;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;
.implements Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

.field public final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field public final mArrowDown:Landroid/widget/ImageView;

.field public final mArrowElevation:I

.field public final mArrowLeft:Landroid/widget/ImageView;

.field public final mArrowRight:Landroid/widget/ImageView;

.field public final mArrowUp:Landroid/widget/ImageView;

.field public final mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

.field public mCurrentMenuMode:I

.field public final mCurrentPipBounds:Landroid/graphics/Rect;

.field public mCurrentPipGravity:I

.field public final mDimLayer:Landroid/view/View;

.field public final mEduTextContainer:Landroid/view/ViewGroup;

.field public final mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

.field public final mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMenuFrameView:Landroid/view/View;

.field public final mPipBackground:Landroid/view/View;

.field public final mPipFrameView:Landroid/view/View;

.field public final mPipMenuBorderWidth:I

.field public final mPipMenuFadeAnimationDuration:I

.field public final mPipMenuOuterSpace:I

.field public final mPipView:Landroid/view/View;

.field public final mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

.field public final mResizeAnimationDuration:I

.field public final mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    .line 5
    .line 6
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    const v0, 0x7f0d04eb

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMainHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    .line 24
    .line 25
    const-class p3, Landroid/view/accessibility/AccessibilityManager;

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 34
    .line 35
    const p3, 0x7f0a0c4d

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, Lcom/android/internal/widget/RecyclerView;

    .line 43
    .line 44
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 45
    .line 46
    new-instance v0, Lcom/android/internal/widget/LinearLayoutManager;

    .line 47
    .line 48
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-direct {v0, v2}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 54
    .line 55
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mTvPipActionsProvider:Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;

    .line 63
    .line 64
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 65
    .line 66
    iget-object v2, p4, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 67
    .line 68
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 72
    .line 73
    invoke-virtual {p3, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p4, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    .line 77
    .line 78
    check-cast p3, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p4

    .line 84
    if-nez p4, :cond_0

    .line 85
    .line 86
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_0
    const p3, 0x7f0a0c56

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    .line 97
    .line 98
    const p3, 0x7f0a0c4b

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    .line 106
    .line 107
    const p3, 0x7f0a0c4a

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    .line 115
    .line 116
    const p3, 0x7f0a0c52

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipBackground:Landroid/view/View;

    .line 124
    .line 125
    const p3, 0x7f0a0c53

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mDimLayer:Landroid/view/View;

    .line 133
    .line 134
    const p3, 0x7f0a0c51

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Landroid/widget/ImageView;

    .line 142
    .line 143
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 144
    .line 145
    const p4, 0x7f0a0c50

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p4

    .line 152
    check-cast p4, Landroid/widget/ImageView;

    .line 153
    .line 154
    iput-object p4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 155
    .line 156
    const v0, 0x7f0a0c4e

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/ImageView;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 166
    .line 167
    const v2, 0x7f0a0c4f

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Landroid/widget/ImageView;

    .line 175
    .line 176
    iput-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 177
    .line 178
    const v3, 0x7f0a0c54

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 186
    .line 187
    iput-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const v3, 0x7f0b002e

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    .line 201
    .line 202
    const v3, 0x7f0b0112

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    .line 210
    .line 211
    const v3, 0x7f070b04

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    .line 219
    .line 220
    const v3, 0x7f070afc

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    .line 228
    .line 229
    const v3, 0x7f070af8

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowElevation:I

    .line 237
    .line 238
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    const v3, 0x7f070af9

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    new-instance v3, Landroid/graphics/Path;

    .line 252
    .line 253
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 254
    .line 255
    .line 256
    int-to-float v4, p1

    .line 257
    const/4 v5, 0x0

    .line 258
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    .line 260
    .line 261
    div-int/lit8 p1, p1, 0x2

    .line 262
    .line 263
    int-to-float p1, p1

    .line 264
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 268
    .line 269
    .line 270
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    .line 271
    .line 272
    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 273
    .line 274
    .line 275
    new-instance v5, Landroid/graphics/drawable/shapes/PathShape;

    .line 276
    .line 277
    invoke-direct {v5, v3, v4, v4}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 281
    .line 282
    .line 283
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const v4, 0x7f060945

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    .line 297
    .line 298
    .line 299
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;

    .line 300
    .line 301
    invoke-direct {v3, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, p4, v3, p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 305
    .line 306
    .line 307
    const/16 p4, 0x5a

    .line 308
    .line 309
    invoke-virtual {p0, v0, v3, p1, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 310
    .line 311
    .line 312
    const/16 p4, 0xb4

    .line 313
    .line 314
    invoke-virtual {p0, v2, v3, p1, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 315
    .line 316
    .line 317
    const/16 p4, 0x10e

    .line 318
    .line 319
    invoke-virtual {p0, p3, v3, p1, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V

    .line 320
    .line 321
    .line 322
    new-instance p1, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 323
    .line 324
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 325
    .line 326
    invoke-direct {p1, p3, p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer$Listener;)V

    .line 327
    .line 328
    .line 329
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextDrawer:Lcom/android/wm/shell/pip/tv/TvPipMenuEduTextDrawer;

    .line 330
    .line 331
    const p2, 0x7f0a0c55

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    check-cast p2, Landroid/view/ViewGroup;

    .line 339
    .line 340
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainer:Landroid/view/ViewGroup;

    .line 341
    .line 342
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 343
    .line 344
    .line 345
    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final animateAlphaTo(Landroid/view/View;F)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    cmpl-float v0, v0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    cmpl-float v1, p2, v1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    .line 33
    .line 34
    int-to-long v1, p0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p2, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;-><init>(FILandroid/view/View;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-direct {v0, p2, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda1;-><init>(FILandroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x4

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    .line 16
    .line 17
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onExitMoveMode()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return v1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v2, 0x42

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eq v0, v2, :cond_5

    .line 50
    .line 51
    packed-switch v0, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onPipMovement(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move v1, v3

    .line 77
    :cond_4
    :goto_0
    return v1

    .line 78
    :cond_5
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    .line 79
    .line 80
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->onExitMoveMode()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move v1, v3

    .line 96
    :cond_7
    :goto_1
    return v1

    .line 97
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final hideMovementHints()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    .line 7
    const-string v1, "TvPipMenuView"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, -0x5574c8b0

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const-string v4, "%s: hideMovementHints()"

    .line 18
    .line 19
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentMenuMode:I

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final initArrow(Landroid/view/View;Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    .line 6
    .line 7
    int-to-float p2, p4

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 9
    .line 10
    .line 11
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowElevation:I

    .line 12
    .line 13
    int-to-float p0, p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onActionsChanged(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p3, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 9
    .line 10
    add-int/2addr p3, p2

    .line 11
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-gez p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mRecyclerViewAdapter:Lcom/android/wm/shell/pip/tv/TvPipMenuView$RecyclerViewAdapter;

    .line 18
    .line 19
    add-int/2addr p3, p2

    .line 20
    neg-int p1, p1

    .line 21
    invoke-virtual {p0, p3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    .line 5
    .line 6
    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "TvPipMenuController"

    .line 22
    .line 23
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "%s: onPipWindowFocusChanged - focused=%b"

    .line 28
    .line 29
    const v3, 0x107836fb

    .line 30
    .line 31
    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    invoke-static {v0, v3, v4, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMenuIsFocused:Z

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->isMenuOpen()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->closeMenu()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final refocusButton(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "TvPipMenuView"

    .line 13
    .line 14
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x4

    .line 19
    const-string v3, "%s: refocusButton, position: %d"

    .line 20
    .line 21
    const v4, 0x2154b64d

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonLayoutManager:Lcom/android/internal/widget/LinearLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final setArrowA11yEnabled(Landroid/view/View;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/view/View;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    new-instance p3, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setMenuButtonsVisible(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "TvPipMenuView"

    .line 12
    .line 13
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    const-string v3, "%s: showUserActions: %b"

    .line 20
    .line 21
    const v4, 0x7c915f4c

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final showMovementHints()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 7
    .line 8
    invoke-static {v0}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 17
    .line 18
    const-string v3, "TvPipMenuView"

    .line 19
    .line 20
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v3, 0x524dfba6

    .line 25
    .line 26
    .line 27
    const-string v4, "%s: showMovementHints(), position: %s"

    .line 28
    .line 29
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 33
    .line 34
    const/16 v2, 0x50

    .line 35
    .line 36
    and-int/2addr v0, v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v0, v2, :cond_1

    .line 39
    .line 40
    move v0, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v0, v1

    .line 43
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    move v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v4

    .line 51
    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 57
    .line 58
    const/16 v5, 0x30

    .line 59
    .line 60
    and-int/2addr v0, v5

    .line 61
    if-ne v0, v5, :cond_3

    .line 62
    .line 63
    move v0, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    move v0, v1

    .line 66
    :goto_2
    if-eqz v0, :cond_4

    .line 67
    .line 68
    move v0, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v0, v4

    .line 71
    :goto_3
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 74
    .line 75
    .line 76
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 77
    .line 78
    const/4 v5, 0x5

    .line 79
    and-int/2addr v0, v5

    .line 80
    if-ne v0, v5, :cond_5

    .line 81
    .line 82
    move v0, v3

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move v0, v1

    .line 85
    :goto_4
    if-eqz v0, :cond_6

    .line 86
    .line 87
    move v0, v2

    .line 88
    goto :goto_5

    .line 89
    :cond_6
    move v0, v4

    .line 90
    :goto_5
    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-virtual {p0, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 93
    .line 94
    .line 95
    iget v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipGravity:I

    .line 96
    .line 97
    const/4 v5, 0x3

    .line 98
    and-int/2addr v0, v5

    .line 99
    if-ne v0, v5, :cond_7

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_7
    move v3, v1

    .line 103
    :goto_6
    if-eqz v3, :cond_8

    .line 104
    .line 105
    move v0, v2

    .line 106
    goto :goto_7

    .line 107
    :cond_8
    move v0, v4

    .line 108
    :goto_7
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 109
    .line 110
    invoke-virtual {p0, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    .line 120
    .line 121
    const/16 v5, 0x13

    .line 122
    .line 123
    invoke-virtual {p0, v3, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;IZ)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    .line 127
    .line 128
    const/16 v5, 0x14

    .line 129
    .line 130
    invoke-virtual {p0, v3, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;IZ)V

    .line 131
    .line 132
    .line 133
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    .line 134
    .line 135
    const/16 v5, 0x15

    .line 136
    .line 137
    invoke-virtual {p0, v3, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;IZ)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    .line 141
    .line 142
    const/16 v5, 0x16

    .line 143
    .line 144
    invoke-virtual {p0, v3, v5, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setArrowA11yEnabled(Landroid/view/View;IZ)V

    .line 145
    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    goto :goto_8

    .line 150
    :cond_9
    move v2, v4

    .line 151
    :goto_8
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 152
    .line 153
    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(Landroid/view/View;F)V

    .line 154
    .line 155
    .line 156
    if-eqz v0, :cond_a

    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 164
    .line 165
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda2;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mA11yDoneButton:Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 179
    .line 180
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestAccessibilityFocus()Z

    .line 181
    .line 182
    .line 183
    :cond_a
    return-void
.end method
