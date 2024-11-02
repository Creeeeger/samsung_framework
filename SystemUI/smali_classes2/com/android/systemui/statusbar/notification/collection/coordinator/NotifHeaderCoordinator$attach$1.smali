.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$attach$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBeforeRenderList(Ljava/util/List;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$extractAllRepresentativeEntries$1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$extractAllRepresentativeEntries$1;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$onBeforeRenderListListener$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator$onBeforeRenderListListener$1;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_d

    .line 36
    .line 37
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifHeaderCoordinator;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 44
    .line 45
    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 46
    .line 47
    iget v2, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 54
    .line 55
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsGroupHeaderContainAtMark:Z

    .line 56
    .line 57
    const/16 v3, 0x8

    .line 58
    .line 59
    const v4, 0x1020343

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    if-eqz v2, :cond_4

    .line 65
    .line 66
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/widget/TextView;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move-object v2, v5

    .line 82
    :goto_0
    if-nez v2, :cond_2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    if-eqz v1, :cond_3

    .line 86
    .line 87
    move v7, v3

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v7, v6

    .line 90
    :goto_1
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mLayouts:[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 94
    .line 95
    array-length v2, p1

    .line 96
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, [Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 101
    .line 102
    array-length v2, p1

    .line 103
    move v7, v6

    .line 104
    :goto_3
    if-ge v7, v2, :cond_0

    .line 105
    .line 106
    aget-object v8, p1, v7

    .line 107
    .line 108
    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsContractedHeaderContainAtMark:Z

    .line 109
    .line 110
    if-eqz v9, :cond_8

    .line 111
    .line 112
    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    .line 113
    .line 114
    if-eqz v9, :cond_5

    .line 115
    .line 116
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Landroid/widget/TextView;

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    move-object v9, v5

    .line 124
    :goto_4
    if-nez v9, :cond_6

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_6
    if-eqz v1, :cond_7

    .line 128
    .line 129
    move v10, v3

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    move v10, v6

    .line 132
    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_8
    :goto_6
    iget-boolean v9, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mIsExpandedHeaderContainAtMark:Z

    .line 136
    .line 137
    if-eqz v9, :cond_c

    .line 138
    .line 139
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    .line 140
    .line 141
    if-eqz v8, :cond_9

    .line 142
    .line 143
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Landroid/widget/TextView;

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_9
    move-object v8, v5

    .line 151
    :goto_7
    if-nez v8, :cond_a

    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_a
    if-eqz v1, :cond_b

    .line 155
    .line 156
    move v9, v3

    .line 157
    goto :goto_8

    .line 158
    :cond_b
    move v9, v6

    .line 159
    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_d
    return-void
.end method
