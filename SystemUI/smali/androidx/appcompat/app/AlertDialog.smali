.class public Landroidx/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final mAlert:Landroidx/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    invoke-static {p2, p1}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(ILandroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance p1, Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Landroidx/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object p1, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static resolveDialogTheme(ILandroid/content/Context;)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Landroid/util/TypedValue;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v0, 0x7f040032

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    return p0
.end method


# virtual methods
.method public final getButton(I)Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    const/4 v0, -0x3

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, -0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 24
    .line 25
    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22

    .line 1
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    move-object/from16 v0, p0

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 7
    .line 8
    iget v1, v0, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 11
    .line 12
    iget v2, v0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 18
    .line 19
    const v2, 0x7f0a07c8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Landroidx/appcompat/app/AlertController$2;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Landroidx/appcompat/app/AlertController$2;-><init>(Landroidx/appcompat/app/AlertController;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 32
    .line 33
    .line 34
    const v3, 0x7f0a0bf9

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const v5, 0x7f0a0298

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const v7, 0x7f0a01f3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const v9, 0x7f0a02e1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    check-cast v9, Landroid/view/ViewGroup;

    .line 63
    .line 64
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    iget-object v13, v0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    if-eqz v10, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget v10, v0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 73
    .line 74
    if-eqz v10, :cond_1

    .line 75
    .line 76
    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    iget v14, v0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 81
    .line 82
    invoke-virtual {v10, v14, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v10, 0x0

    .line 88
    :goto_0
    if-eqz v10, :cond_2

    .line 89
    .line 90
    const/4 v15, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move v15, v12

    .line 93
    :goto_1
    if-eqz v15, :cond_3

    .line 94
    .line 95
    invoke-static {v10}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-nez v16, :cond_4

    .line 100
    .line 101
    :cond_3
    const/high16 v11, 0x20000

    .line 102
    .line 103
    invoke-virtual {v1, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 104
    .line 105
    .line 106
    :cond_4
    const/4 v11, -0x1

    .line 107
    const/16 v14, 0x8

    .line 108
    .line 109
    if-eqz v15, :cond_7

    .line 110
    .line 111
    const v15, 0x7f0a02dd

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    check-cast v15, Landroid/widget/FrameLayout;

    .line 119
    .line 120
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .line 122
    invoke-direct {v7, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v15, v10, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    iget-boolean v7, v0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 129
    .line 130
    if-eqz v7, :cond_5

    .line 131
    .line 132
    invoke-virtual {v15, v12, v12, v12, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 133
    .line 134
    .line 135
    :cond_5
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 136
    .line 137
    if-eqz v7, :cond_8

    .line 138
    .line 139
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    instance-of v7, v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .line 145
    const/4 v10, 0x0

    .line 146
    if-eqz v7, :cond_6

    .line 147
    .line 148
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .line 154
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 162
    .line 163
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :cond_8
    :goto_2
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const v7, 0x7f0a01f3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-static {v3, v4}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-static {v5, v6}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v7, v8}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    if-ne v7, v8, :cond_9

    .line 197
    .line 198
    new-instance v8, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    .line 199
    .line 200
    invoke-direct {v8, v0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertController;)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_9
    const/4 v8, 0x0

    .line 205
    :goto_3
    iput-object v8, v0, Landroidx/appcompat/app/AlertController;->mDefaultButtonPanelJob:Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    .line 206
    .line 207
    const v8, 0x7f0a094d

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    check-cast v8, Landroidx/core/widget/NestedScrollView;

    .line 215
    .line 216
    iput-object v8, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 217
    .line 218
    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 219
    .line 220
    .line 221
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 222
    .line 223
    invoke-virtual {v8, v12}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 224
    .line 225
    .line 226
    const v8, 0x102000b

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    check-cast v8, Landroid/widget/TextView;

    .line 234
    .line 235
    iput-object v8, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 236
    .line 237
    if-nez v8, :cond_a

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_a
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 241
    .line 242
    if-eqz v10, :cond_b

    .line 243
    .line 244
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 248
    .line 249
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    const v15, 0x7f071016

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    .line 258
    .line 259
    move-result v10

    .line 260
    invoke-virtual {v0, v10, v8}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_b
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 268
    .line 269
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 275
    .line 276
    if-eqz v8, :cond_c

    .line 277
    .line 278
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 279
    .line 280
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    check-cast v8, Landroid/view/ViewGroup;

    .line 285
    .line 286
    iget-object v10, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 287
    .line 288
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 293
    .line 294
    .line 295
    iget-object v15, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 296
    .line 297
    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    .line 298
    .line 299
    invoke-direct {v12, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v15, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_c
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    :goto_4
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    if-eqz v8, :cond_d

    .line 314
    .line 315
    const-string/jumbo v10, "show_button_background"

    .line 316
    .line 317
    .line 318
    const/4 v12, 0x0

    .line 319
    invoke-static {v8, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    const/4 v10, 0x1

    .line 324
    if-ne v8, v10, :cond_e

    .line 325
    .line 326
    move v8, v10

    .line 327
    goto :goto_5

    .line 328
    :cond_d
    const/4 v10, 0x1

    .line 329
    :cond_e
    const/4 v8, 0x0

    .line 330
    :goto_5
    new-instance v12, Landroid/util/TypedValue;

    .line 331
    .line 332
    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    const v11, 0x1010031

    .line 340
    .line 341
    .line 342
    invoke-virtual {v15, v11, v12, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 343
    .line 344
    .line 345
    iget v10, v12, Landroid/util/TypedValue;->resourceId:I

    .line 346
    .line 347
    if-lez v10, :cond_f

    .line 348
    .line 349
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    iget v11, v12, Landroid/util/TypedValue;->resourceId:I

    .line 354
    .line 355
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    .line 356
    .line 357
    .line 358
    move-result v10

    .line 359
    goto :goto_6

    .line 360
    :cond_f
    const/4 v10, -0x1

    .line 361
    :goto_6
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 362
    .line 363
    .line 364
    move-result-object v11

    .line 365
    const-string v15, "current_sec_active_themepackage"

    .line 366
    .line 367
    invoke-static {v11, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v11

    .line 371
    if-eqz v11, :cond_10

    .line 372
    .line 373
    const/4 v11, 0x1

    .line 374
    goto :goto_7

    .line 375
    :cond_10
    const/4 v11, 0x0

    .line 376
    :goto_7
    new-instance v15, Landroid/util/TypedValue;

    .line 377
    .line 378
    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 382
    .line 383
    .line 384
    move-result-object v14

    .line 385
    move-object/from16 v17, v5

    .line 386
    .line 387
    const v5, 0x7f040133

    .line 388
    .line 389
    .line 390
    move-object/from16 v18, v2

    .line 391
    .line 392
    const/4 v2, 0x1

    .line 393
    invoke-virtual {v14, v5, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 394
    .line 395
    .line 396
    iget v2, v15, Landroid/util/TypedValue;->resourceId:I

    .line 397
    .line 398
    if-eqz v2, :cond_11

    .line 399
    .line 400
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    iget v5, v15, Landroid/util/TypedValue;->resourceId:I

    .line 405
    .line 406
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    goto :goto_8

    .line 411
    :cond_11
    iget v2, v15, Landroid/util/TypedValue;->data:I

    .line 412
    .line 413
    :goto_8
    const v5, 0x1020019

    .line 414
    .line 415
    .line 416
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    check-cast v5, Landroid/widget/Button;

    .line 421
    .line 422
    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 423
    .line 424
    iget-object v14, v0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroidx/appcompat/app/AlertController$1;

    .line 425
    .line 426
    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    .line 428
    .line 429
    if-eqz v11, :cond_12

    .line 430
    .line 431
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 432
    .line 433
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 434
    .line 435
    .line 436
    :cond_12
    iget v5, v12, Landroid/util/TypedValue;->resourceId:I

    .line 437
    .line 438
    if-lez v5, :cond_13

    .line 439
    .line 440
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 441
    .line 442
    invoke-static {v10, v5, v8}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(ILandroid/widget/TextView;Z)V

    .line 443
    .line 444
    .line 445
    goto :goto_9

    .line 446
    :cond_13
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 447
    .line 448
    invoke-static {v5, v8}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    .line 449
    .line 450
    .line 451
    :goto_9
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 452
    .line 453
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    iget v15, v0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 458
    .line 459
    if-eqz v5, :cond_14

    .line 460
    .line 461
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 462
    .line 463
    if-nez v5, :cond_14

    .line 464
    .line 465
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 466
    .line 467
    move-object/from16 v19, v6

    .line 468
    .line 469
    const/16 v6, 0x8

    .line 470
    .line 471
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 472
    .line 473
    .line 474
    move-object/from16 v20, v4

    .line 475
    .line 476
    const/4 v4, 0x0

    .line 477
    goto :goto_b

    .line 478
    :cond_14
    move-object/from16 v19, v6

    .line 479
    .line 480
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 481
    .line 482
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 483
    .line 484
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    .line 489
    if-eqz v5, :cond_15

    .line 490
    .line 491
    const/4 v6, 0x0

    .line 492
    invoke-virtual {v5, v6, v6, v15, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 493
    .line 494
    .line 495
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 496
    .line 497
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 498
    .line 499
    move-object/from16 v20, v4

    .line 500
    .line 501
    const/4 v4, 0x0

    .line 502
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 503
    .line 504
    .line 505
    goto :goto_a

    .line 506
    :cond_15
    move-object/from16 v20, v4

    .line 507
    .line 508
    :goto_a
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 509
    .line 510
    const/4 v5, 0x0

    .line 511
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 512
    .line 513
    .line 514
    const/4 v4, 0x1

    .line 515
    :goto_b
    const v5, 0x102001a

    .line 516
    .line 517
    .line 518
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    check-cast v5, Landroid/widget/Button;

    .line 523
    .line 524
    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 525
    .line 526
    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    .line 528
    .line 529
    if-eqz v11, :cond_16

    .line 530
    .line 531
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 532
    .line 533
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 534
    .line 535
    .line 536
    :cond_16
    iget v5, v12, Landroid/util/TypedValue;->resourceId:I

    .line 537
    .line 538
    if-lez v5, :cond_17

    .line 539
    .line 540
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 541
    .line 542
    invoke-static {v10, v5, v8}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(ILandroid/widget/TextView;Z)V

    .line 543
    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_17
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 547
    .line 548
    invoke-static {v5, v8}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    .line 549
    .line 550
    .line 551
    :goto_c
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 552
    .line 553
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    if-eqz v5, :cond_18

    .line 558
    .line 559
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 560
    .line 561
    if-nez v5, :cond_18

    .line 562
    .line 563
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 564
    .line 565
    const/16 v6, 0x8

    .line 566
    .line 567
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    move-object/from16 v21, v9

    .line 571
    .line 572
    goto :goto_e

    .line 573
    :cond_18
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 574
    .line 575
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 576
    .line 577
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 578
    .line 579
    .line 580
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 581
    .line 582
    if-eqz v5, :cond_19

    .line 583
    .line 584
    const/4 v6, 0x0

    .line 585
    invoke-virtual {v5, v6, v6, v15, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 586
    .line 587
    .line 588
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 589
    .line 590
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 591
    .line 592
    move-object/from16 v21, v9

    .line 593
    .line 594
    const/4 v9, 0x0

    .line 595
    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 596
    .line 597
    .line 598
    goto :goto_d

    .line 599
    :cond_19
    move-object/from16 v21, v9

    .line 600
    .line 601
    :goto_d
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 602
    .line 603
    const/4 v6, 0x0

    .line 604
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    .line 606
    .line 607
    or-int/lit8 v4, v4, 0x2

    .line 608
    .line 609
    :goto_e
    const v5, 0x102001b

    .line 610
    .line 611
    .line 612
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    check-cast v5, Landroid/widget/Button;

    .line 617
    .line 618
    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 619
    .line 620
    invoke-virtual {v5, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    .line 622
    .line 623
    if-eqz v11, :cond_1a

    .line 624
    .line 625
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 626
    .line 627
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 628
    .line 629
    .line 630
    :cond_1a
    iget v2, v12, Landroid/util/TypedValue;->resourceId:I

    .line 631
    .line 632
    if-lez v2, :cond_1b

    .line 633
    .line 634
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 635
    .line 636
    invoke-static {v10, v2, v8}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(ILandroid/widget/TextView;Z)V

    .line 637
    .line 638
    .line 639
    goto :goto_f

    .line 640
    :cond_1b
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 641
    .line 642
    invoke-static {v2, v8}, Landroidx/reflect/widget/SeslTextViewReflector;->semSetButtonShapeEnabled(Landroid/widget/TextView;Z)V

    .line 643
    .line 644
    .line 645
    :goto_f
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 646
    .line 647
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 648
    .line 649
    .line 650
    move-result v2

    .line 651
    if-eqz v2, :cond_1c

    .line 652
    .line 653
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 654
    .line 655
    if-nez v2, :cond_1c

    .line 656
    .line 657
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 658
    .line 659
    const/16 v5, 0x8

    .line 660
    .line 661
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 662
    .line 663
    .line 664
    goto :goto_10

    .line 665
    :cond_1c
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 666
    .line 667
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 668
    .line 669
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 670
    .line 671
    .line 672
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 673
    .line 674
    const/4 v5, 0x0

    .line 675
    if-eqz v2, :cond_1d

    .line 676
    .line 677
    invoke-virtual {v2, v5, v5, v15, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 678
    .line 679
    .line 680
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 681
    .line 682
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 683
    .line 684
    const/4 v8, 0x0

    .line 685
    invoke-virtual {v2, v6, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 686
    .line 687
    .line 688
    :cond_1d
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 689
    .line 690
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 691
    .line 692
    .line 693
    or-int/lit8 v4, v4, 0x4

    .line 694
    .line 695
    :goto_10
    new-instance v2, Landroid/util/TypedValue;

    .line 696
    .line 697
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v13}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    const v6, 0x7f040030

    .line 705
    .line 706
    .line 707
    const/4 v8, 0x1

    .line 708
    invoke-virtual {v5, v6, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 709
    .line 710
    .line 711
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 712
    .line 713
    if-eqz v2, :cond_1e

    .line 714
    .line 715
    move v2, v8

    .line 716
    goto :goto_11

    .line 717
    :cond_1e
    const/4 v2, 0x0

    .line 718
    :goto_11
    const/4 v12, 0x2

    .line 719
    if-eqz v2, :cond_21

    .line 720
    .line 721
    if-ne v4, v8, :cond_1f

    .line 722
    .line 723
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 724
    .line 725
    invoke-static {v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 726
    .line 727
    .line 728
    goto :goto_12

    .line 729
    :cond_1f
    if-ne v4, v12, :cond_20

    .line 730
    .line 731
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 732
    .line 733
    invoke-static {v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 734
    .line 735
    .line 736
    goto :goto_12

    .line 737
    :cond_20
    const/4 v2, 0x4

    .line 738
    if-ne v4, v2, :cond_21

    .line 739
    .line 740
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 741
    .line 742
    invoke-static {v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 743
    .line 744
    .line 745
    :cond_21
    :goto_12
    if-eqz v4, :cond_22

    .line 746
    .line 747
    const/4 v2, 0x1

    .line 748
    goto :goto_13

    .line 749
    :cond_22
    const/4 v2, 0x0

    .line 750
    :goto_13
    if-nez v2, :cond_23

    .line 751
    .line 752
    const/16 v2, 0x8

    .line 753
    .line 754
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 755
    .line 756
    .line 757
    :cond_23
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 758
    .line 759
    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    if-nez v2, :cond_24

    .line 764
    .line 765
    const/4 v2, 0x1

    .line 766
    goto :goto_14

    .line 767
    :cond_24
    const/4 v2, 0x0

    .line 768
    :goto_14
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 769
    .line 770
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    .line 771
    .line 772
    .line 773
    move-result v4

    .line 774
    if-nez v4, :cond_25

    .line 775
    .line 776
    const/4 v4, 0x1

    .line 777
    goto :goto_15

    .line 778
    :cond_25
    const/4 v4, 0x0

    .line 779
    :goto_15
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 780
    .line 781
    invoke-virtual {v5}, Landroid/widget/Button;->getVisibility()I

    .line 782
    .line 783
    .line 784
    move-result v5

    .line 785
    if-nez v5, :cond_26

    .line 786
    .line 787
    const/4 v5, 0x1

    .line 788
    goto :goto_16

    .line 789
    :cond_26
    const/4 v5, 0x0

    .line 790
    :goto_16
    const v6, 0x7f0a09d5

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 794
    .line 795
    .line 796
    move-result-object v6

    .line 797
    if-eqz v6, :cond_29

    .line 798
    .line 799
    if-eqz v2, :cond_27

    .line 800
    .line 801
    if-nez v4, :cond_28

    .line 802
    .line 803
    :cond_27
    if-eqz v2, :cond_29

    .line 804
    .line 805
    if-eqz v5, :cond_29

    .line 806
    .line 807
    :cond_28
    const/4 v2, 0x0

    .line 808
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 809
    .line 810
    .line 811
    goto :goto_17

    .line 812
    :cond_29
    const/4 v2, 0x0

    .line 813
    :goto_17
    const v6, 0x7f0a09d4

    .line 814
    .line 815
    .line 816
    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    if-eqz v6, :cond_2a

    .line 821
    .line 822
    if-eqz v4, :cond_2a

    .line 823
    .line 824
    if-eqz v5, :cond_2a

    .line 825
    .line 826
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 827
    .line 828
    .line 829
    :cond_2a
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mDefaultButtonPanelJob:Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    .line 830
    .line 831
    if-eqz v2, :cond_2b

    .line 832
    .line 833
    const v2, 0x7f0a01f2

    .line 834
    .line 835
    .line 836
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    check-cast v2, Landroid/view/ViewGroup;

    .line 841
    .line 842
    if-eqz v2, :cond_2b

    .line 843
    .line 844
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mDefaultButtonPanelJob:Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    .line 845
    .line 846
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 847
    .line 848
    .line 849
    :cond_2b
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 850
    .line 851
    const v4, 0x7f0a0be2

    .line 852
    .line 853
    .line 854
    if-eqz v2, :cond_2c

    .line 855
    .line 856
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 857
    .line 858
    const/4 v5, -0x2

    .line 859
    const/4 v6, -0x1

    .line 860
    invoke-direct {v2, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 861
    .line 862
    .line 863
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 864
    .line 865
    const/4 v6, 0x0

    .line 866
    invoke-virtual {v3, v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    const/16 v5, 0x8

    .line 874
    .line 875
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_19

    .line 879
    .line 880
    :cond_2c
    const v2, 0x1020006

    .line 881
    .line 882
    .line 883
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    check-cast v2, Landroid/widget/ImageView;

    .line 888
    .line 889
    iput-object v2, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 890
    .line 891
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 892
    .line 893
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    const/4 v5, 0x1

    .line 898
    xor-int/2addr v2, v5

    .line 899
    if-eqz v2, :cond_2f

    .line 900
    .line 901
    iget-boolean v2, v0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 902
    .line 903
    if-eqz v2, :cond_2f

    .line 904
    .line 905
    const v2, 0x7f0a00b0

    .line 906
    .line 907
    .line 908
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    check-cast v2, Landroid/widget/TextView;

    .line 913
    .line 914
    iput-object v2, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 915
    .line 916
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 917
    .line 918
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    .line 920
    .line 921
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 922
    .line 923
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    const v6, 0x7f071035

    .line 928
    .line 929
    .line 930
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 931
    .line 932
    .line 933
    move-result v5

    .line 934
    invoke-virtual {v0, v5, v2}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 935
    .line 936
    .line 937
    iget v2, v0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 938
    .line 939
    if-eqz v2, :cond_2d

    .line 940
    .line 941
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 942
    .line 943
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    .line 945
    .line 946
    goto :goto_18

    .line 947
    :cond_2d
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 948
    .line 949
    if-eqz v2, :cond_2e

    .line 950
    .line 951
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 952
    .line 953
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 954
    .line 955
    .line 956
    :goto_18
    const/16 v5, 0x8

    .line 957
    .line 958
    goto :goto_19

    .line 959
    :cond_2e
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 960
    .line 961
    iget-object v5, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 962
    .line 963
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    .line 964
    .line 965
    .line 966
    move-result v5

    .line 967
    iget-object v6, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 968
    .line 969
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    .line 970
    .line 971
    .line 972
    move-result v6

    .line 973
    iget-object v8, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 974
    .line 975
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    .line 976
    .line 977
    .line 978
    move-result v8

    .line 979
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 980
    .line 981
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    .line 982
    .line 983
    .line 984
    move-result v9

    .line 985
    invoke-virtual {v2, v5, v6, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 986
    .line 987
    .line 988
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 989
    .line 990
    const/16 v5, 0x8

    .line 991
    .line 992
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    .line 994
    .line 995
    goto :goto_19

    .line 996
    :cond_2f
    const/16 v5, 0x8

    .line 997
    .line 998
    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 999
    .line 1000
    .line 1001
    move-result-object v2

    .line 1002
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    .line 1004
    .line 1005
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 1006
    .line 1007
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1011
    .line 1012
    .line 1013
    :goto_19
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getVisibility()I

    .line 1014
    .line 1015
    .line 1016
    move-result v2

    .line 1017
    if-eq v2, v5, :cond_30

    .line 1018
    .line 1019
    const/4 v2, 0x1

    .line 1020
    goto :goto_1a

    .line 1021
    :cond_30
    const/4 v2, 0x0

    .line 1022
    :goto_1a
    if-eqz v3, :cond_31

    .line 1023
    .line 1024
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    .line 1025
    .line 1026
    .line 1027
    move-result v3

    .line 1028
    if-eq v3, v5, :cond_31

    .line 1029
    .line 1030
    const/4 v3, 0x1

    .line 1031
    goto :goto_1b

    .line 1032
    :cond_31
    const/4 v3, 0x0

    .line 1033
    :goto_1b
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    .line 1034
    .line 1035
    .line 1036
    move-result v6

    .line 1037
    if-eq v6, v5, :cond_32

    .line 1038
    .line 1039
    const/4 v6, 0x1

    .line 1040
    goto :goto_1c

    .line 1041
    :cond_32
    const/4 v6, 0x0

    .line 1042
    :goto_1c
    if-eqz v20, :cond_33

    .line 1043
    .line 1044
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    .line 1045
    .line 1046
    .line 1047
    move-result v7

    .line 1048
    if-eq v7, v5, :cond_33

    .line 1049
    .line 1050
    const/4 v7, 0x1

    .line 1051
    goto :goto_1d

    .line 1052
    :cond_33
    const/4 v7, 0x0

    .line 1053
    :goto_1d
    if-eqz v19, :cond_34

    .line 1054
    .line 1055
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    .line 1056
    .line 1057
    .line 1058
    move-result v8

    .line 1059
    if-eq v8, v5, :cond_34

    .line 1060
    .line 1061
    const/4 v8, 0x1

    .line 1062
    goto :goto_1e

    .line 1063
    :cond_34
    const/4 v8, 0x0

    .line 1064
    :goto_1e
    iget-object v9, v0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 1065
    .line 1066
    if-eqz v9, :cond_35

    .line 1067
    .line 1068
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 1069
    .line 1070
    .line 1071
    move-result v9

    .line 1072
    if-eq v9, v5, :cond_35

    .line 1073
    .line 1074
    const/4 v5, 0x1

    .line 1075
    goto :goto_1f

    .line 1076
    :cond_35
    const/4 v5, 0x0

    .line 1077
    :goto_1f
    if-eqz v2, :cond_36

    .line 1078
    .line 1079
    if-nez v7, :cond_36

    .line 1080
    .line 1081
    if-eqz v8, :cond_37

    .line 1082
    .line 1083
    :cond_36
    if-eqz v5, :cond_38

    .line 1084
    .line 1085
    :cond_37
    move-object/from16 v5, v18

    .line 1086
    .line 1087
    const/4 v9, 0x0

    .line 1088
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_20

    .line 1092
    :cond_38
    move-object/from16 v5, v18

    .line 1093
    .line 1094
    const/4 v9, 0x0

    .line 1095
    :goto_20
    if-eqz v2, :cond_39

    .line 1096
    .line 1097
    if-eqz v7, :cond_39

    .line 1098
    .line 1099
    if-nez v8, :cond_39

    .line 1100
    .line 1101
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v4

    .line 1105
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v7

    .line 1109
    const v8, 0x7f071030

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1113
    .line 1114
    .line 1115
    move-result v7

    .line 1116
    invoke-virtual {v4, v7, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1117
    .line 1118
    .line 1119
    :cond_39
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v4

    .line 1123
    const v7, 0x7f071025

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1127
    .line 1128
    .line 1129
    move-result v4

    .line 1130
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1131
    .line 1132
    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    .line 1133
    .line 1134
    .line 1135
    move-result v7

    .line 1136
    const/16 v8, 0x8

    .line 1137
    .line 1138
    if-eq v7, v8, :cond_3a

    .line 1139
    .line 1140
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1141
    .line 1142
    int-to-float v9, v4

    .line 1143
    const/4 v10, 0x0

    .line 1144
    invoke-virtual {v7, v10, v9}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1145
    .line 1146
    .line 1147
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1148
    .line 1149
    invoke-virtual {v0, v4, v7}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 1150
    .line 1151
    .line 1152
    goto :goto_21

    .line 1153
    :cond_3a
    const/4 v10, 0x0

    .line 1154
    :goto_21
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1155
    .line 1156
    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    .line 1157
    .line 1158
    .line 1159
    move-result v7

    .line 1160
    if-eq v7, v8, :cond_3b

    .line 1161
    .line 1162
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1163
    .line 1164
    int-to-float v9, v4

    .line 1165
    invoke-virtual {v7, v10, v9}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1166
    .line 1167
    .line 1168
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1169
    .line 1170
    invoke-virtual {v0, v4, v7}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 1171
    .line 1172
    .line 1173
    :cond_3b
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1174
    .line 1175
    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    .line 1176
    .line 1177
    .line 1178
    move-result v7

    .line 1179
    if-eq v7, v8, :cond_3c

    .line 1180
    .line 1181
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1182
    .line 1183
    int-to-float v8, v4

    .line 1184
    invoke-virtual {v7, v10, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1185
    .line 1186
    .line 1187
    iget-object v7, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1188
    .line 1189
    invoke-virtual {v0, v4, v7}, Landroidx/appcompat/app/AlertController;->checkMaxFontScale(ILandroid/widget/TextView;)V

    .line 1190
    .line 1191
    .line 1192
    :cond_3c
    invoke-virtual {v5}, Landroid/view/View;->isInTouchMode()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v4

    .line 1196
    if-nez v4, :cond_42

    .line 1197
    .line 1198
    if-eqz v2, :cond_3d

    .line 1199
    .line 1200
    move-object/from16 v9, v21

    .line 1201
    .line 1202
    goto :goto_22

    .line 1203
    :cond_3d
    move-object/from16 v9, v17

    .line 1204
    .line 1205
    :goto_22
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 1206
    .line 1207
    .line 1208
    move-result v4

    .line 1209
    if-eqz v4, :cond_3e

    .line 1210
    .line 1211
    goto :goto_23

    .line 1212
    :cond_3e
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 1213
    .line 1214
    if-eqz v4, :cond_3f

    .line 1215
    .line 1216
    const/4 v5, 0x0

    .line 1217
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1218
    .line 1219
    .line 1220
    :goto_23
    const/4 v4, 0x1

    .line 1221
    goto :goto_24

    .line 1222
    :cond_3f
    const/4 v4, 0x0

    .line 1223
    :goto_24
    if-nez v4, :cond_42

    .line 1224
    .line 1225
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1226
    .line 1227
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    .line 1228
    .line 1229
    .line 1230
    move-result v4

    .line 1231
    if-nez v4, :cond_40

    .line 1232
    .line 1233
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1234
    .line 1235
    invoke-virtual {v4}, Landroid/widget/Button;->requestFocus()Z

    .line 1236
    .line 1237
    .line 1238
    goto :goto_25

    .line 1239
    :cond_40
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1240
    .line 1241
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    .line 1242
    .line 1243
    .line 1244
    move-result v4

    .line 1245
    if-nez v4, :cond_41

    .line 1246
    .line 1247
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1248
    .line 1249
    invoke-virtual {v4}, Landroid/widget/Button;->requestFocus()Z

    .line 1250
    .line 1251
    .line 1252
    goto :goto_25

    .line 1253
    :cond_41
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1254
    .line 1255
    invoke-virtual {v4}, Landroid/widget/Button;->getVisibility()I

    .line 1256
    .line 1257
    .line 1258
    move-result v4

    .line 1259
    if-nez v4, :cond_42

    .line 1260
    .line 1261
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1262
    .line 1263
    invoke-virtual {v4}, Landroid/widget/Button;->requestFocus()Z

    .line 1264
    .line 1265
    .line 1266
    :cond_42
    :goto_25
    if-eqz v3, :cond_43

    .line 1267
    .line 1268
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 1269
    .line 1270
    if-eqz v4, :cond_43

    .line 1271
    .line 1272
    const/4 v5, 0x1

    .line 1273
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1274
    .line 1275
    .line 1276
    :cond_43
    iget-object v4, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 1277
    .line 1278
    instance-of v5, v4, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 1279
    .line 1280
    if-eqz v5, :cond_47

    .line 1281
    .line 1282
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1283
    .line 1284
    .line 1285
    if-eqz v6, :cond_44

    .line 1286
    .line 1287
    if-nez v3, :cond_47

    .line 1288
    .line 1289
    :cond_44
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingLeft()I

    .line 1290
    .line 1291
    .line 1292
    move-result v5

    .line 1293
    if-eqz v3, :cond_45

    .line 1294
    .line 1295
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    .line 1296
    .line 1297
    .line 1298
    move-result v7

    .line 1299
    goto :goto_26

    .line 1300
    :cond_45
    iget v7, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 1301
    .line 1302
    :goto_26
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    .line 1303
    .line 1304
    .line 1305
    move-result v8

    .line 1306
    if-eqz v6, :cond_46

    .line 1307
    .line 1308
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingBottom()I

    .line 1309
    .line 1310
    .line 1311
    move-result v9

    .line 1312
    goto :goto_27

    .line 1313
    :cond_46
    iget v9, v4, Landroidx/appcompat/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 1314
    .line 1315
    :goto_27
    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1316
    .line 1317
    .line 1318
    :cond_47
    if-nez v2, :cond_4b

    .line 1319
    .line 1320
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 1321
    .line 1322
    if-eqz v2, :cond_48

    .line 1323
    .line 1324
    goto :goto_28

    .line 1325
    :cond_48
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 1326
    .line 1327
    :goto_28
    if-eqz v2, :cond_4b

    .line 1328
    .line 1329
    if-eqz v6, :cond_49

    .line 1330
    .line 1331
    goto :goto_29

    .line 1332
    :cond_49
    const/4 v12, 0x0

    .line 1333
    :goto_29
    or-int/2addr v3, v12

    .line 1334
    const v4, 0x7f0a094c

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v4

    .line 1341
    const v5, 0x7f0a094b

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v1

    .line 1348
    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1349
    .line 1350
    const/4 v5, 0x3

    .line 1351
    invoke-static {v2, v3, v5}, Landroidx/core/view/ViewCompat$Api23Impl;->setScrollIndicators(Landroid/view/View;II)V

    .line 1352
    .line 1353
    .line 1354
    move-object/from16 v2, v17

    .line 1355
    .line 1356
    if-eqz v4, :cond_4a

    .line 1357
    .line 1358
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1359
    .line 1360
    .line 1361
    :cond_4a
    if-eqz v1, :cond_4b

    .line 1362
    .line 1363
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1364
    .line 1365
    .line 1366
    :cond_4b
    iget-object v1, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 1367
    .line 1368
    if-eqz v1, :cond_4d

    .line 1369
    .line 1370
    iget-object v2, v0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1371
    .line 1372
    if-eqz v2, :cond_4d

    .line 1373
    .line 1374
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1375
    .line 1376
    .line 1377
    sget-object v2, Landroidx/reflect/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    .line 1378
    .line 1379
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 1380
    .line 1381
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v3

    .line 1385
    const-string v4, "hidden_semSetBottomColor"

    .line 1386
    .line 1387
    invoke-static {v2, v4, v3}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v2

    .line 1391
    if-eqz v2, :cond_4c

    .line 1392
    .line 1393
    const/4 v3, 0x0

    .line 1394
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v3

    .line 1398
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v3

    .line 1402
    invoke-static {v1, v2, v3}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    :cond_4c
    iget v0, v0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 1406
    .line 1407
    const/4 v2, -0x1

    .line 1408
    if-le v0, v2, :cond_4d

    .line 1409
    .line 1410
    const/4 v2, 0x1

    .line 1411
    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v2

    .line 1418
    const v3, 0x7f0710f7

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1422
    .line 1423
    .line 1424
    move-result v2

    .line 1425
    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1426
    .line 1427
    .line 1428
    :cond_4d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
