.class public final Lcom/android/systemui/qs/customize/TileAdapterDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 9

    .line 1
    iget-object p0, p0, Landroidx/core/view/AccessibilityDelegateCompat;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    iget-object v0, p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    .line 16
    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    if-eqz p0, :cond_f

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 26
    .line 27
    iget v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    move v2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v4

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto/16 :goto_b

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget v5, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 45
    .line 46
    if-le v2, v5, :cond_2

    .line 47
    .line 48
    move v2, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v4

    .line 51
    :goto_1
    const/16 v5, 0x10

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const v6, 0x7f1300e7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_5

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iget-object v6, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iget v7, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    .line 78
    .line 79
    if-le v6, v7, :cond_4

    .line 80
    .line 81
    move v6, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v6, v4

    .line 84
    :goto_2
    if-eqz v6, :cond_6

    .line 85
    .line 86
    iget v6, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 87
    .line 88
    if-ge v2, v6, :cond_5

    .line 89
    .line 90
    move v2, v3

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    move v2, v4

    .line 93
    :goto_3
    if-eqz v2, :cond_6

    .line 94
    .line 95
    move v2, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move v2, v4

    .line 98
    :goto_4
    if-eqz v2, :cond_7

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v6, 0x7f1300e6

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_5
    new-instance v6, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 112
    .line 113
    invoke-direct {v6, v5, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 117
    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_7
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    move v7, v4

    .line 129
    :goto_6
    if-ge v7, v6, :cond_9

    .line 130
    .line 131
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    check-cast v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 136
    .line 137
    invoke-virtual {v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-ne v8, v5, :cond_8

    .line 142
    .line 143
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 148
    .line 149
    invoke-virtual {p2, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 150
    .line 151
    .line 152
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_9
    :goto_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    iget v5, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 160
    .line 161
    if-le v2, v5, :cond_a

    .line 162
    .line 163
    move v2, v3

    .line 164
    goto :goto_8

    .line 165
    :cond_a
    move v2, v4

    .line 166
    :goto_8
    if-eqz v2, :cond_b

    .line 167
    .line 168
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    const v6, 0x7f1300ec

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    const v6, 0x7f0a002a

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, v6, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 188
    .line 189
    .line 190
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    iget v5, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 195
    .line 196
    if-ge v2, v5, :cond_c

    .line 197
    .line 198
    move v2, v3

    .line 199
    goto :goto_9

    .line 200
    :cond_c
    move v2, v4

    .line 201
    :goto_9
    if-eqz v2, :cond_d

    .line 202
    .line 203
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    const v6, 0x7f1300ed

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    const v6, 0x7f0a002b

    .line 217
    .line 218
    .line 219
    invoke-direct {v2, v6, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 223
    .line 224
    .line 225
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    iget v1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 230
    .line 231
    if-ge p2, v1, :cond_e

    .line 232
    .line 233
    goto :goto_a

    .line 234
    :cond_e
    move v3, v4

    .line 235
    :goto_a
    if-eqz v3, :cond_f

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    const p2, 0x7f1300e5

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    :cond_f
    :goto_b
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 6
    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 10
    .line 11
    iget v2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_a

    .line 23
    .line 24
    :cond_1
    const/16 v2, 0x10

    .line 25
    .line 26
    if-ne p2, v2, :cond_c

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    iget p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 33
    .line 34
    if-le p0, p1, :cond_2

    .line 35
    .line 36
    move p0, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move p0, v3

    .line 39
    :goto_1
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 48
    .line 49
    if-le p0, p2, :cond_3

    .line 50
    .line 51
    move p3, v4

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move p3, v3

    .line 54
    :goto_2
    if-nez p3, :cond_4

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    invoke-virtual {v1, p0, p2, v4}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    .line 58
    .line 59
    .line 60
    move v3, v4

    .line 61
    :goto_3
    if-eqz v3, :cond_b

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const p2, 0x7f1300e9

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_9

    .line 78
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    iget-object p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iget p3, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    .line 89
    .line 90
    if-le p2, p3, :cond_6

    .line 91
    .line 92
    move p2, v4

    .line 93
    goto :goto_4

    .line 94
    :cond_6
    move p2, v3

    .line 95
    :goto_4
    if-eqz p2, :cond_8

    .line 96
    .line 97
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 98
    .line 99
    if-ge p0, p2, :cond_7

    .line 100
    .line 101
    move p2, v4

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    move p2, v3

    .line 104
    :goto_5
    if-eqz p2, :cond_8

    .line 105
    .line 106
    move p2, v4

    .line 107
    goto :goto_6

    .line 108
    :cond_8
    move p2, v3

    .line 109
    :goto_6
    if-nez p2, :cond_9

    .line 110
    .line 111
    goto :goto_8

    .line 112
    :cond_9
    iget-object p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 113
    .line 114
    check-cast p2, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 121
    .line 122
    iget-boolean p2, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 123
    .line 124
    if-eqz p2, :cond_a

    .line 125
    .line 126
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_a
    iget p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 130
    .line 131
    :goto_7
    invoke-virtual {v1, p0, p2, v4}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    .line 132
    .line 133
    .line 134
    move v3, v4

    .line 135
    :goto_8
    if-eqz v3, :cond_b

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    const p2, 0x7f1300eb

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :cond_b
    :goto_9
    return v4

    .line 152
    :cond_c
    const v2, 0x7f0a002b

    .line 153
    .line 154
    .line 155
    if-ne p2, v2, :cond_d

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 162
    .line 163
    const/4 p1, 0x2

    .line 164
    iput p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 165
    .line 166
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 167
    .line 168
    iput-boolean v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 169
    .line 170
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 171
    .line 172
    .line 173
    return v4

    .line 174
    :cond_d
    const v2, 0x7f0a002a

    .line 175
    .line 176
    .line 177
    if-ne p2, v2, :cond_f

    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    .line 184
    .line 185
    iput v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    .line 186
    .line 187
    iget-object p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    .line 188
    .line 189
    iget p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 190
    .line 191
    add-int/lit8 p2, p1, 0x1

    .line 192
    .line 193
    iput p2, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 194
    .line 195
    const/4 p2, 0x0

    .line 196
    check-cast p0, Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 202
    .line 203
    add-int/2addr p0, v4

    .line 204
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    .line 205
    .line 206
    iget p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    .line 207
    .line 208
    sub-int/2addr p0, v4

    .line 209
    iput p0, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    .line 210
    .line 211
    iput-boolean v4, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    .line 212
    .line 213
    iget-object p1, v1, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 214
    .line 215
    if-eqz p1, :cond_e

    .line 216
    .line 217
    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$$ExternalSyntheticLambda0;

    .line 218
    .line 219
    invoke-direct {p2, v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 223
    .line 224
    .line 225
    :cond_e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 226
    .line 227
    .line 228
    return v4

    .line 229
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    return p0

    .line 234
    :cond_10
    :goto_a
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    return p0
.end method
