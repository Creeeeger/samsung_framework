.class public final Landroidx/preference/PreferenceFragment$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAllowDividerAfterLastItem:Z

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    iget-object v4, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    .line 12
    .line 13
    if-ge v3, v0, :cond_9

    .line 14
    .line 15
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    instance-of v7, v6, Landroidx/preference/PreferenceViewHolder;

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    check-cast v6, Landroidx/preference/PreferenceViewHolder;

    .line 28
    .line 29
    iget v7, v6, Landroidx/preference/PreferenceViewHolder;->mDividerStartOffset:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v6, 0x0

    .line 33
    move v7, v2

    .line 34
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    float-to-int v8, v8

    .line 39
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    add-int/2addr v9, v8

    .line 44
    iget-object v8, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    if-eqz v8, :cond_5

    .line 47
    .line 48
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    instance-of v10, v8, Landroidx/preference/PreferenceViewHolder;

    .line 53
    .line 54
    const/4 v11, 0x1

    .line 55
    if-eqz v10, :cond_1

    .line 56
    .line 57
    check-cast v8, Landroidx/preference/PreferenceViewHolder;

    .line 58
    .line 59
    iget-boolean v8, v8, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    .line 60
    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    move v8, v11

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v8, v2

    .line 66
    :goto_2
    if-nez v8, :cond_2

    .line 67
    .line 68
    move v8, v2

    .line 69
    goto :goto_4

    .line 70
    :cond_2
    iget-boolean v8, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 71
    .line 72
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    sub-int/2addr v12, v11

    .line 81
    if-ge v10, v12, :cond_4

    .line 82
    .line 83
    add-int/lit8 v10, v10, 0x1

    .line 84
    .line 85
    invoke-virtual {p2, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {p2, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    instance-of v10, v8, Landroidx/preference/PreferenceViewHolder;

    .line 94
    .line 95
    if-eqz v10, :cond_3

    .line 96
    .line 97
    check-cast v8, Landroidx/preference/PreferenceViewHolder;

    .line 98
    .line 99
    iget-boolean v8, v8, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    .line 100
    .line 101
    if-eqz v8, :cond_3

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move v11, v2

    .line 105
    :goto_3
    move v8, v11

    .line 106
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 107
    .line 108
    iget-object v8, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    iget v10, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 111
    .line 112
    add-int/2addr v10, v9

    .line 113
    invoke-virtual {v8, v7, v9, v1, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    .line 115
    .line 116
    iget-object v7, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-boolean v7, v4, Landroidx/preference/PreferenceFragment;->mIsRoundedCorner:Z

    .line 122
    .line 123
    if-eqz v7, :cond_8

    .line 124
    .line 125
    if-eqz v6, :cond_8

    .line 126
    .line 127
    iget-boolean v7, v6, Landroidx/preference/PreferenceViewHolder;->mDrawBackground:Z

    .line 128
    .line 129
    if-nez v7, :cond_6

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_6
    iget-boolean v7, v6, Landroidx/preference/PreferenceViewHolder;->mSubheaderRound:Z

    .line 133
    .line 134
    if-eqz v7, :cond_7

    .line 135
    .line 136
    iget-object v7, v4, Landroidx/preference/PreferenceFragment;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 137
    .line 138
    iget v6, v6, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    .line 139
    .line 140
    invoke-virtual {v7, v6}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v4, Landroidx/preference/PreferenceFragment;->mSubheaderRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    .line 144
    .line 145
    invoke-virtual {v4, v5, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 146
    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_7
    iget-object v7, v4, Landroidx/preference/PreferenceFragment;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 150
    .line 151
    iget v6, v6, Landroidx/preference/PreferenceViewHolder;->mDrawCorners:I

    .line 152
    .line 153
    invoke-virtual {v7, v6}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v4, Landroidx/preference/PreferenceFragment;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 157
    .line 158
    invoke-virtual {v4, v5, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_9
    iget-boolean p0, v4, Landroidx/preference/PreferenceFragment;->mIsRoundedCorner:Z

    .line 166
    .line 167
    if-eqz p0, :cond_a

    .line 168
    .line 169
    iget-object p0, v4, Landroidx/preference/PreferenceFragment;->mListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 170
    .line 171
    iget-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal(Landroid/graphics/Canvas;)V

    .line 177
    .line 178
    .line 179
    :cond_a
    return-void
.end method
