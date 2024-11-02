.class public final Landroidx/preference/PreferenceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAccessibilityPositionTable:Ljava/util/List;

.field public final mCategoryLayoutId:I

.field public final mHandler:Landroid/os/Handler;

.field public mNextGroupPreference:Landroidx/preference/Preference;

.field public mNextPreference:Landroidx/preference/Preference;

.field public mParent:Landroid/view/ViewGroup;

.field public mParentWidth:I

.field public final mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field public final mPreferenceResourceDescriptors:Ljava/util/List;

.field public mPreferences:Ljava/util/List;

.field public final mSyncRunnable:Landroidx/preference/PreferenceGroupAdapter$1;

.field public mVisiblePreferences:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupAdapter$1;-><init>(Landroidx/preference/PreferenceGroupAdapter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/preference/PreferenceGroupAdapter$1;

    .line 10
    .line 11
    const v0, 0x7f0d03d1

    .line 12
    .line 13
    .line 14
    iput v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mCategoryLayoutId:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextPreference:Landroidx/preference/Preference;

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroidx/preference/Preference;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mParentWidth:I

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 25
    .line 26
    new-instance v0, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iput-object p0, p1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mAccessibilityPositionTable:Ljava/util/List;

    .line 66
    .line 67
    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 72
    .line 73
    iget-boolean p1, p1, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public static isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static isSwitchLayout(Landroidx/preference/Preference;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 2
    .line 3
    const v1, 0x7f0d03d7

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 9
    .line 10
    const v2, 0x7f0d03db

    .line 11
    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    :cond_0
    const v1, 0x7f0d03d8

    .line 16
    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    iget p0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 21
    .line 22
    const v0, 0x7f0d03ea

    .line 23
    .line 24
    .line 25
    if-ne p0, v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method


# virtual methods
.method public final createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v3, v2, :cond_a

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-boolean v6, v5, Landroidx/preference/Preference;->mVisible:Z

    .line 24
    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    goto :goto_7

    .line 28
    :cond_0
    invoke-static {p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    iget v6, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 35
    .line 36
    if-ge v4, v6, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_2
    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    .line 47
    .line 48
    if-nez v6, :cond_3

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_7

    .line 53
    :cond_3
    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 54
    .line 55
    instance-of v6, v5, Landroidx/preference/PreferenceScreen;

    .line 56
    .line 57
    xor-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    if-nez v6, :cond_4

    .line 60
    .line 61
    goto :goto_7

    .line 62
    :cond_4
    invoke-static {p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_6

    .line 67
    .line 68
    invoke-static {v5}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-nez v6, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string p1, "Nesting an expandable group inside of another expandable group is not supported!"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_6
    :goto_3
    invoke-virtual {p0, v5}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_9

    .line 98
    .line 99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Landroidx/preference/Preference;

    .line 104
    .line 105
    invoke-static {p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_8

    .line 110
    .line 111
    iget v7, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 112
    .line 113
    if-ge v4, v7, :cond_7

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_8
    :goto_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_9
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_a
    invoke-static {p1}, Landroidx/preference/PreferenceGroupAdapter;->isGroupExpandable(Landroidx/preference/PreferenceGroup;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_b

    .line 134
    .line 135
    iget v2, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 136
    .line 137
    if-le v4, v2, :cond_b

    .line 138
    .line 139
    new-instance v2, Landroidx/preference/ExpandButton;

    .line 140
    .line 141
    iget-object v3, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    iget-wide v4, p1, Landroidx/preference/Preference;->mId:J

    .line 144
    .line 145
    invoke-direct {v2, v3, v1, v4, v5}, Landroidx/preference/ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Landroidx/preference/PreferenceGroupAdapter$3;

    .line 149
    .line 150
    invoke-direct {v1, p0, p1}, Landroidx/preference/PreferenceGroupAdapter$3;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V

    .line 151
    .line 152
    .line 153
    iput-object v1, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    :cond_b
    return-object v0
.end method

.method public final flattenPreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/List;)V
    .locals 6

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/List;

    .line 3
    .line 4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v3, v0, -0x1

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-ne v1, v3, :cond_0

    .line 23
    .line 24
    iput-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextPreference:Landroidx/preference/Preference;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iput-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextPreference:Landroidx/preference/Preference;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroidx/preference/Preference;

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iput-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroidx/preference/Preference;

    .line 40
    .line 41
    :cond_1
    :goto_1
    instance-of v3, v2, Landroidx/preference/PreferenceCategory;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iget-boolean v5, v2, Landroidx/preference/Preference;->mIsRoundChanged:Z

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    iput-boolean v4, v2, Landroidx/preference/Preference;->mIsPreferenceRoundedBg:Z

    .line 51
    .line 52
    const/16 v5, 0xf

    .line 53
    .line 54
    iput v5, v2, Landroidx/preference/Preference;->mWhere:I

    .line 55
    .line 56
    iput-boolean v4, v2, Landroidx/preference/Preference;->mSubheaderRound:Z

    .line 57
    .line 58
    iput-boolean v4, v2, Landroidx/preference/Preference;->mIsRoundChanged:Z

    .line 59
    .line 60
    :cond_2
    move-object v5, p2

    .line 61
    check-cast v5, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    iget v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mCategoryLayoutId:I

    .line 79
    .line 80
    iget v5, v2, Landroidx/preference/Preference;->mLayoutResId:I

    .line 81
    .line 82
    if-ne v3, v5, :cond_3

    .line 83
    .line 84
    const v3, 0x7f0d03d2

    .line 85
    .line 86
    .line 87
    iput v3, v2, Landroidx/preference/Preference;->mLayoutResId:I

    .line 88
    .line 89
    :cond_3
    new-instance v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 90
    .line 91
    invoke-direct {v3, v2}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 95
    .line 96
    check-cast v5, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_4

    .line 103
    .line 104
    iget-object v5, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 105
    .line 106
    check-cast v5, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :cond_4
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    .line 112
    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    move-object v3, v2

    .line 116
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    instance-of v5, v3, Landroidx/preference/PreferenceScreen;

    .line 122
    .line 123
    xor-int/2addr v4, v5

    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextPreference:Landroidx/preference/Preference;

    .line 127
    .line 128
    iput-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mNextGroupPreference:Landroidx/preference/Preference;

    .line 129
    .line 130
    invoke-virtual {p0, v3, p2}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iput-object p0, v2, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    throw p0
.end method

.method public final getItem(I)Landroidx/preference/Preference;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/preference/Preference;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

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

.method public final getItemId(I)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/preference/Preference;->getId()J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    .line 22
    .line 23
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v1, -0x1

    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return p1
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    .line 6
    .line 7
    move/from16 v2, p2

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, v1, Landroidx/preference/PreferenceViewHolder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const v4, 0x1020016

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-object v6, v1, Landroidx/preference/PreferenceViewHolder;->mTitleTextColors:Landroid/content/res/ColorStateList;

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {v2}, Landroidx/preference/PreferenceGroupAdapter;->isSwitchLayout(Landroidx/preference/Preference;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_1d

    .line 61
    .line 62
    iget-object v5, v0, Landroidx/preference/PreferenceGroupAdapter;->mParent:Landroid/view/ViewGroup;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iput v5, v0, Landroidx/preference/PreferenceGroupAdapter;->mParentWidth:I

    .line 69
    .line 70
    instance-of v0, v2, Landroidx/preference/SwitchPreference;

    .line 71
    .line 72
    const/4 v11, 0x1

    .line 73
    const/16 v12, 0x8

    .line 74
    .line 75
    const v14, 0x1020010

    .line 76
    .line 77
    .line 78
    const v15, 0x3fa66666    # 1.3f

    .line 79
    .line 80
    .line 81
    const v16, 0x3f8ccccd    # 1.1f

    .line 82
    .line 83
    .line 84
    const/16 v6, 0x19b

    .line 85
    .line 86
    const/16 v8, 0x140

    .line 87
    .line 88
    const v10, 0x1020040

    .line 89
    .line 90
    .line 91
    const v9, 0x7f0a0b8c

    .line 92
    .line 93
    .line 94
    const v13, 0x1020018

    .line 95
    .line 96
    .line 97
    const v7, 0x7f0a0d3e

    .line 98
    .line 99
    .line 100
    if-eqz v0, :cond_e

    .line 101
    .line 102
    check-cast v2, Landroidx/preference/SwitchPreference;

    .line 103
    .line 104
    iput v5, v2, Landroidx/preference/SwitchPreference;->mWidth:I

    .line 105
    .line 106
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    iget-object v9, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    iget v10, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 136
    .line 137
    if-gt v10, v8, :cond_2

    .line 138
    .line 139
    iget v8, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 140
    .line 141
    cmpl-float v8, v8, v16

    .line 142
    .line 143
    if-gez v8, :cond_3

    .line 144
    .line 145
    :cond_2
    if-ge v10, v6, :cond_4

    .line 146
    .line 147
    iget v6, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 148
    .line 149
    cmpl-float v6, v6, v15

    .line 150
    .line 151
    if-ltz v6, :cond_4

    .line 152
    .line 153
    :cond_3
    move v8, v11

    .line 154
    goto :goto_0

    .line 155
    :cond_4
    const/4 v8, 0x2

    .line 156
    :goto_0
    if-ne v8, v11, :cond_c

    .line 157
    .line 158
    iput v8, v2, Landroidx/preference/SwitchPreference;->mIsLargeLayout:I

    .line 159
    .line 160
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Landroid/widget/TextView;

    .line 165
    .line 166
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Landroid/widget/TextView;

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-ne v8, v12, :cond_5

    .line 209
    .line 210
    const/4 v9, 0x0

    .line 211
    :cond_5
    iget-object v8, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    const v10, 0x7f0710b3

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    iget v10, v2, Landroidx/preference/SwitchPreference;->mWidth:I

    .line 225
    .line 226
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 227
    .line 228
    .line 229
    move-result v13

    .line 230
    sub-int/2addr v10, v13

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    sub-int/2addr v10, v13

    .line 236
    sub-int/2addr v10, v8

    .line 237
    int-to-float v8, v10

    .line 238
    cmpl-float v6, v6, v8

    .line 239
    .line 240
    if-gez v6, :cond_9

    .line 241
    .line 242
    cmpl-float v6, v9, v8

    .line 243
    .line 244
    if-ltz v6, :cond_6

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_6
    const/4 v6, 0x0

    .line 248
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 255
    .line 256
    .line 257
    move-object v0, v7

    .line 258
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 259
    .line 260
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->canHapticFeedback(Z)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-nez v1, :cond_8

    .line 267
    .line 268
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eq v1, v4, :cond_7

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/view/View;->hasWindowFocus()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_7

    .line 281
    .line 282
    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_7

    .line 287
    .line 288
    invoke-virtual {v3}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_7

    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_7
    const/4 v11, 0x0

    .line 296
    :goto_1
    if-eqz v11, :cond_8

    .line 297
    .line 298
    const/16 v1, 0x1b

    .line 299
    .line 300
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    .line 305
    .line 306
    .line 307
    :cond_8
    invoke-virtual {v2, v7}, Landroidx/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    .line 311
    .line 312
    const/4 v0, 0x0

    .line 313
    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 314
    .line 315
    .line 316
    iget-boolean v0, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 317
    .line 318
    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/SwitchCompat;->setCheckedWithoutAnimation(Z)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_9

    .line 322
    .line 323
    :cond_9
    :goto_2
    const/4 v6, 0x0

    .line 324
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 331
    .line 332
    .line 333
    move-object v0, v5

    .line 334
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 335
    .line 336
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 337
    .line 338
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->canHapticFeedback(Z)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_b

    .line 343
    .line 344
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 345
    .line 346
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eq v1, v4, :cond_a

    .line 351
    .line 352
    invoke-virtual {v3}, Landroid/view/View;->hasWindowFocus()Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-eqz v1, :cond_a

    .line 357
    .line 358
    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_a

    .line 363
    .line 364
    invoke-virtual {v3}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_a

    .line 369
    .line 370
    goto :goto_3

    .line 371
    :cond_a
    const/4 v11, 0x0

    .line 372
    :goto_3
    if-eqz v11, :cond_b

    .line 373
    .line 374
    const/16 v1, 0x1b

    .line 375
    .line 376
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    .line 381
    .line 382
    .line 383
    :cond_b
    invoke-virtual {v2, v5}, Landroidx/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    .line 384
    .line 385
    .line 386
    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 390
    .line 391
    .line 392
    iget-boolean v0, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 393
    .line 394
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SwitchCompat;->setCheckedWithoutAnimation(Z)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_9

    .line 398
    .line 399
    :cond_c
    iget v5, v2, Landroidx/preference/SwitchPreference;->mIsLargeLayout:I

    .line 400
    .line 401
    if-eq v5, v8, :cond_d

    .line 402
    .line 403
    iput v8, v2, Landroidx/preference/SwitchPreference;->mIsLargeLayout:I

    .line 404
    .line 405
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    check-cast v3, Landroid/widget/TextView;

    .line 410
    .line 411
    const/4 v4, 0x0

    .line 412
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 419
    .line 420
    .line 421
    :cond_d
    invoke-virtual {v2, v7}, Landroidx/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_9

    .line 425
    .line 426
    :cond_e
    instance-of v0, v2, Landroidx/preference/SwitchPreferenceCompat;

    .line 427
    .line 428
    if-eqz v0, :cond_1c

    .line 429
    .line 430
    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    .line 431
    .line 432
    iput v5, v2, Landroidx/preference/SwitchPreferenceCompat;->mWidth:I

    .line 433
    .line 434
    invoke-virtual {v2, v1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    iget-object v9, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 454
    .line 455
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 456
    .line 457
    .line 458
    move-result-object v9

    .line 459
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    iget v10, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 464
    .line 465
    if-gt v10, v8, :cond_f

    .line 466
    .line 467
    iget v8, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 468
    .line 469
    cmpl-float v8, v8, v16

    .line 470
    .line 471
    if-gez v8, :cond_10

    .line 472
    .line 473
    :cond_f
    if-ge v10, v6, :cond_11

    .line 474
    .line 475
    iget v6, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 476
    .line 477
    cmpl-float v6, v6, v15

    .line 478
    .line 479
    if-ltz v6, :cond_11

    .line 480
    .line 481
    :cond_10
    move v8, v11

    .line 482
    goto :goto_4

    .line 483
    :cond_11
    const/4 v8, 0x2

    .line 484
    :goto_4
    if-ne v8, v11, :cond_1a

    .line 485
    .line 486
    iput v8, v2, Landroidx/preference/SwitchPreferenceCompat;->mIsLargeLayout:I

    .line 487
    .line 488
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    check-cast v4, Landroid/widget/TextView;

    .line 493
    .line 494
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 507
    .line 508
    .line 509
    move-result v6

    .line 510
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    check-cast v8, Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 521
    .line 522
    .line 523
    move-result-object v10

    .line 524
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    .line 533
    .line 534
    .line 535
    move-result v8

    .line 536
    if-ne v8, v12, :cond_12

    .line 537
    .line 538
    const/4 v9, 0x0

    .line 539
    :cond_12
    instance-of v8, v2, Landroidx/preference/SeslSwitchPreferenceScreen;

    .line 540
    .line 541
    if-eqz v8, :cond_13

    .line 542
    .line 543
    iget-object v8, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 544
    .line 545
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    const v10, 0x7f0710b4

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    .line 557
    .line 558
    .line 559
    move-result v10

    .line 560
    goto :goto_5

    .line 561
    :cond_13
    iget-object v8, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 562
    .line 563
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    const v10, 0x7f0710b3

    .line 568
    .line 569
    .line 570
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 571
    .line 572
    .line 573
    move-result v8

    .line 574
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    .line 575
    .line 576
    .line 577
    move-result v10

    .line 578
    :goto_5
    add-int/2addr v10, v8

    .line 579
    iget v8, v2, Landroidx/preference/SwitchPreferenceCompat;->mWidth:I

    .line 580
    .line 581
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    .line 582
    .line 583
    .line 584
    move-result v13

    .line 585
    sub-int/2addr v8, v13

    .line 586
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    .line 587
    .line 588
    .line 589
    move-result v13

    .line 590
    sub-int/2addr v8, v13

    .line 591
    sub-int/2addr v8, v10

    .line 592
    int-to-float v8, v8

    .line 593
    cmpl-float v6, v6, v8

    .line 594
    .line 595
    if-gez v6, :cond_17

    .line 596
    .line 597
    cmpl-float v6, v9, v8

    .line 598
    .line 599
    if-ltz v6, :cond_14

    .line 600
    .line 601
    goto :goto_7

    .line 602
    :cond_14
    const/4 v6, 0x0

    .line 603
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 610
    .line 611
    .line 612
    move-object v0, v7

    .line 613
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 614
    .line 615
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 616
    .line 617
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->canHapticFeedback(Z)Z

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    if-nez v1, :cond_16

    .line 622
    .line 623
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 624
    .line 625
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 626
    .line 627
    .line 628
    move-result v4

    .line 629
    if-eq v1, v4, :cond_15

    .line 630
    .line 631
    invoke-virtual {v3}, Landroid/view/View;->hasWindowFocus()Z

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    if-eqz v1, :cond_15

    .line 636
    .line 637
    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_15

    .line 642
    .line 643
    invoke-virtual {v3}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-nez v1, :cond_15

    .line 648
    .line 649
    goto :goto_6

    .line 650
    :cond_15
    const/4 v11, 0x0

    .line 651
    :goto_6
    if-eqz v11, :cond_16

    .line 652
    .line 653
    const/16 v1, 0x1b

    .line 654
    .line 655
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    .line 660
    .line 661
    .line 662
    :cond_16
    invoke-virtual {v2, v7}, Landroidx/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 663
    .line 664
    .line 665
    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    .line 666
    .line 667
    const/4 v0, 0x0

    .line 668
    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 669
    .line 670
    .line 671
    iget-boolean v0, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 672
    .line 673
    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/SwitchCompat;->setCheckedWithoutAnimation(Z)V

    .line 674
    .line 675
    .line 676
    goto :goto_9

    .line 677
    :cond_17
    :goto_7
    const/4 v6, 0x0

    .line 678
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 685
    .line 686
    .line 687
    move-object v0, v5

    .line 688
    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    .line 689
    .line 690
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 691
    .line 692
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->canHapticFeedback(Z)Z

    .line 693
    .line 694
    .line 695
    move-result v1

    .line 696
    if-nez v1, :cond_19

    .line 697
    .line 698
    iget-boolean v1, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 699
    .line 700
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    if-eq v1, v4, :cond_18

    .line 705
    .line 706
    invoke-virtual {v3}, Landroid/view/View;->hasWindowFocus()Z

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    if-eqz v1, :cond_18

    .line 711
    .line 712
    invoke-static {v3}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    .line 713
    .line 714
    .line 715
    move-result v1

    .line 716
    if-eqz v1, :cond_18

    .line 717
    .line 718
    invoke-virtual {v3}, Landroid/view/View;->isTemporarilyDetached()Z

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-nez v1, :cond_18

    .line 723
    .line 724
    goto :goto_8

    .line 725
    :cond_18
    const/4 v11, 0x0

    .line 726
    :goto_8
    if-eqz v11, :cond_19

    .line 727
    .line 728
    const/16 v1, 0x1b

    .line 729
    .line 730
    invoke-static {v1}, Landroidx/reflect/view/SeslHapticFeedbackConstantsReflector;->semGetVibrationIndex(I)I

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->performHapticFeedback(I)Z

    .line 735
    .line 736
    .line 737
    :cond_19
    invoke-virtual {v2, v5}, Landroidx/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 738
    .line 739
    .line 740
    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    .line 741
    .line 742
    const/4 v0, 0x0

    .line 743
    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 744
    .line 745
    .line 746
    iget-boolean v0, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    .line 747
    .line 748
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SwitchCompat;->setCheckedWithoutAnimation(Z)V

    .line 749
    .line 750
    .line 751
    goto :goto_9

    .line 752
    :cond_1a
    iget v5, v2, Landroidx/preference/SwitchPreferenceCompat;->mIsLargeLayout:I

    .line 753
    .line 754
    if-eq v5, v8, :cond_1b

    .line 755
    .line 756
    iput v8, v2, Landroidx/preference/SwitchPreferenceCompat;->mIsLargeLayout:I

    .line 757
    .line 758
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    check-cast v3, Landroid/widget/TextView;

    .line 763
    .line 764
    const/4 v4, 0x0

    .line 765
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 772
    .line 773
    .line 774
    :cond_1b
    invoke-virtual {v2, v7}, Landroidx/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 775
    .line 776
    .line 777
    goto :goto_9

    .line 778
    :cond_1c
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 779
    .line 780
    .line 781
    goto :goto_9

    .line 782
    :cond_1d
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 783
    .line 784
    .line 785
    :goto_9
    return-void
.end method

.method public final onCreateViewHolder(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mParent:Landroid/view/ViewGroup;

    .line 20
    .line 21
    iget p0, p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const p1, 0x1020018

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget v3, p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    const p1, 0x7f0a012d

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-boolean p2, p2, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mIsDotVisibled:Z

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    if-ne p2, v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_1
    new-instance p1, Landroidx/preference/PreferenceViewHolder;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Landroidx/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method public final seslGetAccessibilityItemCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mAccessibilityPositionTable:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mAccessibilityPositionTable:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/lit8 p0, p0, 0x1

    .line 34
    .line 35
    return p0

    .line 36
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 37
    .line 38
    check-cast v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroidx/preference/Preference;

    .line 56
    .line 57
    iget v2, v2, Landroidx/preference/Preference;->mLayoutResId:I

    .line 58
    .line 59
    const v3, 0x7f0d03d2

    .line 60
    .line 61
    .line 62
    if-ne v2, v3, :cond_1

    .line 63
    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    sub-int/2addr p0, v1

    .line 72
    return p0
.end method

.method public final seslGetAccessibilityItemPosition(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mAccessibilityPositionTable:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mAccessibilityPositionTable:Ljava/util/List;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, -0x1

    .line 29
    return p0
.end method

.method public final updatePreferences()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/preference/Preference;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Landroidx/preference/PreferenceGroup;Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, -0x1

    .line 59
    move v4, v3

    .line 60
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x0

    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Landroidx/preference/Preference;

    .line 72
    .line 73
    iget v5, v5, Landroidx/preference/Preference;->mLayoutResId:I

    .line 74
    .line 75
    const v7, 0x7f0d03d2

    .line 76
    .line 77
    .line 78
    if-eq v5, v7, :cond_1

    .line 79
    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 81
    .line 82
    :cond_1
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-lez v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    add-int/2addr v2, v3

    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-lt v2, v4, :cond_3

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v4, "accessibilityPosition over visible size | last "

    .line 126
    .line 127
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    add-int/2addr v4, v3

    .line 135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v3, " vsize "

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const-string v3, "PreferenceGroupAdapter"

    .line 161
    .line 162
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-ge v6, v2, :cond_3

    .line 170
    .line 171
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v1, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    add-int/lit8 v6, v6, 0x1

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mAccessibilityPositionTable:Ljava/util/List;

    .line 182
    .line 183
    iget-object v0, v0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_4

    .line 199
    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroidx/preference/Preference;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    return-void
.end method
