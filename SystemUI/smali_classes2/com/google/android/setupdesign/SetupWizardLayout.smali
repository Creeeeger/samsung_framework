.class public Lcom/google/android/setupdesign/SetupWizardLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const v0, 0x7f04063a

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const p2, 0x7f04063a

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f04063a

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p1, 0x7f0a0b68

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final init(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/google/android/setupcompat/template/SystemNavBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    .line 12
    .line 13
    .line 14
    const-class v2, Lcom/google/android/setupcompat/template/SystemNavBarMixin;

    .line 15
    .line 16
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/HeaderMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 22
    .line 23
    .line 24
    const-class v2, Lcom/google/android/setupdesign/template/HeaderMixin;

    .line 25
    .line 26
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 32
    .line 33
    .line 34
    const-class v2, Lcom/google/android/setupdesign/template/DescriptionMixin;

    .line 35
    .line 36
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 42
    .line 43
    .line 44
    const-class v2, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 45
    .line 46
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/template/NavigationBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 52
    .line 53
    .line 54
    const-class v2, Lcom/google/android/setupdesign/template/NavigationBarMixin;

    .line 55
    .line 56
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    .line 62
    .line 63
    .line 64
    const-class v2, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 65
    .line 66
    invoke-virtual {p0, v2, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 67
    .line 68
    .line 69
    const v2, 0x7f0a0b56

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    instance-of v3, v2, Landroid/widget/ScrollView;

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    move-object v1, v2

    .line 81
    check-cast v1, Landroid/widget/ScrollView;

    .line 82
    .line 83
    :cond_1
    if-eqz v1, :cond_2

    .line 84
    .line 85
    new-instance v2, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;

    .line 86
    .line 87
    invoke-direct {v2, v0, v1}, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSetupWizardLayout:[I

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const v0, 0x7f0a0b69

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-eqz p2, :cond_5

    .line 126
    .line 127
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 128
    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    move-object v2, p2

    .line 132
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 133
    .line 134
    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 135
    .line 136
    invoke-virtual {v2, v3, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    invoke-virtual {v2, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_0
    const/4 p2, 0x3

    .line 149
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-eqz p2, :cond_7

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    instance-of v3, v2, Lcom/google/android/setupdesign/view/Illustration;

    .line 160
    .line 161
    if-eqz v3, :cond_c

    .line 162
    .line 163
    check-cast v2, Lcom/google/android/setupdesign/view/Illustration;

    .line 164
    .line 165
    iget-object v3, v2, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    if-ne p2, v3, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    iput-object p2, v2, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_7
    const/4 p2, 0x6

    .line 180
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    const/4 v2, 0x5

    .line 185
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz p2, :cond_c

    .line 190
    .line 191
    if-eqz v2, :cond_c

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    instance-of v4, v3, Lcom/google/android/setupdesign/view/Illustration;

    .line 198
    .line 199
    if-eqz v4, :cond_c

    .line 200
    .line 201
    check-cast v3, Lcom/google/android/setupdesign/view/Illustration;

    .line 202
    .line 203
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    const v5, 0x7f05007a

    .line 212
    .line 213
    .line 214
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    if-eqz v4, :cond_a

    .line 219
    .line 220
    instance-of v4, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 221
    .line 222
    if-eqz v4, :cond_8

    .line 223
    .line 224
    move-object v4, v2

    .line 225
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 226
    .line 227
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 230
    .line 231
    .line 232
    const/16 v5, 0x30

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 235
    .line 236
    .line 237
    :cond_8
    instance-of v4, p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 238
    .line 239
    if-eqz v4, :cond_9

    .line 240
    .line 241
    move-object v4, p2

    .line 242
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 243
    .line 244
    const/16 v5, 0x33

    .line 245
    .line 246
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 247
    .line 248
    .line 249
    :cond_9
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    .line 250
    .line 251
    filled-new-array {v2, p2}, [Landroid/graphics/drawable/Drawable;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-direct {v4, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    .line 259
    .line 260
    .line 261
    move-object p2, v4

    .line 262
    goto :goto_1

    .line 263
    :cond_a
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 264
    .line 265
    .line 266
    :goto_1
    iget-object v2, v3, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    .line 267
    .line 268
    if-ne p2, v2, :cond_b

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_b
    iput-object p2, v3, Lcom/google/android/setupdesign/view/Illustration;->illustration:Landroid/graphics/drawable/Drawable;

    .line 272
    .line 273
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 277
    .line 278
    .line 279
    :cond_c
    :goto_2
    const/4 p2, 0x2

    .line 280
    const/4 v2, -0x1

    .line 281
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 282
    .line 283
    .line 284
    move-result p2

    .line 285
    if-ne p2, v2, :cond_d

    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    const v2, 0x7f07141f

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    if-eqz v2, :cond_e

    .line 303
    .line 304
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 317
    .line 318
    .line 319
    :cond_e
    const/4 p2, 0x4

    .line 320
    const/high16 v2, -0x40800000    # -1.0f

    .line 321
    .line 322
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    cmpl-float v2, p2, v2

    .line 327
    .line 328
    if-nez v2, :cond_f

    .line 329
    .line 330
    new-instance p2, Landroid/util/TypedValue;

    .line 331
    .line 332
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    const v3, 0x7f071476

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v3, p2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    :cond_f
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    instance-of v0, p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 354
    .line 355
    if-eqz v0, :cond_10

    .line 356
    .line 357
    check-cast p0, Lcom/google/android/setupdesign/view/Illustration;

    .line 358
    .line 359
    iput p2, p0, Lcom/google/android/setupdesign/view/Illustration;->aspectRatio:F

    .line 360
    .line 361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 365
    .line 366
    .line 367
    :cond_10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method public onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const p2, 0x7f0d04d0

    .line 4
    .line 5
    .line 6
    :cond_0
    const v0, 0x7f140366

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Ignoring restore instance state "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "SetupWizardLayout"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    check-cast p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 35
    .line 36
    .line 37
    iget-boolean p1, p1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 38
    .line 39
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    const-class v0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const v0, 0x7f0a0b5b

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const v0, 0x7f0a0b71

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_1
    iput-boolean p0, v1, Lcom/google/android/setupdesign/SetupWizardLayout$SavedState;->isProgressBarShown:Z

    .line 47
    .line 48
    return-object v1
.end method
