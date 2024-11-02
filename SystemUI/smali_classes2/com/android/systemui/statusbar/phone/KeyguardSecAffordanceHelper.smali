.class public final Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final callback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

.field public final context:Landroid/content/Context;

.field public isShortcutPreviewSwipingInProgress:Z

.field public mBlurPanelView:Landroid/widget/FrameLayout;

.field public mIndicationArea:Landroid/widget/LinearLayout;

.field public mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public mMotionCancelled:Z

.field public mPreviewAnimationStarted:Z

.field public mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

.field public mTouchTargetHeight:I

.field public mTouchTargetWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->callback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x7f0d015f

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, -0x1

    .line 33
    const/16 v5, 0x96f

    .line 34
    .line 35
    const/16 v6, 0x538

    .line 36
    .line 37
    const/4 v7, -0x3

    .line 38
    move-object v2, p1

    .line 39
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 40
    .line 41
    .line 42
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    .line 44
    const/high16 v2, 0x1000000

    .line 45
    .line 46
    or-int/2addr v0, v2

    .line 47
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 48
    .line 49
    const/16 v0, 0x30

    .line 50
    .line 51
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 52
    .line 53
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x10

    .line 56
    .line 57
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 65
    .line 66
    const-string v2, "LockscreenShortcutBlur"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 76
    .line 77
    const-string/jumbo v2, "window"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Landroid/view/WindowManager;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    .line 87
    .line 88
    invoke-interface {p2, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    const/4 p2, 0x1

    .line 96
    if-ne p1, p2, :cond_0

    .line 97
    .line 98
    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    .line 99
    .line 100
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 107
    .line 108
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->leftView$delegate:Lkotlin/Lazy;

    .line 116
    .line 117
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 122
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 124
    .line 125
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 130
    .line 131
    :goto_0
    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->indicationArea$delegate:Lkotlin/Lazy;

    .line 132
    .line 133
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/view/ViewGroup;

    .line 138
    .line 139
    check-cast p1, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    iget-object p1, p3, Lcom/android/systemui/statusbar/phone/KeyguardSecBottomAreaView;->indicationText$delegate:Lkotlin/Lazy;

    .line 144
    .line 145
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Landroid/widget/TextView;

    .line 150
    .line 151
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 156
    .line 157
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 158
    .line 159
    filled-new-array {p1, p3}, [Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    new-instance p3, Ljava/util/ArrayList;

    .line 168
    .line 169
    const/16 v2, 0xa

    .line 170
    .line 171
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_4

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 193
    .line 194
    if-eqz v2, :cond_1

    .line 195
    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->callback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 197
    .line 198
    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper$Callback;

    .line 199
    .line 200
    :cond_1
    if-eqz v2, :cond_3

    .line 201
    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mBlurPanelView:Landroid/widget/FrameLayout;

    .line 203
    .line 204
    if-eqz v3, :cond_2

    .line 205
    .line 206
    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelRoot:Landroid/widget/FrameLayout;

    .line 207
    .line 208
    const v4, 0x7f0a07bf

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    iput-object v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackground:Landroid/view/View;

    .line 216
    .line 217
    const v4, 0x7f0a07c0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    iput-object v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    .line 225
    .line 226
    invoke-virtual {v4, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 227
    .line 228
    .line 229
    const v4, 0x7f0a07c3

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    iput-object v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelDimView:Landroid/view/View;

    .line 237
    .line 238
    const v4, 0x7f0a07c4

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Landroid/widget/ImageView;

    .line 246
    .line 247
    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelIcon:Landroid/widget/ImageView;

    .line 248
    .line 249
    new-instance v3, Landroid/graphics/drawable/PaintDrawable;

    .line 250
    .line 251
    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleColor:I

    .line 252
    .line 253
    invoke-direct {v3, v4}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 254
    .line 255
    .line 256
    iput-object v3, v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mPanelBackgroundDrawable:Landroid/graphics/drawable/PaintDrawable;

    .line 257
    .line 258
    const/high16 v2, 0x42c80000    # 100.0f

    .line 259
    .line 260
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    .line 261
    .line 262
    .line 263
    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_3
    move-object v2, v1

    .line 267
    :goto_2
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 272
    .line 273
    const/high16 p3, 0x3f800000    # 1.0f

    .line 274
    .line 275
    invoke-static {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 279
    .line 280
    invoke-static {p1, p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->initDimens()V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public static updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageScale(FZ)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final endMotion()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShortcutLaunching:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNoUnlockNeeded:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->isSecure()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v0, v2

    .line 34
    :goto_0
    if-nez v0, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->startPreviewAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    .line 46
    .line 47
    :goto_1
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 49
    .line 50
    return-void
.end method

.method public final initDimens()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f070402

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetWidth:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v1, 0x7f070400

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetHeight:I

    .line 28
    .line 29
    return-void
.end method

.method public final isOnIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FF)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    int-to-float v2, v2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    int-to-float v3, v3

    .line 16
    const/high16 v4, 0x40000000    # 2.0f

    .line 17
    .line 18
    div-float/2addr v3, v4

    .line 19
    add-float/2addr v3, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    aget v0, v0, v2

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-float p1, p1

    .line 29
    div-float/2addr p1, v4

    .line 30
    add-float/2addr p1, v0

    .line 31
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetHeight:I

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    div-float/2addr v0, v4

    .line 35
    sub-float v5, p1, v0

    .line 36
    .line 37
    add-float/2addr v0, p1

    .line 38
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTouchTargetWidth:I

    .line 39
    .line 40
    int-to-float p0, p0

    .line 41
    div-float/2addr p0, v4

    .line 42
    sub-float p1, v3, p0

    .line 43
    .line 44
    add-float/2addr p0, v3

    .line 45
    cmpg-float p1, p1, p2

    .line 46
    .line 47
    if-gtz p1, :cond_0

    .line 48
    .line 49
    cmpg-float p0, p2, p0

    .line 50
    .line 51
    if-gtz p0, :cond_0

    .line 52
    .line 53
    move p0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move p0, v1

    .line 56
    :goto_0
    if-eqz p0, :cond_2

    .line 57
    .line 58
    cmpg-float p0, v5, p3

    .line 59
    .line 60
    if-gtz p0, :cond_1

    .line 61
    .line 62
    cmpg-float p0, p3, v0

    .line 63
    .line 64
    if-gtz p0, :cond_1

    .line 65
    .line 66
    move p0, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move p0, v1

    .line 69
    :goto_1
    if-eqz p0, :cond_2

    .line 70
    .line 71
    move v1, v2

    .line 72
    :cond_2
    return v1
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    .line 3
    .line 4
    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setShortcutLaunchInProgress(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 16
    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-static {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 23
    .line 24
    invoke-static {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;FZZ)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mMotionCancelled:Z

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 50
    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final startPreviewAnimation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V
    .locals 3

    .line 1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mPreviewAnimationStarted:Z

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "startPreviewAnimation() show = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", target = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "KeyguardSecAffordanceHelper"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const-wide/16 v1, 0xc8

    .line 48
    .line 49
    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    if-ne p1, p2, :cond_1

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    .line 76
    .line 77
    if-ne p1, p0, :cond_2

    .line 78
    .line 79
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setImageAlpha(FZ)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    return-void
.end method
