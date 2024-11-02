.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAreDisabledAll:Z

.field public final mOnColorClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mOnColorClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    .line 15
    .line 16
    iget p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    const/16 p0, 0xc

    .line 2
    .line 3
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 2
    .line 3
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 5
    .line 6
    iget-object p2, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    const v1, 0x7f0d01cc

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;

    .line 16
    .line 17
    invoke-direct {p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;-><init>()V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a04a5

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    const v1, 0x7f0a027e

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/Button;

    .line 39
    .line 40
    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    .line 41
    .line 42
    const v1, 0x7f0a0280

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    check-cast p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;

    .line 62
    .line 63
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/16 v2, 0x63

    .line 69
    .line 70
    const/16 v3, 0xb

    .line 71
    .line 72
    if-ne p1, v3, :cond_1

    .line 73
    .line 74
    iget-object v4, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    .line 75
    .line 76
    const v5, 0x7f08077b

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 80
    .line 81
    .line 82
    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 83
    .line 84
    const v5, 0x7f13034a

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v4, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 95
    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 105
    .line 106
    const v5, 0x7f080ba8

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    add-int/lit8 v6, p1, 0x3

    .line 120
    .line 121
    invoke-static {v5, v6, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 126
    .line 127
    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 128
    .line 129
    .line 130
    iget-object v5, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->iconView:Landroid/widget/Button;

    .line 131
    .line 132
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    .line 134
    .line 135
    iget-object v4, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 136
    .line 137
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :goto_1
    iget-object v4, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 145
    .line 146
    iget-boolean v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 147
    .line 148
    if-eqz v5, :cond_2

    .line 149
    .line 150
    const v5, 0x3ecccccd    # 0.4f

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 155
    .line 156
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 157
    .line 158
    .line 159
    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 160
    .line 161
    iget v4, v4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 162
    .line 163
    add-int/lit8 v5, v4, -0x3

    .line 164
    .line 165
    if-eq v5, p1, :cond_5

    .line 166
    .line 167
    if-ne p1, v3, :cond_3

    .line 168
    .line 169
    if-ne v4, v2, :cond_3

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_3
    iget-object v2, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    .line 173
    .line 174
    const/4 v4, 0x4

    .line 175
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 179
    .line 180
    if-eqz v2, :cond_4

    .line 181
    .line 182
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 183
    .line 184
    const v4, 0x7f1304f3

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 196
    .line 197
    const v4, 0x7f1304f4

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    :goto_3
    iget-object v2, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->selectIV:Landroid/widget/ImageView;

    .line 209
    .line 210
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 214
    .line 215
    const v4, 0x7f1304f5

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    :goto_4
    const-string v2, " "

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 231
    .line 232
    add-int/lit8 p1, p1, 0x3

    .line 233
    .line 234
    add-int/lit8 v4, p1, -0x3

    .line 235
    .line 236
    sget-object v5, Lcom/android/systemui/edgelighting/data/EdgeLightingConstants;->DEFAULT_COLOR_NAME_LIST:[I

    .line 237
    .line 238
    if-ltz v4, :cond_7

    .line 239
    .line 240
    if-lt v4, v3, :cond_6

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_6
    aget p1, v5, v4

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v4, "getEdgeLightingStylePreDefineColorResId() Invalid index value : "

    .line 249
    .line 250
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    const-string v3, "EdgeLightingSettingUtils"

    .line 261
    .line 262
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    aget p1, v5, v0

    .line 266
    .line 267
    :goto_6
    invoke-virtual {v2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object p1, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 275
    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 277
    .line 278
    if-eqz v0, :cond_8

    .line 279
    .line 280
    const/4 p0, 0x0

    .line 281
    goto :goto_7

    .line 282
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mOnColorClickListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;

    .line 283
    .line 284
    :goto_7
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    iget-object p0, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;->container:Landroid/widget/RelativeLayout;

    .line 288
    .line 289
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notifyDataSetChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-static {v0, v1, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->-$$Nest$msetDynamicWidth(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
