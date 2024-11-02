.class public final Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mSliceView:Landroidx/slice/widget/SliceView;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanelSlicesAdapter;Landroid/view/View;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/systemui/volume/VolumePanelSlicesAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0a4d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroidx/slice/widget/SliceView;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelSlicesAdapter$SliceRowViewHolder;->mSliceView:Landroidx/slice/widget/SliceView;

    .line 16
    .line 17
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 18
    .line 19
    iget v0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    if-eq v0, v2, :cond_1

    .line 28
    .line 29
    iput v2, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/slice/widget/SliceViewPolicy;->mListener:Landroidx/slice/widget/SliceViewPolicy$PolicyChangeListener;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    check-cast p0, Landroidx/slice/widget/TemplateView;

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0, v0}, Landroidx/slice/widget/TemplateView;->updateDisplayedItems(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 53
    .line 54
    iget p0, p0, Landroidx/slice/widget/SliceViewPolicy;->mMode:I

    .line 55
    .line 56
    iget-object v0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 57
    .line 58
    instance-of v3, v0, Landroidx/slice/widget/ShortcutView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/slice/widget/SliceChildView;->getLoadingActions()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v4, 0x3

    .line 65
    if-ne p0, v4, :cond_2

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    new-instance p0, Landroidx/slice/widget/ShortcutView;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-direct {p0, v3}, Landroidx/slice/widget/ShortcutView;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iput-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 84
    .line 85
    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p2, p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-eq p0, v4, :cond_3

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 98
    .line 99
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    new-instance p0, Landroidx/slice/widget/TemplateView;

    .line 103
    .line 104
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {p0, v3}, Landroidx/slice/widget/TemplateView;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    iput-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 112
    .line 113
    invoke-virtual {p2, p0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p2, p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    move p0, v1

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const/4 p0, 0x0

    .line 123
    :goto_1
    if-eqz p0, :cond_5

    .line 124
    .line 125
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 126
    .line 127
    iget-object v3, p2, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 128
    .line 129
    invoke-virtual {p0, v3}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 133
    .line 134
    .line 135
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 136
    .line 137
    if-eqz p0, :cond_4

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->isValid()Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_4

    .line 144
    .line 145
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 146
    .line 147
    iget-object v3, p2, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 148
    .line 149
    invoke-virtual {p0, v3}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-virtual {p2}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 158
    .line 159
    .line 160
    :goto_2
    iput-boolean v1, p2, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 161
    .line 162
    iget-object p0, p2, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 163
    .line 164
    if-eqz p0, :cond_6

    .line 165
    .line 166
    iget-object p0, p0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    .line 167
    .line 168
    if-eqz p0, :cond_6

    .line 169
    .line 170
    iput-boolean v1, p0, Landroidx/slice/widget/RowContent;->mShowTitleItems:Z

    .line 171
    .line 172
    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object p0, p1, Lcom/android/systemui/volume/VolumePanelSlicesAdapter;->mOnSliceActionListener:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 176
    .line 177
    iput-object p0, p2, Landroidx/slice/widget/SliceView;->mSliceObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 178
    .line 179
    iget-object p1, p2, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method
