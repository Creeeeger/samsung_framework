.class public final Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAllowDividerAfterLastItem:Z

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public final synthetic this$0:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    move v6, v5

    .line 17
    :goto_0
    iget-object v7, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    .line 18
    .line 19
    if-ge v6, v3, :cond_b

    .line 20
    .line 21
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    instance-of v10, v9, Landroidx/preference/PreferenceViewHolder;

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    check-cast v9, Landroidx/preference/PreferenceViewHolder;

    .line 34
    .line 35
    iget v10, v9, Landroidx/preference/PreferenceViewHolder;->mDividerStartOffset:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v9, 0x0

    .line 39
    move v10, v5

    .line 40
    :goto_1
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    const/4 v12, 0x1

    .line 53
    if-ne v11, v12, :cond_1

    .line 54
    .line 55
    move v11, v12

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    move v11, v5

    .line 58
    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    .line 59
    .line 60
    .line 61
    move-result v13

    .line 62
    float-to-int v13, v13

    .line 63
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    add-int/2addr v14, v13

    .line 68
    iget-object v13, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    if-eqz v13, :cond_7

    .line 71
    .line 72
    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    instance-of v15, v13, Landroidx/preference/PreferenceViewHolder;

    .line 77
    .line 78
    if-eqz v15, :cond_2

    .line 79
    .line 80
    check-cast v13, Landroidx/preference/PreferenceViewHolder;

    .line 81
    .line 82
    iget-boolean v13, v13, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 83
    .line 84
    if-eqz v13, :cond_2

    .line 85
    .line 86
    move v13, v12

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    move v13, v5

    .line 89
    :goto_3
    if-nez v13, :cond_3

    .line 90
    .line 91
    move v13, v5

    .line 92
    goto :goto_5

    .line 93
    :cond_3
    iget-boolean v13, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 94
    .line 95
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 100
    .line 101
    .line 102
    move-result v16

    .line 103
    add-int/lit8 v12, v16, -0x1

    .line 104
    .line 105
    if-ge v15, v12, :cond_5

    .line 106
    .line 107
    add-int/lit8 v15, v15, 0x1

    .line 108
    .line 109
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    instance-of v13, v12, Landroidx/preference/PreferenceViewHolder;

    .line 118
    .line 119
    if-eqz v13, :cond_4

    .line 120
    .line 121
    check-cast v12, Landroidx/preference/PreferenceViewHolder;

    .line 122
    .line 123
    iget-boolean v12, v12, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 124
    .line 125
    if-eqz v12, :cond_4

    .line 126
    .line 127
    const/4 v12, 0x1

    .line 128
    goto :goto_4

    .line 129
    :cond_4
    move v12, v5

    .line 130
    :goto_4
    move v13, v12

    .line 131
    :cond_5
    :goto_5
    if-eqz v13, :cond_7

    .line 132
    .line 133
    if-eqz v11, :cond_6

    .line 134
    .line 135
    iget-object v11, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 136
    .line 137
    sub-int v10, v4, v10

    .line 138
    .line 139
    iget v12, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 140
    .line 141
    add-int/2addr v12, v14

    .line 142
    invoke-virtual {v11, v5, v14, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_6
    iget-object v11, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 147
    .line 148
    iget v12, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 149
    .line 150
    add-int/2addr v12, v14

    .line 151
    invoke-virtual {v11, v10, v14, v4, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    .line 153
    .line 154
    :goto_6
    iget-object v10, v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 155
    .line 156
    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    iget-boolean v10, v7, Landroidx/preference/PreferenceFragmentCompat;->mIsRoundedCorner:Z

    .line 160
    .line 161
    if-eqz v10, :cond_a

    .line 162
    .line 163
    if-eqz v9, :cond_a

    .line 164
    .line 165
    iget-boolean v10, v9, Landroidx/preference/PreferenceViewHolder;->mDrawBackground:Z

    .line 166
    .line 167
    if-nez v10, :cond_8

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_8
    iget-boolean v10, v9, Landroidx/preference/PreferenceViewHolder;->mSubheaderRound:Z

    .line 171
    .line 172
    if-eqz v10, :cond_9

    .line 173
    .line 174
    iget-object v10, v7, Landroidx/preference/PreferenceFragmentCompat;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 175
    .line 176
    iget v9, v9, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    .line 177
    .line 178
    invoke-virtual {v10, v9}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 179
    .line 180
    .line 181
    iget-object v7, v7, Landroidx/preference/PreferenceFragmentCompat;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 182
    .line 183
    invoke-virtual {v7, v8, v1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 184
    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_9
    iget-object v10, v7, Landroidx/preference/PreferenceFragmentCompat;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 188
    .line 189
    iget v9, v9, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    .line 190
    .line 191
    invoke-virtual {v10, v9}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 192
    .line 193
    .line 194
    iget-object v7, v7, Landroidx/preference/PreferenceFragmentCompat;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 195
    .line 196
    invoke-virtual {v7, v8, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 197
    .line 198
    .line 199
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_b
    iget-boolean v0, v7, Landroidx/preference/PreferenceFragmentCompat;->mIsRoundedCorner:Z

    .line 204
    .line 205
    if-eqz v0, :cond_c

    .line 206
    .line 207
    iget-object v0, v7, Landroidx/preference/PreferenceFragmentCompat;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 208
    .line 209
    iget-object v2, v0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    .line 215
    .line 216
    .line 217
    :cond_c
    return-void
.end method
