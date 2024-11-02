.class public final Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mActions:Ljava/util/ArrayList;

.field public mAllowSystemGeneratedContextualActions:Z

.field public mBadgeIcon:I

.field public mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

.field public mCategory:Ljava/lang/String;

.field public final mChannelId:Ljava/lang/String;

.field public mColor:I

.field public mColorized:Z

.field public mColorizedSet:Z

.field public mContentInfo:Ljava/lang/CharSequence;

.field public mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public final mContext:Landroid/content/Context;

.field public mExtras:Landroid/os/Bundle;

.field public mFullScreenIntent:Landroid/app/PendingIntent;

.field public mGroupKey:Ljava/lang/String;

.field public mGroupSummary:Z

.field public final mInvisibleActions:Ljava/util/ArrayList;

.field public mLargeIcon:Landroid/graphics/Bitmap;

.field public mLocalOnly:Z

.field public mLocusId:Landroidx/core/content/LocusIdCompat;

.field public final mNotification:Landroid/app/Notification;

.field public mNumber:I

.field public final mPeople:Ljava/util/ArrayList;

.field public final mPersonList:Ljava/util/ArrayList;

.field public mPriority:I

.field public mProgress:I

.field public mProgressIndeterminate:Z

.field public mProgressMax:I

.field public mPublicVersion:Landroid/app/Notification;

.field public mSettingsText:Ljava/lang/CharSequence;

.field public mShortcutId:Ljava/lang/String;

.field public mShowWhen:Z

.field public final mSmallIcon:Landroid/graphics/drawable/Icon;

.field public mSortKey:Ljava/lang/String;

.field public mStyle:Landroidx/core/app/NotificationCompat$Style;

.field public mSubText:Ljava/lang/CharSequence;

.field public mTimeout:J

.field public mUseChronometer:Z

.field public mVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    .line 20
    invoke-direct {v0, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v8, "androidx.core.app.extra.COMPAT_TEMPLATE"

    .line 22
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 23
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, -0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "androidx.core.app.NotificationCompat$MessagingStyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    move v10, v5

    goto :goto_0

    :sswitch_1
    const-string v9, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_2
    const-string v9, "androidx.core.app.NotificationCompat$InboxStyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    move v10, v6

    goto :goto_0

    :sswitch_3
    const-string v9, "androidx.core.app.NotificationCompat$BigPictureStyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    move v10, v7

    goto :goto_0

    :sswitch_4
    const-string v9, "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 24
    :pswitch_0
    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_2

    .line 25
    :pswitch_1
    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto :goto_2

    .line 26
    :pswitch_2
    new-instance v8, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto :goto_2

    .line 27
    :pswitch_3
    new-instance v8, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_2

    .line 28
    :pswitch_4
    new-instance v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v8, "android.selfDisplayName"

    .line 29
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "android.messagingStyleUser"

    .line 30
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v8, "android.picture"

    .line 31
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "android.pictureIcon"

    .line 32
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto/16 :goto_4

    :cond_9
    const-string v8, "android.bigText"

    .line 33
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 34
    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto/16 :goto_6

    :cond_a
    const-string v8, "android.textLines"

    .line 35
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 36
    new-instance v8, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto/16 :goto_6

    :cond_b
    const-string v8, "android.template"

    .line 37
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    goto :goto_3

    .line 38
    :cond_c
    const-class v9, Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 39
    new-instance v8, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_6

    .line 40
    :cond_d
    const-class v9, Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 41
    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    goto :goto_6

    .line 42
    :cond_e
    const-class v9, Landroid/app/Notification$InboxStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 43
    new-instance v8, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    goto :goto_6

    .line 44
    :cond_f
    const-class v9, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 45
    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    goto :goto_6

    .line 46
    :cond_10
    const-class v9, Landroid/app/Notification$DecoratedCustomViewStyle;

    .line 47
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 48
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 49
    new-instance v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    goto :goto_6

    :cond_11
    :goto_3
    const/4 v8, 0x0

    goto :goto_6

    .line 50
    :cond_12
    :goto_4
    new-instance v8, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    goto :goto_6

    .line 51
    :cond_13
    :goto_5
    new-instance v8, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>()V

    :goto_6
    if-nez v8, :cond_14

    goto :goto_7

    .line 52
    :cond_14
    :try_start_0
    invoke-virtual {v8, v2}, Landroidx/core/app/NotificationCompat$Style;->restoreFromCompatExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    :goto_7
    const/4 v8, 0x0

    .line 53
    :goto_8
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 54
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 55
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.text"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 56
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 57
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.infoText"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 58
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 59
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.subText"

    invoke-virtual {v9, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 60
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 62
    invoke-static {v9}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mSettingsText:Ljava/lang/CharSequence;

    .line 63
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eq v9, v8, :cond_15

    .line 64
    iput-object v8, v0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    if-eqz v8, :cond_15

    .line 65
    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 66
    :cond_15
    iget-object v9, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 67
    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    .line 69
    iput-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;

    .line 70
    iget v9, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_16

    move v9, v7

    goto :goto_9

    :cond_16
    const/4 v9, 0x0

    .line 71
    :goto_9
    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mGroupSummary:Z

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v9

    if-nez v9, :cond_17

    const/4 v14, 0x0

    goto :goto_a

    .line 73
    :cond_17
    new-instance v14, Landroidx/core/content/LocusIdCompat;

    .line 74
    invoke-virtual {v9}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_42

    .line 76
    invoke-direct {v14, v9}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    .line 77
    :goto_a
    iput-object v14, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocusId:Landroidx/core/content/LocusIdCompat;

    .line 78
    iget-wide v14, v1, Landroid/app/Notification;->when:J

    .line 79
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide v14, v9, Landroid/app/Notification;->when:J

    .line 80
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "android.showWhen"

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 81
    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    .line 82
    iget-object v9, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.showChronometer"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 83
    iput-boolean v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mUseChronometer:Z

    .line 84
    iget v9, v1, Landroid/app/Notification;->flags:I

    const/16 v15, 0x10

    and-int/2addr v9, v15

    if-eqz v9, :cond_18

    move v9, v7

    goto :goto_b

    :cond_18
    const/4 v9, 0x0

    .line 85
    :goto_b
    invoke-virtual {v0, v15, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 86
    iget v9, v1, Landroid/app/Notification;->flags:I

    const/16 v15, 0x8

    and-int/2addr v9, v15

    if-eqz v9, :cond_19

    move v9, v7

    goto :goto_c

    :cond_19
    const/4 v9, 0x0

    .line 87
    :goto_c
    invoke-virtual {v0, v15, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 88
    iget v9, v1, Landroid/app/Notification;->flags:I

    and-int/2addr v9, v6

    if-eqz v9, :cond_1a

    move v9, v7

    goto :goto_d

    :cond_1a
    const/4 v9, 0x0

    .line 89
    :goto_d
    invoke-virtual {v0, v6, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 90
    iget v6, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_1b

    move v6, v7

    goto :goto_e

    :cond_1b
    const/4 v6, 0x0

    .line 91
    :goto_e
    iput-boolean v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 92
    iget-object v6, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 93
    iput-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v6

    .line 95
    iput v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 96
    iget-object v6, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 97
    iput-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mCategory:Ljava/lang/String;

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-nez v6, :cond_1c

    const/4 v6, 0x0

    goto :goto_f

    .line 99
    :cond_1c
    invoke-static {v6}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v6

    .line 100
    :goto_f
    iput-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mBubbleMetadata:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    .line 101
    iget v6, v1, Landroid/app/Notification;->number:I

    .line 102
    iput v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mNumber:I

    .line 103
    iget-object v6, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 104
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {v6}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 105
    iget-object v6, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 106
    iput-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 107
    iget-object v6, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 108
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v6, v9, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 109
    iget-object v6, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 110
    iget v9, v1, Landroid/app/Notification;->flags:I

    const/16 v15, 0x80

    and-int/2addr v9, v15

    if-eqz v9, :cond_1d

    move v9, v7

    goto :goto_10

    :cond_1d
    const/4 v9, 0x0

    .line 111
    :goto_10
    iput-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 112
    invoke-virtual {v0, v15, v9}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 113
    iget-object v6, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v9, v1, Landroid/app/Notification;->audioStreamType:I

    .line 114
    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v6, v15, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 115
    iput v9, v15, Landroid/app/Notification;->audioStreamType:I

    .line 116
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 117
    invoke-virtual {v6, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 118
    invoke-virtual {v6, v9}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 119
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    iput-object v6, v15, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 120
    iget-object v6, v1, Landroid/app/Notification;->vibrate:[J

    .line 121
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object v6, v9, Landroid/app/Notification;->vibrate:[J

    .line 122
    iget v6, v1, Landroid/app/Notification;->ledARGB:I

    iget v15, v1, Landroid/app/Notification;->ledOnMS:I

    iget v3, v1, Landroid/app/Notification;->ledOffMS:I

    .line 123
    iput v6, v9, Landroid/app/Notification;->ledARGB:I

    .line 124
    iput v15, v9, Landroid/app/Notification;->ledOnMS:I

    .line 125
    iput v3, v9, Landroid/app/Notification;->ledOffMS:I

    if-eqz v15, :cond_1e

    if-eqz v3, :cond_1e

    move v3, v7

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    .line 126
    :goto_11
    iget v6, v9, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, -0x2

    or-int/2addr v3, v6

    .line 127
    iput v3, v9, Landroid/app/Notification;->flags:I

    .line 128
    iget v6, v1, Landroid/app/Notification;->defaults:I

    .line 129
    iput v6, v9, Landroid/app/Notification;->defaults:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_1f

    or-int/2addr v3, v7

    .line 130
    iput v3, v9, Landroid/app/Notification;->flags:I

    .line 131
    :cond_1f
    iget v3, v1, Landroid/app/Notification;->priority:I

    .line 132
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 133
    iget v3, v1, Landroid/app/Notification;->color:I

    .line 134
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 135
    iget v3, v1, Landroid/app/Notification;->visibility:I

    .line 136
    iput v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 137
    iget-object v3, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 138
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 140
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    .line 142
    iput-wide v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mTimeout:J

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 144
    iput-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mShortcutId:Ljava/lang/String;

    const-string v3, "android.progressMax"

    .line 145
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "android.progress"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v15, "android.progressIndeterminate"

    .line 146
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 147
    iput v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressMax:I

    .line 148
    iput v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgress:I

    .line 149
    iput-boolean v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mProgressIndeterminate:Z

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v5

    .line 151
    iput-boolean v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    .line 152
    iget v5, v1, Landroid/app/Notification;->icon:I

    iget v7, v1, Landroid/app/Notification;->iconLevel:I

    .line 153
    iget-object v9, v0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput v5, v9, Landroid/app/Notification;->icon:I

    .line 154
    iput v7, v9, Landroid/app/Notification;->iconLevel:I

    .line 155
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "invisible_actions"

    const-string v9, "android.car.EXTENSIONS"

    const-string v4, "android.people"

    move-object/from16 v16, v2

    const-string v2, "android.people.list"

    const-string v0, "android.colorized"

    move-object/from16 v17, v8

    const-string v8, "android.chronometerCountDown"

    if-nez v5, :cond_20

    move-object v3, v7

    const/4 v5, 0x0

    goto :goto_13

    .line 156
    :cond_20
    new-instance v5, Landroid/os/Bundle;

    move-object/from16 v18, v7

    iget-object v7, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v5, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v5, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v5, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.CHANNEL_ID"

    .line 161
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v7, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 162
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.sortKey"

    .line 171
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.groupKey"

    .line 172
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.isGroupSummary"

    .line 173
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.localOnly"

    .line 174
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android.support.actionExtras"

    .line 175
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 177
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v3, v18

    .line 178
    invoke-virtual {v6, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v5, v9, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    :cond_21
    move-object/from16 v3, v18

    :goto_12
    if-eqz v17, :cond_22

    move-object/from16 v6, v17

    .line 180
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Style;->clearCompatExtraKeys(Landroid/os/Bundle;)V

    :cond_22
    :goto_13
    move-object v6, v0

    move-object/from16 v0, p0

    if-eqz v5, :cond_24

    .line 181
    iget-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v7, :cond_23

    .line 182
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    goto :goto_14

    .line 183
    :cond_23
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 184
    :cond_24
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iput-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 185
    iget-object v5, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_32

    array-length v7, v5

    if-eqz v7, :cond_32

    .line 186
    array-length v7, v5

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v7, :cond_32

    aget-object v11, v5, v10

    .line 187
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    if-eqz v12, :cond_25

    .line 188
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-static {v12}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    .line 189
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v14, v11, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v15, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v13, v12, v14, v15}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_16

    .line 190
    :cond_25
    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget v12, v11, Landroid/app/Notification$Action;->icon:I

    iget-object v14, v11, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v15, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v13, v12, v14, v15}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 191
    :goto_16
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_29

    .line 192
    array-length v14, v12

    if-eqz v14, :cond_29

    .line 193
    array-length v14, v12

    const/4 v15, 0x0

    :goto_17
    if-ge v15, v14, :cond_29

    aget-object v17, v12, v15

    move-object/from16 v18, v5

    .line 194
    new-instance v5, Landroidx/core/app/RemoteInput$Builder;

    move/from16 v19, v7

    .line 195
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 197
    iput-object v7, v5, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 198
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 199
    iput-object v7, v5, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 200
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v7

    .line 201
    iput-boolean v7, v5, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    .line 202
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v20, v12

    if-eqz v7, :cond_26

    .line 203
    iget-object v12, v5, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 204
    :cond_26
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v7

    .line 205
    iget-object v12, v5, Landroidx/core/app/RemoteInput$Builder;->mAllowedDataTypes:Ljava/util/Set;

    if-eqz v7, :cond_27

    .line 206
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    check-cast v7, Ljava/lang/String;

    move/from16 v29, v14

    .line 207
    move-object v14, v12

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v22

    move/from16 v14, v29

    goto :goto_18

    :cond_27
    move/from16 v29, v14

    .line 208
    invoke-virtual/range {v17 .. v17}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v26

    .line 209
    new-instance v7, Landroidx/core/app/RemoteInput;

    iget-object v14, v5, Landroidx/core/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    move-object/from16 v17, v6

    iget-object v6, v5, Landroidx/core/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    move-object/from16 v30, v8

    iget-object v8, v5, Landroidx/core/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    move-object/from16 v31, v2

    iget-boolean v2, v5, Landroidx/core/app/RemoteInput$Builder;->mAllowFreeFormTextInput:Z

    iget-object v5, v5, Landroidx/core/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v21, v7

    move-object/from16 v22, v14

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move/from16 v25, v2

    move-object/from16 v27, v5

    move-object/from16 v28, v12

    invoke-direct/range {v21 .. v28}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    .line 210
    iget-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v2, :cond_28

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 212
    :cond_28
    iget-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move/from16 v7, v19

    move-object/from16 v12, v20

    move/from16 v14, v29

    move-object/from16 v8, v30

    move-object/from16 v2, v31

    goto/16 :goto_17

    :cond_29
    move-object/from16 v31, v2

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move/from16 v19, v7

    move-object/from16 v30, v8

    .line 213
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v2

    iput-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 214
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v2

    .line 215
    iput v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    .line 216
    invoke-virtual {v11}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v2

    .line 217
    iput-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    .line 218
    invoke-virtual {v11}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v2

    .line 219
    iput-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    .line 220
    iget-boolean v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    if-nez v2, :cond_2a

    goto :goto_19

    .line 221
    :cond_2a
    iget-object v2, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_31

    .line 222
    :goto_19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v6, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v6, :cond_2e

    .line 225
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/app/RemoteInput;

    .line 226
    iget-boolean v8, v7, Landroidx/core/app/RemoteInput;->mAllowFreeFormTextInput:Z

    if-nez v8, :cond_2c

    .line 227
    iget-object v8, v7, Landroidx/core/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_2b

    array-length v8, v8

    if-nez v8, :cond_2c

    .line 228
    :cond_2b
    iget-object v8, v7, Landroidx/core/app/RemoteInput;->mAllowedDataTypes:Ljava/util/Set;

    if-eqz v8, :cond_2c

    .line 229
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2c

    const/4 v8, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v8, 0x0

    :goto_1b
    if-eqz v8, :cond_2d

    .line 230
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 231
    :cond_2d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 232
    :cond_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    const/16 v38, 0x0

    goto :goto_1c

    .line 233
    :cond_2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/core/app/RemoteInput;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/core/app/RemoteInput;

    move-object/from16 v38, v2

    .line 234
    :goto_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v37, 0x0

    goto :goto_1d

    .line 235
    :cond_30
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/core/app/RemoteInput;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/core/app/RemoteInput;

    move-object/from16 v37, v2

    .line 236
    :goto_1d
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget-object v5, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v6, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v7, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v11, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    iget v12, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mSemanticAction:I

    iget-boolean v14, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mShowsUserInterface:Z

    iget-boolean v15, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mIsContextual:Z

    iget-boolean v13, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->mAuthenticationRequired:Z

    move-object/from16 v32, v2

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v41, v14

    move/from16 v42, v15

    move/from16 v43, v13

    invoke-direct/range {v32 .. v43}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 237
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move/from16 v7, v19

    move-object/from16 v8, v30

    move-object/from16 v2, v31

    goto/16 :goto_15

    .line 238
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Contextual Actions must contain a valid PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move-object/from16 v31, v2

    move-object/from16 v17, v6

    move-object/from16 v30, v8

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v5, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 241
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_33

    goto/16 :goto_24

    .line 242
    :cond_33
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_39

    const/4 v5, 0x0

    .line 243
    :goto_1e
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 244
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 245
    sget-object v7, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    const-string v7, "extras"

    .line 246
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_34

    const-string v9, "android.support.allowGeneratedReplies"

    const/4 v10, 0x0

    .line 247
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move/from16 v25, v8

    goto :goto_1f

    :cond_34
    const/4 v10, 0x0

    move/from16 v25, v10

    .line 248
    :goto_1f
    new-instance v8, Landroidx/core/app/NotificationCompat$Action;

    const-string v9, "icon"

    .line 249
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v9, "title"

    .line 250
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    const-string v9, "actionIntent"

    .line 251
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Landroid/app/PendingIntent;

    .line 252
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v7, "remoteInputs"

    .line 253
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 254
    instance-of v11, v9, [Landroid/os/Bundle;

    if-nez v11, :cond_36

    if-nez v9, :cond_35

    goto :goto_20

    .line 255
    :cond_35
    array-length v11, v9

    const-class v12, [Landroid/os/Bundle;

    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    .line 256
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_21

    .line 257
    :cond_36
    :goto_20
    check-cast v9, [Landroid/os/Bundle;

    .line 258
    :goto_21
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v23

    const-string v7, "dataOnlyRemoteInputs"

    .line 259
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 260
    instance-of v11, v9, [Landroid/os/Bundle;

    if-nez v11, :cond_38

    if-nez v9, :cond_37

    goto :goto_22

    .line 261
    :cond_37
    array-length v11, v9

    const-class v12, [Landroid/os/Bundle;

    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/os/Bundle;

    .line 262
    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_23

    .line 263
    :cond_38
    :goto_22
    check-cast v9, [Landroid/os/Bundle;

    .line 264
    :goto_23
    invoke-static {v9}, Landroidx/core/app/NotificationCompatJellybean;->fromBundleArray([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v24

    const-string/jumbo v7, "semanticAction"

    .line 265
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    const-string/jumbo v7, "showsUserInterface"

    .line 266
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 267
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1e

    :cond_39
    :goto_24
    const/4 v10, 0x0

    .line 268
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 269
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$Action;

    if-eqz v3, :cond_3a

    .line 270
    iget-object v5, v0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 271
    :cond_3b
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 272
    array-length v3, v2

    if-eqz v3, :cond_3d

    .line 273
    array-length v3, v2

    move v4, v10

    :goto_26
    if-ge v4, v3, :cond_3d

    aget-object v5, v2, v4

    if-eqz v5, :cond_3c

    .line 274
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 275
    iget-object v6, v0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 276
    :cond_3d
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v2, v31

    .line 277
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Person;

    .line 280
    invoke-static {v2}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v2

    .line 281
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3e
    move-object/from16 v1, v16

    move-object/from16 v2, v30

    .line 282
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 283
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 284
    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_3f

    .line 285
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 286
    :cond_3f
    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;

    .line 287
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_40
    move-object/from16 v2, v17

    .line 288
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 289
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 290
    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColorized:Z

    const/4 v1, 0x1

    .line 291
    iput-boolean v1, v0, Landroidx/core/app/NotificationCompat$Builder;->mColorizedSet:Z

    :cond_41
    return-void

    .line 292
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x2ab80d9c -> :sswitch_4
        -0xa3fb04d -> :sswitch_3
        0x366a678b -> :sswitch_2
        0x36cfe824 -> :sswitch_1
        0x7c9f11cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mInvisibleActions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mShowWhen:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mLocalOnly:Z

    .line 7
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mColor:I

    .line 8
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 9
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mBadgeIcon:I

    .line 10
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 11
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->mChannelId:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    .line 14
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 15
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPriority:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;

    .line 17
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mAllowSystemGeneratedContextualActions:Z

    return-void
.end method

.method public static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final setFlag(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/2addr p1, p2

    .line 8
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p2, p0, Landroid/app/Notification;->flags:I

    .line 12
    .line 13
    not-int p1, p1

    .line 14
    and-int/2addr p1, p2

    .line 15
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final setStyle(Landroidx/core/app/NotificationCompat$Style;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/core/app/NotificationCompat$Style;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Style;->setBuilder(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
