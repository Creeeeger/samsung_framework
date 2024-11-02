.class public final Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAsyncFontPending:Z

.field public final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field public mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field public mFontTypeface:Landroid/graphics/Typeface;

.field public mFontWeight:I

.field public mStyle:I

.field public final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 18
    .line 19
    return-void
.end method

.method public static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    .line 4
    invoke-virtual {v0, p2, p0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p1

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit p1

    .line 12
    throw p0
.end method


# virtual methods
.method public final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p1, p2, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final applyCompoundDrawablesTints()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aget-object v2, v0, v2

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 72
    .line 73
    .line 74
    aget-object v0, v0, v1

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    iget-object v10, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 18
    .line 19
    const/4 v13, 0x0

    .line 20
    invoke-static {v11, v8, v3, v9, v13}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    .line 21
    .line 22
    .line 23
    move-result-object v14

    .line 24
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v5, v14, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    move-object v1, v10

    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    move/from16 v6, p2

    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 39
    .line 40
    .line 41
    const/4 v7, -0x1

    .line 42
    invoke-virtual {v14, v13, v7}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v15, 0x3

    .line 47
    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v6, 0x0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v14, v15, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 59
    .line 60
    .line 61
    iput-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 62
    .line 63
    :cond_0
    const/4 v5, 0x1

    .line 64
    invoke-virtual {v14, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v14, v5, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 75
    .line 76
    .line 77
    iput-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 78
    .line 79
    :cond_1
    const/4 v4, 0x4

    .line 80
    invoke-virtual {v14, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-virtual {v14, v4, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 91
    .line 92
    .line 93
    iput-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 94
    .line 95
    :cond_2
    const/4 v3, 0x2

    .line 96
    invoke-virtual {v14, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    invoke-virtual {v14, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 107
    .line 108
    .line 109
    iput-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 110
    .line 111
    :cond_3
    const/4 v2, 0x5

    .line 112
    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 113
    .line 114
    .line 115
    move-result v16

    .line 116
    if-eqz v16, :cond_4

    .line 117
    .line 118
    invoke-virtual {v14, v2, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 123
    .line 124
    .line 125
    iput-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 126
    .line 127
    :cond_4
    const/4 v3, 0x6

    .line 128
    invoke-virtual {v14, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 129
    .line 130
    .line 131
    move-result v17

    .line 132
    if-eqz v17, :cond_5

    .line 133
    .line 134
    invoke-virtual {v14, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-static {v11, v12, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 139
    .line 140
    .line 141
    iput-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 142
    .line 143
    :cond_5
    invoke-virtual {v14}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 151
    .line 152
    sget-object v14, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 153
    .line 154
    const/16 v15, 0xf

    .line 155
    .line 156
    const/16 v6, 0xd

    .line 157
    .line 158
    const/16 v3, 0xe

    .line 159
    .line 160
    if-eq v1, v7, :cond_9

    .line 161
    .line 162
    invoke-static {v11, v1, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-nez v2, :cond_6

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 169
    .line 170
    .line 171
    move-result v18

    .line 172
    if-eqz v18, :cond_6

    .line 173
    .line 174
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v18

    .line 178
    move/from16 v19, v5

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_6
    move/from16 v18, v13

    .line 182
    .line 183
    move/from16 v19, v18

    .line 184
    .line 185
    :goto_0
    invoke-virtual {v0, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 189
    .line 190
    .line 191
    move-result v20

    .line 192
    if-eqz v20, :cond_7

    .line 193
    .line 194
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v20

    .line 198
    goto :goto_1

    .line 199
    :cond_7
    const/16 v20, 0x0

    .line 200
    .line 201
    :goto_1
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 202
    .line 203
    .line 204
    move-result v21

    .line 205
    if-eqz v21, :cond_8

    .line 206
    .line 207
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v21

    .line 211
    goto :goto_2

    .line 212
    :cond_8
    const/16 v21, 0x0

    .line 213
    .line 214
    :goto_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_9
    move/from16 v18, v13

    .line 219
    .line 220
    move/from16 v19, v18

    .line 221
    .line 222
    const/16 v20, 0x0

    .line 223
    .line 224
    const/16 v21, 0x0

    .line 225
    .line 226
    :goto_3
    invoke-static {v11, v8, v14, v9, v13}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-nez v2, :cond_a

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 233
    .line 234
    .line 235
    move-result v14

    .line 236
    if-eqz v14, :cond_a

    .line 237
    .line 238
    invoke-virtual {v1, v3, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 239
    .line 240
    .line 241
    move-result v18

    .line 242
    move/from16 v19, v5

    .line 243
    .line 244
    :cond_a
    move/from16 v3, v18

    .line 245
    .line 246
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    if-eqz v14, :cond_b

    .line 251
    .line 252
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v20

    .line 256
    :cond_b
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 257
    .line 258
    .line 259
    move-result v14

    .line 260
    if-eqz v14, :cond_c

    .line 261
    .line 262
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v21

    .line 266
    :cond_c
    move-object/from16 v14, v21

    .line 267
    .line 268
    invoke-virtual {v1, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 269
    .line 270
    .line 271
    move-result v18

    .line 272
    if-eqz v18, :cond_d

    .line 273
    .line 274
    invoke-virtual {v1, v13, v7}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 275
    .line 276
    .line 277
    move-result v18

    .line 278
    if-nez v18, :cond_d

    .line 279
    .line 280
    const/4 v4, 0x0

    .line 281
    invoke-virtual {v10, v13, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    .line 283
    .line 284
    :cond_d
    invoke-virtual {v0, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 288
    .line 289
    .line 290
    if-nez v2, :cond_e

    .line 291
    .line 292
    if-eqz v19, :cond_e

    .line 293
    .line 294
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 295
    .line 296
    .line 297
    :cond_e
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 298
    .line 299
    if-eqz v1, :cond_10

    .line 300
    .line 301
    iget v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 302
    .line 303
    if-ne v2, v7, :cond_f

    .line 304
    .line 305
    iget v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 306
    .line 307
    invoke-virtual {v10, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_f
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    .line 313
    .line 314
    :cond_10
    :goto_4
    if-eqz v14, :cond_11

    .line 315
    .line 316
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    :cond_11
    if-eqz v20, :cond_12

    .line 320
    .line 321
    invoke-static/range {v20 .. v20}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 326
    .line 327
    .line 328
    :cond_12
    sget-object v14, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 329
    .line 330
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 331
    .line 332
    iget-object v3, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    .line 333
    .line 334
    invoke-virtual {v3, v8, v14, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    iget-object v0, v4, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    const/16 v19, 0x0

    .line 345
    .line 346
    move-object/from16 p0, v2

    .line 347
    .line 348
    const/4 v15, 0x5

    .line 349
    move-object v2, v14

    .line 350
    move-object/from16 v16, v3

    .line 351
    .line 352
    const/4 v7, 0x2

    .line 353
    move-object/from16 v3, p1

    .line 354
    .line 355
    move-object v7, v4

    .line 356
    move-object/from16 v4, p0

    .line 357
    .line 358
    move/from16 v5, p2

    .line 359
    .line 360
    move v9, v6

    .line 361
    move/from16 v6, v19

    .line 362
    .line 363
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 364
    .line 365
    .line 366
    move-object/from16 v0, p0

    .line 367
    .line 368
    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-eqz v1, :cond_13

    .line 373
    .line 374
    invoke-virtual {v0, v15, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    iput v1, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 379
    .line 380
    :cond_13
    const/4 v1, 0x4

    .line 381
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    const/high16 v3, -0x40800000    # -1.0f

    .line 386
    .line 387
    if-eqz v2, :cond_14

    .line 388
    .line 389
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    goto :goto_5

    .line 394
    :cond_14
    move v1, v3

    .line 395
    :goto_5
    const/4 v2, 0x2

    .line 396
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_15

    .line 401
    .line 402
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 403
    .line 404
    .line 405
    move-result v4

    .line 406
    goto :goto_6

    .line 407
    :cond_15
    move v4, v3

    .line 408
    :goto_6
    const/4 v2, 0x1

    .line 409
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-eqz v5, :cond_16

    .line 414
    .line 415
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    goto :goto_7

    .line 420
    :cond_16
    move v5, v3

    .line 421
    :goto_7
    const/4 v6, 0x3

    .line 422
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 423
    .line 424
    .line 425
    move-result v15

    .line 426
    if-eqz v15, :cond_19

    .line 427
    .line 428
    invoke-virtual {v0, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 429
    .line 430
    .line 431
    move-result v15

    .line 432
    if-lez v15, :cond_19

    .line 433
    .line 434
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    .line 443
    .line 444
    .line 445
    move-result v15

    .line 446
    new-array v9, v15, [I

    .line 447
    .line 448
    if-lez v15, :cond_18

    .line 449
    .line 450
    :goto_8
    if-ge v13, v15, :cond_17

    .line 451
    .line 452
    const/4 v3, -0x1

    .line 453
    invoke-virtual {v6, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 454
    .line 455
    .line 456
    move-result v21

    .line 457
    aput v21, v9, v13

    .line 458
    .line 459
    add-int/lit8 v13, v13, 0x1

    .line 460
    .line 461
    const/high16 v3, -0x40800000    # -1.0f

    .line 462
    .line 463
    goto :goto_8

    .line 464
    :cond_17
    invoke-static {v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    iput-object v3, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 469
    .line 470
    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    .line 471
    .line 472
    .line 473
    :cond_18
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    .line 475
    .line 476
    :cond_19
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    const/high16 v3, 0x3f800000    # 1.0f

    .line 484
    .line 485
    if-eqz v0, :cond_1e

    .line 486
    .line 487
    iget v0, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 488
    .line 489
    if-ne v0, v2, :cond_1f

    .line 490
    .line 491
    iget-boolean v0, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    .line 492
    .line 493
    if-nez v0, :cond_1d

    .line 494
    .line 495
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    const/high16 v6, -0x40800000    # -1.0f

    .line 504
    .line 505
    cmpl-float v9, v4, v6

    .line 506
    .line 507
    if-nez v9, :cond_1a

    .line 508
    .line 509
    const/high16 v4, 0x41400000    # 12.0f

    .line 510
    .line 511
    const/4 v9, 0x2

    .line 512
    invoke-static {v9, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    goto :goto_9

    .line 517
    :cond_1a
    const/4 v9, 0x2

    .line 518
    :goto_9
    cmpl-float v13, v5, v6

    .line 519
    .line 520
    if-nez v13, :cond_1b

    .line 521
    .line 522
    const/high16 v5, 0x42e00000    # 112.0f

    .line 523
    .line 524
    invoke-static {v9, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 525
    .line 526
    .line 527
    move-result v5

    .line 528
    :cond_1b
    cmpl-float v0, v1, v6

    .line 529
    .line 530
    if-nez v0, :cond_1c

    .line 531
    .line 532
    move v1, v3

    .line 533
    :cond_1c
    invoke-virtual {v7, v4, v5, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    .line 534
    .line 535
    .line 536
    :cond_1d
    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    .line 537
    .line 538
    .line 539
    goto :goto_a

    .line 540
    :cond_1e
    const/4 v0, 0x0

    .line 541
    iput v0, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 542
    .line 543
    :cond_1f
    :goto_a
    sget-object v0, Landroidx/appcompat/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 544
    .line 545
    iget v0, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    .line 546
    .line 547
    if-eqz v0, :cond_21

    .line 548
    .line 549
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    .line 550
    .line 551
    array-length v1, v0

    .line 552
    if-lez v1, :cond_21

    .line 553
    .line 554
    invoke-virtual {v10}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    int-to-float v1, v1

    .line 559
    const/high16 v4, -0x40800000    # -1.0f

    .line 560
    .line 561
    cmpl-float v1, v1, v4

    .line 562
    .line 563
    if-eqz v1, :cond_20

    .line 564
    .line 565
    iget v0, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    .line 566
    .line 567
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    iget v1, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    .line 572
    .line 573
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    iget v4, v7, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    .line 578
    .line 579
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    const/4 v5, 0x0

    .line 584
    invoke-virtual {v10, v0, v1, v4, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 585
    .line 586
    .line 587
    goto :goto_b

    .line 588
    :cond_20
    const/4 v5, 0x0

    .line 589
    invoke-virtual {v10, v0, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 590
    .line 591
    .line 592
    :cond_21
    :goto_b
    invoke-static {v11, v8, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    const/16 v1, 0x8

    .line 597
    .line 598
    const/4 v4, -0x1

    .line 599
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eq v1, v4, :cond_22

    .line 604
    .line 605
    invoke-virtual {v12, v1, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    const/16 v1, 0xd

    .line 610
    .line 611
    goto :goto_c

    .line 612
    :cond_22
    const/16 v1, 0xd

    .line 613
    .line 614
    const/4 v6, 0x0

    .line 615
    :goto_c
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eq v1, v4, :cond_23

    .line 620
    .line 621
    invoke-virtual {v12, v1, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    goto :goto_d

    .line 626
    :cond_23
    const/4 v1, 0x0

    .line 627
    :goto_d
    const/16 v5, 0x9

    .line 628
    .line 629
    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 630
    .line 631
    .line 632
    move-result v5

    .line 633
    if-eq v5, v4, :cond_24

    .line 634
    .line 635
    invoke-virtual {v12, v5, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    goto :goto_e

    .line 640
    :cond_24
    const/4 v5, 0x0

    .line 641
    :goto_e
    const/4 v7, 0x6

    .line 642
    invoke-virtual {v0, v7, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 643
    .line 644
    .line 645
    move-result v7

    .line 646
    if-eq v7, v4, :cond_25

    .line 647
    .line 648
    invoke-virtual {v12, v7, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 649
    .line 650
    .line 651
    move-result-object v7

    .line 652
    goto :goto_f

    .line 653
    :cond_25
    const/4 v7, 0x0

    .line 654
    :goto_f
    const/16 v8, 0xa

    .line 655
    .line 656
    invoke-virtual {v0, v8, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    if-eq v8, v4, :cond_26

    .line 661
    .line 662
    invoke-virtual {v12, v8, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 663
    .line 664
    .line 665
    move-result-object v8

    .line 666
    goto :goto_10

    .line 667
    :cond_26
    const/4 v8, 0x0

    .line 668
    :goto_10
    const/4 v9, 0x7

    .line 669
    invoke-virtual {v0, v9, v4}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    .line 670
    .line 671
    .line 672
    move-result v9

    .line 673
    if-eq v9, v4, :cond_27

    .line 674
    .line 675
    invoke-virtual {v12, v9, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    goto :goto_11

    .line 680
    :cond_27
    const/4 v4, 0x0

    .line 681
    :goto_11
    if-nez v8, :cond_32

    .line 682
    .line 683
    if-eqz v4, :cond_28

    .line 684
    .line 685
    goto :goto_19

    .line 686
    :cond_28
    if-nez v6, :cond_29

    .line 687
    .line 688
    if-nez v1, :cond_29

    .line 689
    .line 690
    if-nez v5, :cond_29

    .line 691
    .line 692
    if-eqz v7, :cond_37

    .line 693
    .line 694
    :cond_29
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    const/4 v8, 0x0

    .line 699
    aget-object v9, v4, v8

    .line 700
    .line 701
    if-nez v9, :cond_2f

    .line 702
    .line 703
    const/4 v11, 0x2

    .line 704
    aget-object v12, v4, v11

    .line 705
    .line 706
    if-eqz v12, :cond_2a

    .line 707
    .line 708
    goto :goto_16

    .line 709
    :cond_2a
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    if-eqz v6, :cond_2b

    .line 714
    .line 715
    goto :goto_12

    .line 716
    :cond_2b
    aget-object v6, v4, v8

    .line 717
    .line 718
    :goto_12
    if-eqz v1, :cond_2c

    .line 719
    .line 720
    goto :goto_13

    .line 721
    :cond_2c
    aget-object v1, v4, v2

    .line 722
    .line 723
    :goto_13
    if-eqz v5, :cond_2d

    .line 724
    .line 725
    goto :goto_14

    .line 726
    :cond_2d
    const/4 v2, 0x2

    .line 727
    aget-object v5, v4, v2

    .line 728
    .line 729
    :goto_14
    if-eqz v7, :cond_2e

    .line 730
    .line 731
    goto :goto_15

    .line 732
    :cond_2e
    const/4 v2, 0x3

    .line 733
    aget-object v7, v4, v2

    .line 734
    .line 735
    :goto_15
    invoke-virtual {v10, v6, v1, v5, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 736
    .line 737
    .line 738
    goto :goto_1e

    .line 739
    :cond_2f
    :goto_16
    if-eqz v1, :cond_30

    .line 740
    .line 741
    goto :goto_17

    .line 742
    :cond_30
    aget-object v1, v4, v2

    .line 743
    .line 744
    :goto_17
    const/4 v2, 0x2

    .line 745
    aget-object v2, v4, v2

    .line 746
    .line 747
    if-eqz v7, :cond_31

    .line 748
    .line 749
    goto :goto_18

    .line 750
    :cond_31
    const/4 v5, 0x3

    .line 751
    aget-object v7, v4, v5

    .line 752
    .line 753
    :goto_18
    invoke-virtual {v10, v9, v1, v2, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 754
    .line 755
    .line 756
    goto :goto_1e

    .line 757
    :cond_32
    :goto_19
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    if-eqz v8, :cond_33

    .line 762
    .line 763
    goto :goto_1a

    .line 764
    :cond_33
    const/4 v6, 0x0

    .line 765
    aget-object v8, v5, v6

    .line 766
    .line 767
    :goto_1a
    if-eqz v1, :cond_34

    .line 768
    .line 769
    goto :goto_1b

    .line 770
    :cond_34
    aget-object v1, v5, v2

    .line 771
    .line 772
    :goto_1b
    if-eqz v4, :cond_35

    .line 773
    .line 774
    goto :goto_1c

    .line 775
    :cond_35
    const/4 v2, 0x2

    .line 776
    aget-object v4, v5, v2

    .line 777
    .line 778
    :goto_1c
    if-eqz v7, :cond_36

    .line 779
    .line 780
    goto :goto_1d

    .line 781
    :cond_36
    const/4 v2, 0x3

    .line 782
    aget-object v7, v5, v2

    .line 783
    .line 784
    :goto_1d
    invoke-virtual {v10, v8, v1, v4, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 785
    .line 786
    .line 787
    :cond_37
    :goto_1e
    const/16 v1, 0xb

    .line 788
    .line 789
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-eqz v2, :cond_38

    .line 794
    .line 795
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 800
    .line 801
    .line 802
    :cond_38
    const/16 v1, 0xc

    .line 803
    .line 804
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    if-eqz v2, :cond_39

    .line 809
    .line 810
    const/4 v2, -0x1

    .line 811
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 812
    .line 813
    .line 814
    move-result v1

    .line 815
    const/4 v4, 0x0

    .line 816
    invoke-static {v1, v4}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 821
    .line 822
    .line 823
    goto :goto_1f

    .line 824
    :cond_39
    const/4 v2, -0x1

    .line 825
    :goto_1f
    const/16 v1, 0xf

    .line 826
    .line 827
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    const/16 v4, 0x12

    .line 832
    .line 833
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 834
    .line 835
    .line 836
    move-result v4

    .line 837
    const/16 v5, 0x13

    .line 838
    .line 839
    invoke-virtual {v0, v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 840
    .line 841
    .line 842
    move-result v5

    .line 843
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 844
    .line 845
    .line 846
    if-eq v1, v2, :cond_3a

    .line 847
    .line 848
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    .line 852
    .line 853
    .line 854
    :cond_3a
    if-eq v4, v2, :cond_3d

    .line 855
    .line 856
    invoke-static {v4}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v10}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    if-eqz v1, :cond_3b

    .line 872
    .line 873
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 874
    .line 875
    goto :goto_20

    .line 876
    :cond_3b
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 877
    .line 878
    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-le v4, v1, :cond_3c

    .line 883
    .line 884
    sub-int/2addr v4, v0

    .line 885
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    .line 890
    .line 891
    .line 892
    move-result v1

    .line 893
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    invoke-virtual {v10, v0, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 898
    .line 899
    .line 900
    :cond_3c
    const/4 v0, -0x1

    .line 901
    goto :goto_21

    .line 902
    :cond_3d
    move v0, v2

    .line 903
    :goto_21
    if-eq v5, v0, :cond_3e

    .line 904
    .line 905
    invoke-static {v5}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    const/4 v1, 0x0

    .line 913
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 914
    .line 915
    .line 916
    move-result v0

    .line 917
    if-eq v5, v0, :cond_3e

    .line 918
    .line 919
    sub-int/2addr v5, v0

    .line 920
    int-to-float v0, v5

    .line 921
    invoke-virtual {v10, v0, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 922
    .line 923
    .line 924
    :cond_3e
    return-void
.end method

.method public final onSetTextAppearance(ILandroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    .line 3
    invoke-static {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0xe

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    invoke-virtual {p1, v3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 43
    .line 44
    .line 45
    const/16 p2, 0xd

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget p0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 70
    .line 71
    invoke-virtual {v2, p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method

.method public final updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 8

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 9
    .line 10
    const/16 v0, 0xb

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 23
    .line 24
    and-int/2addr v0, v1

    .line 25
    or-int/2addr v0, v3

    .line 26
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0xa

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-nez v4, :cond_6

    .line 38
    .line 39
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    iput-boolean v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 53
    .line 54
    invoke-virtual {p2, v6, v6}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eq p1, v6, :cond_4

    .line 59
    .line 60
    if-eq p1, v1, :cond_3

    .line 61
    .line 62
    const/4 p2, 0x3

    .line 63
    if-eq p1, p2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 67
    .line 68
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 72
    .line 73
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 77
    .line 78
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 79
    .line 80
    :cond_5
    :goto_0
    return-void

    .line 81
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 82
    iput-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 83
    .line 84
    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_7

    .line 89
    .line 90
    move v0, v5

    .line 91
    :cond_7
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 92
    .line 93
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_c

    .line 100
    .line 101
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 102
    .line 103
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    .line 109
    .line 110
    invoke-direct {v7, p0, v4, v5, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 111
    .line 112
    .line 113
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 114
    .line 115
    invoke-virtual {p2, v0, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/appcompat/widget/AppCompatTextHelper$1;)Landroid/graphics/Typeface;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_a

    .line 120
    .line 121
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 122
    .line 123
    if-eq v4, v2, :cond_9

    .line 124
    .line 125
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 130
    .line 131
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 132
    .line 133
    and-int/2addr v5, v1

    .line 134
    if-eqz v5, :cond_8

    .line 135
    .line 136
    move v5, v6

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    move v5, v3

    .line 139
    :goto_2
    invoke-static {p1, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 147
    .line 148
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 149
    .line 150
    if-nez p1, :cond_b

    .line 151
    .line 152
    move p1, v6

    .line 153
    goto :goto_4

    .line 154
    :cond_b
    move p1, v3

    .line 155
    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 158
    .line 159
    if-nez p1, :cond_f

    .line 160
    .line 161
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_f

    .line 166
    .line 167
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 168
    .line 169
    if-eq p2, v2, :cond_e

    .line 170
    .line 171
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 176
    .line 177
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 178
    .line 179
    and-int/2addr v0, v1

    .line 180
    if-eqz v0, :cond_d

    .line 181
    .line 182
    move v3, v6

    .line 183
    :cond_d
    invoke-static {p1, p2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 191
    .line 192
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 197
    .line 198
    :cond_f
    :goto_5
    return-void
.end method
