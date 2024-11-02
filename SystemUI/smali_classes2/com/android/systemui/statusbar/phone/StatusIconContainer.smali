.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

.field public static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

.field public static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;


# instance fields
.field public mCutoutRightSideAvailableWidth:I

.field public mCutoutRightSideIconsWidth:I

.field public mDeltaWidth:F

.field public mIconSpacing:I

.field public final mIgnoredSlots:Ljava/util/ArrayList;

.field public mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mLayoutStates:Ljava/util/ArrayList;

.field public final mMeasureViews:Ljava/util/ArrayList;

.field public mNeedsUnderflow:Z

.field public mShouldRestrictIcons:Z

.field public mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xc8

    .line 7
    .line 8
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 9
    .line 10
    const-wide/16 v3, 0x32

    .line 11
    .line 12
    iput-wide v3, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    .line 13
    .line 14
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 22
    .line 23
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    .line 24
    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 31
    .line 32
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1050505

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a74

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071261

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070a73

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    add-int/2addr p0, v1

    .line 15
    return p0
.end method


# virtual methods
.method public final addIgnoredSlot(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    .line 8
    div-float/2addr p1, p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-ge p4, p5, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v2, v1

    .line 30
    div-float/2addr v2, p2

    .line 31
    sub-float v2, p1, v2

    .line 32
    .line 33
    float-to-int v2, v2

    .line 34
    add-int/2addr v1, v2

    .line 35
    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 p4, p4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p1, p3

    .line 42
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    const p4, 0x7f0a0ad8

    .line 47
    .line 48
    .line 49
    if-ge p1, p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 60
    .line 61
    if-nez p4, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    const/high16 p2, 0x3f800000    # 1.0f

    .line 68
    .line 69
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setAlpha(F)V

    .line 70
    .line 71
    .line 72
    iput-boolean p3, p4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 73
    .line 74
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    int-to-float p1, p1

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    int-to-float p2, p2

    .line 92
    sub-float p2, p1, p2

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 98
    .line 99
    .line 100
    move-result p5

    .line 101
    add-int/lit8 v0, p5, -0x1

    .line 102
    .line 103
    move v1, p3

    .line 104
    :goto_3
    if-ltz v0, :cond_6

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v3, v2

    .line 111
    check-cast v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 112
    .line 113
    invoke-virtual {v2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 118
    .line 119
    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    const/4 v6, 0x2

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-nez v5, :cond_5

    .line 131
    .line 132
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-interface {v3}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    add-int/2addr v5, v3

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    add-int/2addr v3, v5

    .line 159
    int-to-float v3, v3

    .line 160
    sub-float/2addr p2, v3

    .line 161
    iput p3, v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 162
    .line 163
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 164
    .line 165
    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v3, p3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    sget-boolean v3, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 172
    .line 173
    if-eqz v3, :cond_4

    .line 174
    .line 175
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 176
    .line 177
    if-eqz v3, :cond_4

    .line 178
    .line 179
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    .line 180
    .line 181
    if-eqz v5, :cond_4

    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    if-eqz v3, :cond_4

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    sub-int/2addr v5, v7

    .line 198
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    .line 199
    .line 200
    sub-int/2addr v5, v7

    .line 201
    int-to-float v5, v5

    .line 202
    iget v7, v4, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 203
    .line 204
    sub-float/2addr v5, v7

    .line 205
    const/4 v7, 0x0

    .line 206
    cmpl-float v7, v5, v7

    .line 207
    .line 208
    if-lez v7, :cond_4

    .line 209
    .line 210
    if-nez v1, :cond_4

    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const v7, 0x7f0703e8

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    mul-int/2addr v1, v6

    .line 228
    add-int/2addr v1, v3

    .line 229
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    add-int/2addr v6, v3

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    add-int/2addr v2, v6

    .line 243
    add-int/2addr v2, v1

    .line 244
    int-to-float v1, v2

    .line 245
    sub-float/2addr v1, v5

    .line 246
    sub-float/2addr p2, v1

    .line 247
    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 248
    .line 249
    .line 250
    const/4 v1, 0x1

    .line 251
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 252
    .line 253
    int-to-float v2, v2

    .line 254
    sub-float/2addr p2, v2

    .line 255
    goto :goto_5

    .line 256
    :cond_5
    :goto_4
    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    .line 257
    .line 258
    :goto_5
    add-int/lit8 v0, v0, -0x1

    .line 259
    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :cond_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    if-eqz p2, :cond_7

    .line 267
    .line 268
    move p2, p3

    .line 269
    :goto_6
    if-ge p2, p5, :cond_7

    .line 270
    .line 271
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 280
    .line 281
    iget v2, v1, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mXTranslation:F

    .line 282
    .line 283
    sub-float v2, p1, v2

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    int-to-float v0, v0

    .line 290
    sub-float/2addr v2, v0

    .line 291
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->setXTranslation(F)V

    .line 292
    .line 293
    .line 294
    add-int/lit8 p2, p2, 0x1

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_7
    :goto_7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-ge p3, p1, :cond_9

    .line 302
    .line 303
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 312
    .line 313
    if-eqz p2, :cond_8

    .line 314
    .line 315
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    :cond_8
    add-int/lit8 p3, p3, 0x1

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    .line 27
    .line 28
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 53
    .line 54
    check-cast v4, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/16 v3, 0x14

    .line 69
    .line 70
    if-gt v1, v3, :cond_2

    .line 71
    .line 72
    move v4, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/16 v4, 0x13

    .line 75
    .line 76
    :goto_1
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 77
    .line 78
    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    .line 79
    .line 80
    add-int/2addr v5, v6

    .line 81
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 86
    .line 87
    const/4 v8, 0x1

    .line 88
    if-eqz v7, :cond_3

    .line 89
    .line 90
    if-le v1, v3, :cond_3

    .line 91
    .line 92
    move v3, v8

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v3, v2

    .line 95
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 96
    .line 97
    move v7, v2

    .line 98
    move v3, v5

    .line 99
    move v9, v8

    .line 100
    :goto_3
    if-ge v7, v1, :cond_9

    .line 101
    .line 102
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 103
    .line 104
    sub-int v11, v1, v7

    .line 105
    .line 106
    sub-int/2addr v11, v8

    .line 107
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Landroid/view/View;

    .line 112
    .line 113
    invoke-virtual {p0, v10, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v11, v1, -0x1

    .line 117
    .line 118
    if-ne v7, v11, :cond_4

    .line 119
    .line 120
    move v11, v2

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    iget v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 123
    .line 124
    :goto_4
    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 125
    .line 126
    if-eqz v12, :cond_6

    .line 127
    .line 128
    if-ge v7, v4, :cond_5

    .line 129
    .line 130
    if-eqz v9, :cond_5

    .line 131
    .line 132
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    add-int/2addr v10, v11

    .line 137
    add-int/2addr v10, v5

    .line 138
    if-gt v10, p1, :cond_7

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_5
    if-eqz v9, :cond_8

    .line 142
    .line 143
    add-int/lit8 v5, v5, 0x0

    .line 144
    .line 145
    move v9, v2

    .line 146
    if-gt v5, p1, :cond_8

    .line 147
    .line 148
    move v3, v5

    .line 149
    goto :goto_6

    .line 150
    :cond_6
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    add-int/2addr v10, v11

    .line 155
    add-int/2addr v10, v5

    .line 156
    if-gt v10, p1, :cond_7

    .line 157
    .line 158
    :goto_5
    move v3, v10

    .line 159
    move v5, v3

    .line 160
    goto :goto_6

    .line 161
    :cond_7
    move v5, v10

    .line 162
    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_9
    sget-boolean v4, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 166
    .line 167
    if-eqz v4, :cond_e

    .line 168
    .line 169
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 170
    .line 171
    if-eqz v4, :cond_e

    .line 172
    .line 173
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    .line 174
    .line 175
    if-eqz v6, :cond_e

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-eqz v4, :cond_e

    .line 182
    .line 183
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    .line 184
    .line 185
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    .line 186
    .line 187
    if-eqz v6, :cond_a

    .line 188
    .line 189
    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;->getRightSideAvailableWidth(Landroid/graphics/Rect;)I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    goto :goto_7

    .line 194
    :cond_a
    move v6, v2

    .line 195
    :goto_7
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    .line 196
    .line 197
    move v6, v2

    .line 198
    :goto_8
    if-ge v6, v1, :cond_d

    .line 199
    .line 200
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    .line 201
    .line 202
    sub-int v9, v1, v6

    .line 203
    .line 204
    add-int/lit8 v9, v9, -0x1

    .line 205
    .line 206
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    check-cast v7, Landroid/view/View;

    .line 211
    .line 212
    add-int/lit8 v9, v1, -0x1

    .line 213
    .line 214
    if-ne v6, v9, :cond_b

    .line 215
    .line 216
    move v9, v2

    .line 217
    goto :goto_9

    .line 218
    :cond_b
    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconSpacing:I

    .line 219
    .line 220
    :goto_9
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    .line 221
    .line 222
    if-eqz v10, :cond_c

    .line 223
    .line 224
    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    .line 225
    .line 226
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    add-int/2addr v11, v9

    .line 231
    add-int/2addr v11, v10

    .line 232
    iput v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    .line 233
    .line 234
    iget v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    .line 235
    .line 236
    sub-int/2addr v11, v9

    .line 237
    if-lez v11, :cond_c

    .line 238
    .line 239
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    iget v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideIconsWidth:I

    .line 244
    .line 245
    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mCutoutRightSideAvailableWidth:I

    .line 246
    .line 247
    sub-int/2addr v6, v7

    .line 248
    sub-int/2addr v1, v6

    .line 249
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    const v7, 0x7f0703e8

    .line 254
    .line 255
    .line 256
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    mul-int/lit8 v6, v6, 0x2

    .line 265
    .line 266
    add-int/2addr v6, v4

    .line 267
    add-int/2addr v6, v1

    .line 268
    goto :goto_a

    .line 269
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_d
    move v6, v2

    .line 273
    :goto_a
    int-to-float v1, v6

    .line 274
    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDeltaWidth:F

    .line 275
    .line 276
    int-to-float v3, v3

    .line 277
    add-float/2addr v3, v1

    .line 278
    float-to-int v3, v3

    .line 279
    int-to-float p1, p1

    .line 280
    add-float/2addr p1, v1

    .line 281
    float-to-int p1, p1

    .line 282
    int-to-float v4, v5

    .line 283
    add-float/2addr v4, v1

    .line 284
    float-to-int v5, v4

    .line 285
    :cond_e
    iget v1, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 286
    .line 287
    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    .line 288
    .line 289
    add-int/2addr v1, v4

    .line 290
    if-gt v3, v1, :cond_f

    .line 291
    .line 292
    goto :goto_b

    .line 293
    :cond_f
    if-ltz v3, :cond_10

    .line 294
    .line 295
    if-ge v3, p1, :cond_10

    .line 296
    .line 297
    move v2, v3

    .line 298
    goto :goto_b

    .line 299
    :cond_10
    move v2, p1

    .line 300
    :goto_b
    const/high16 p1, 0x40000000    # 2.0f

    .line 301
    .line 302
    if-ne v0, p1, :cond_12

    .line 303
    .line 304
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 305
    .line 306
    if-nez p1, :cond_11

    .line 307
    .line 308
    if-le v5, v2, :cond_11

    .line 309
    .line 310
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 311
    .line 312
    :cond_11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    invoke-virtual {p0, v2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 317
    .line 318
    .line 319
    goto :goto_c

    .line 320
    :cond_12
    const/high16 p1, -0x80000000

    .line 321
    .line 322
    if-ne v0, p1, :cond_13

    .line 323
    .line 324
    if-le v5, v2, :cond_13

    .line 325
    .line 326
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    .line 327
    .line 328
    move v5, v2

    .line 329
    :cond_13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    invoke-virtual {p0, v5, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 334
    .line 335
    .line 336
    :goto_c
    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 11
    .line 12
    const v0, 0x7f0a0ad8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0a0ad8

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final removeIgnoredSlot(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
