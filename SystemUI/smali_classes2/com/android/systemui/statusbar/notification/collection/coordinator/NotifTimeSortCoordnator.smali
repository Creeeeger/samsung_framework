.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final channelArray:[Ljava/lang/String;

.field public final pkgArray:[Ljava/lang/String;

.field public final sectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;

.field public final sectionerForPriority:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 7
    .line 8
    const-string p1, "com.android.systemui"

    .line 9
    .line 10
    const-string p2, "com.samsung.android.incallui"

    .line 11
    .line 12
    const-string v0, "com.skt.prod.dialer"

    .line 13
    .line 14
    filled-new-array {p2, v0, p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->pkgArray:[Ljava/lang/String;

    .line 19
    .line 20
    const-string p1, "ZEN_ONGOING"

    .line 21
    .line 22
    const-string p2, "Ongoing_call"

    .line 23
    .line 24
    const-string v0, "NO_HUN_CHANNEL_CALL_CONTROL"

    .line 25
    .line 26
    filled-new-array {p2, v0, p1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->channelArray:[Ljava/lang/String;

    .line 31
    .line 32
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sectionerForPriority:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectionerForPriority$1;

    .line 38
    .line 39
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;

    .line 40
    .line 41
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->sectioner:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$sectioner$1;

    .line 45
    .line 46
    return-void
.end method

.method public static getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-wide v2, v2, Landroid/app/Notification;->when:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    return-wide v2

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final calculateRepresentativeNotificationTime(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 6
    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 10
    .line 11
    check-cast v2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 21
    .line 22
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 23
    .line 24
    new-instance v5, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 25
    .line 26
    invoke-direct {v5, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator$calculateGroupNotificationTime$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lkotlin/sequences/TransformingSequence;

    .line 35
    .line 36
    invoke-direct {v0, v5, v4}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lkotlin/sequences/TransformingSequence$iterator$1;

    .line 40
    .line 41
    invoke-direct {v4, v0}, Lkotlin/sequences/TransformingSequence$iterator$1;-><init>(Lkotlin/sequences/TransformingSequence;)V

    .line 42
    .line 43
    .line 44
    const-wide/high16 v5, -0x8000000000000000L

    .line 45
    .line 46
    const-wide v7, 0x7fffffffffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    move-wide v9, v5

    .line 52
    move-wide v11, v7

    .line 53
    :goto_0
    invoke-virtual {v4}, Lkotlin/sequences/TransformingSequence$iterator$1;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Lkotlin/sequences/TransformingSequence$iterator$1;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v13

    .line 69
    sub-long v15, v2, v13

    .line 70
    .line 71
    const-wide/16 v17, 0x0

    .line 72
    .line 73
    cmp-long v0, v15, v17

    .line 74
    .line 75
    if-lez v0, :cond_0

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_1
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v11

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    cmp-long v0, v9, v5

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    cmp-long v0, v11, v7

    .line 97
    .line 98
    if-nez v0, :cond_3

    .line 99
    .line 100
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    cmp-long v0, v11, v7

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    move-wide v9, v11

    .line 115
    :cond_4
    move-wide v0, v9

    .line 116
    :goto_2
    return-wide v0

    .line 117
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifTimeSortCoordnator;->getTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    return-wide v0
.end method
