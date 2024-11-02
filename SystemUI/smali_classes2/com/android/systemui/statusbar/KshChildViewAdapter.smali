.class public final Lcom/android/systemui/statusbar/KshChildViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mData:Ljava/util/List;

.field public final mDefaultFont:Landroid/graphics/Typeface;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mKshData:Lcom/android/systemui/statusbar/model/KshData;

.field public final mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    new-instance p2, Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/model/KshDataUtils;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 12
    .line 13
    :try_start_0
    const-string p1, "/system/fonts/OneUISans-VF.ttf"

    .line 14
    .line 15
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string p0, "KshChildViewAdapter"

    .line 23
    .line 24
    const-string p1, "/system/fonts/OneUISans-VF.ttf is not enabled"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mData:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/systemui/statusbar/model/KshData;->mDefaultIcons:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const v0, 0x7f080b60

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->keywordView:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->shortcutKeysContainer:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshData:Lcom/android/systemui/statusbar/model/KshData;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    new-instance v3, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    const/4 v5, 0x0

    .line 73
    if-nez v4, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierNames:Landroid/util/SparseArray;

    .line 77
    .line 78
    iget-object v7, v0, Lcom/android/systemui/statusbar/model/KshData;->mModifierDrawables:Landroid/util/SparseArray;

    .line 79
    .line 80
    move v8, v1

    .line 81
    :goto_0
    iget-object v9, v2, Lcom/android/systemui/statusbar/model/KshDataUtils;->mModifierList:[I

    .line 82
    .line 83
    array-length v10, v9

    .line 84
    if-ge v8, v10, :cond_4

    .line 85
    .line 86
    aget v9, v9, v8

    .line 87
    .line 88
    and-int v10, v4, v9

    .line 89
    .line 90
    if-eqz v10, :cond_3

    .line 91
    .line 92
    new-instance v10, Lcom/android/systemui/statusbar/model/StringDrawableContainer;

    .line 93
    .line 94
    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    check-cast v11, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    check-cast v12, Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    invoke-direct {v10, v11, v12, v5}, Lcom/android/systemui/statusbar/model/StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    not-int v9, v9

    .line 113
    and-int/2addr v4, v9

    .line 114
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    if-eqz v4, :cond_5

    .line 118
    .line 119
    move-object v3, v5

    .line 120
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    iget-object v4, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    .line 128
    .line 129
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    iget-object v6, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterDrawableDescriptions:Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-lez v7, :cond_7

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    goto :goto_2

    .line 158
    :cond_7
    iget-object p2, v0, Lcom/android/systemui/statusbar/model/KshData;->mSpecialCharacterNames:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Ljava/lang/String;

    .line 165
    .line 166
    :goto_2
    if-nez p2, :cond_b

    .line 167
    .line 168
    if-nez v2, :cond_8

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    iget-object p2, v0, Lcom/android/systemui/statusbar/model/KshData;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 172
    .line 173
    invoke-virtual {p2, v2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_9

    .line 178
    .line 179
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    goto :goto_3

    .line 184
    :cond_9
    iget-object p2, v0, Lcom/android/systemui/statusbar/model/KshData;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 185
    .line 186
    invoke-virtual {p2, v2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_a

    .line 191
    .line 192
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    goto :goto_3

    .line 197
    :cond_a
    move-object p2, v5

    .line 198
    :goto_3
    if-nez p2, :cond_b

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;

    .line 202
    .line 203
    invoke-direct {v0, p2, v4, v6}, Lcom/android/systemui/statusbar/model/StringDrawableContainer;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :goto_4
    move-object v5, v3

    .line 210
    :goto_5
    if-eqz v5, :cond_f

    .line 211
    .line 212
    move p2, v1

    .line 213
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-ge p2, v0, :cond_10

    .line 218
    .line 219
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;

    .line 224
    .line 225
    iget-object v2, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    .line 227
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    .line 229
    if-eqz v2, :cond_c

    .line 230
    .line 231
    const v2, 0x7f0d0303

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Landroid/widget/ImageView;

    .line 239
    .line 240
    iget-object v3, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mDrawableDescription:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_c
    iget-object v0, v0, Lcom/android/systemui/statusbar/model/StringDrawableContainer;->mString:Ljava/lang/String;

    .line 255
    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    const v2, 0x7f0d0304

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Landroid/widget/TextView;

    .line 266
    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mDefaultFont:Landroid/graphics/Typeface;

    .line 268
    .line 269
    if-eqz v3, :cond_d

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    .line 273
    .line 274
    :cond_d
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    :cond_e
    :goto_7
    add-int/lit8 p2, p2, 0x1

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_f
    const-string p0, "KshChildViewAdapter"

    .line 284
    .line 285
    const-string p1, "Keyboard Shortcut contains unsupported keys, skipping."

    .line 286
    .line 287
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    :cond_10
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    const v0, 0x7f0d0301

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;

    .line 12
    .line 13
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/statusbar/KshChildViewAdapter;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-object p2
.end method
