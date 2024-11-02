.class public final Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field public mAppList:Ljava/util/ArrayList;

.field public final mAppWidgetId:I

.field public final mBadgeUtils:Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

.field public final mContext:Landroid/content/Context;

.field public final mItemList:Ljava/util/ArrayList;

.field public mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

.field public final mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

.field public final mType:I

.field public final mWidgetUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "appWidgetId"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppWidgetId:I

    .line 21
    .line 22
    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 28
    .line 29
    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mWidgetUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;

    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mBadgeUtils:Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

    .line 42
    .line 43
    const-string/jumbo v2, "widgetType"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iput p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mType:I

    .line 51
    .line 52
    iget-object p2, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const-string/jumbo v0, "notification_badging"

    .line 59
    .line 60
    .line 61
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    const/4 v0, 0x1

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    move v1, v0

    .line 69
    :cond_0
    if-eqz v1, :cond_1

    .line 70
    .line 71
    new-instance p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    .line 72
    .line 73
    invoke-direct {p2}, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 79
    .line 80
    .line 81
    new-instance v1, Landroid/content/ComponentName;

    .line 82
    .line 83
    const-class v2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    .line 84
    .line 85
    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-virtual {p2, p1, v1, v2}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 93
    .line 94
    .line 95
    iput-boolean v0, p2, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    .line 103
    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->getAppListFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getLoadingView()Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v1, 0x7f0d052a

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->getCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lt p1, v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/widget/RemoteViews;

    .line 25
    .line 26
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->getAppListFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mType:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->setItemData(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDataSetChanged()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onDataSetChanged, id="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppWidgetId:I

    .line 10
    .line 11
    const-string v2, "CoverLauncherRemoteViewsFactory"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->getAppListFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mType:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->setItemData(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->sBlockChannelSet:Ljava/util/HashSet;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;->mIsRegister:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mNotificationListener:Lcom/android/systemui/coverlauncher/utils/badge/NotificationListener;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final setItemData(I)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v4, v0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v4, v3, :cond_16

    .line 18
    .line 19
    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppList:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    .line 26
    .line 27
    iget-object v6, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mPackageName:Ljava/lang/String;

    .line 28
    .line 29
    iget v7, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->mProfileId:I

    .line 30
    .line 31
    const-string v0, "createRemoteViews, packageName="

    .line 32
    .line 33
    const-string v8, ", type="

    .line 34
    .line 35
    const-string v9, ", id="

    .line 36
    .line 37
    invoke-static {v0, v6, v8, v2, v9}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v8, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mAppWidgetId:I

    .line 42
    .line 43
    const-string v9, "CoverLauncherRemoteViewsFactory"

    .line 44
    .line 45
    invoke-static {v0, v8, v9}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mWidgetUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;

    .line 49
    .line 50
    iget-object v8, v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v9, 0x1

    .line 54
    if-ne v2, v0, :cond_0

    .line 55
    .line 56
    const v0, 0x7f0d0527

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    if-ne v2, v9, :cond_2

    .line 61
    .line 62
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const v0, 0x7f0d0529

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const v0, 0x7f0d0528

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const v0, 0x7f0d0526

    .line 85
    .line 86
    .line 87
    :goto_1
    new-instance v10, Landroid/widget/RemoteViews;

    .line 88
    .line 89
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-direct {v10, v11, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    new-instance v11, Landroid/content/Intent;

    .line 97
    .line 98
    sget-object v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetUtils;->sWidgetClassArray:[Ljava/lang/Class;

    .line 99
    .line 100
    aget-object v0, v0, v2

    .line 101
    .line 102
    invoke-direct {v11, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "action_launch_app"

    .line 106
    .line 107
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    new-instance v12, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 111
    .line 112
    invoke-direct {v12, v8}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v12, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 116
    .line 117
    :try_start_0
    invoke-virtual {v0, v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    const/16 v14, 0x30

    .line 122
    .line 123
    invoke-virtual {v0, v13, v14}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 130
    .line 131
    const/high16 v14, 0x40000000    # 2.0f

    .line 132
    .line 133
    and-int/2addr v13, v14

    .line 134
    if-eqz v13, :cond_3

    .line 135
    .line 136
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getGrayFilter()Landroid/graphics/ColorFilter;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v13, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v14, "Failed to get Application Icon "

    .line 148
    .line 149
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v14, ", profileId : "

    .line 156
    .line 157
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    const-string v14, "CoverLauncherPackageUtils"

    .line 168
    .line 169
    invoke-static {v14, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_4
    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 180
    .line 181
    if-eqz v12, :cond_5

    .line 182
    .line 183
    move-object v12, v0

    .line 184
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 185
    .line 186
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 187
    .line 188
    .line 189
    move-result-object v13

    .line 190
    if-eqz v13, :cond_5

    .line 191
    .line 192
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_5

    .line 197
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    if-lez v12, :cond_7

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-gtz v12, :cond_6

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 219
    .line 220
    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    goto :goto_4

    .line 225
    :cond_7
    :goto_3
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 226
    .line 227
    invoke-static {v9, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 228
    .line 229
    .line 230
    move-result-object v12

    .line 231
    :goto_4
    new-instance v13, Landroid/graphics/Canvas;

    .line 232
    .line 233
    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    invoke-virtual {v0, v5, v5, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    .line 249
    .line 250
    move-object v0, v12

    .line 251
    :goto_5
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    const v12, 0x7f07160f

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimension(I)F

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    float-to-int v8, v8

    .line 263
    invoke-static {v0, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    const v8, 0x7f0a00d8

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 271
    .line 272
    .line 273
    :goto_6
    new-instance v0, Landroid/os/Bundle;

    .line 274
    .line 275
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 276
    .line 277
    .line 278
    const-string v8, "key_package_name"

    .line 279
    .line 280
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v8, "key_profile_id"

    .line 284
    .line 285
    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 289
    .line 290
    .line 291
    const v0, 0x7f0a00e1

    .line 292
    .line 293
    .line 294
    invoke-virtual {v10, v0, v11}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 295
    .line 296
    .line 297
    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 298
    .line 299
    invoke-virtual {v0, v6}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const/4 v8, 0x2

    .line 304
    if-eq v2, v8, :cond_8

    .line 305
    .line 306
    const v8, 0x7f0a00ec

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mBadgeUtils:Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iget-object v0, v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->mContext:Landroid/content/Context;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    const-string/jumbo v12, "notification_badging"

    .line 329
    .line 330
    .line 331
    invoke-static {v11, v12, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 332
    .line 333
    .line 334
    move-result v11

    .line 335
    if-eqz v11, :cond_9

    .line 336
    .line 337
    move v11, v9

    .line 338
    goto :goto_7

    .line 339
    :cond_9
    move v11, v5

    .line 340
    :goto_7
    const v12, 0x7f0a00d9

    .line 341
    .line 342
    .line 343
    if-eqz v11, :cond_15

    .line 344
    .line 345
    invoke-static {}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->getInstance()Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;

    .line 346
    .line 347
    .line 348
    move-result-object v11

    .line 349
    new-instance v13, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v14, ":"

    .line 358
    .line 359
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v7

    .line 369
    iget-object v11, v11, Lcom/android/systemui/coverlauncher/utils/badge/BadgeManager;->mItems:Ljava/util/HashMap;

    .line 370
    .line 371
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    check-cast v7, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    .line 376
    .line 377
    if-eqz v7, :cond_f

    .line 378
    .line 379
    new-instance v11, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string/jumbo v13, "packageName : "

    .line 382
    .line 383
    .line 384
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v13, ", badgeItem : "

    .line 391
    .line 392
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    const-string v13, "BadgeUtils"

    .line 403
    .line 404
    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    sget-object v15, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->BADGE_URI:Landroid/net/Uri;

    .line 412
    .line 413
    sget-object v16, Lcom/android/systemui/coverlauncher/utils/badge/BadgeUtils;->COLUMNS:[Ljava/lang/String;

    .line 414
    .line 415
    const-string/jumbo v17, "package = ?"

    .line 416
    .line 417
    .line 418
    filled-new-array {v6}, [Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v18

    .line 422
    const/16 v19, 0x0

    .line 423
    .line 424
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    if-nez v6, :cond_a

    .line 429
    .line 430
    :try_start_1
    const-string v9, "Cursor is null"

    .line 431
    .line 432
    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 437
    .line 438
    .line 439
    move-result v11

    .line 440
    if-gtz v11, :cond_b

    .line 441
    .line 442
    const-string v9, "Cursor count is invalid"

    .line 443
    .line 444
    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_b
    move v11, v9

    .line 449
    move v9, v5

    .line 450
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 451
    .line 452
    .line 453
    move-result v14

    .line 454
    if-eqz v14, :cond_c

    .line 455
    .line 456
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v9

    .line 464
    const/4 v11, 0x2

    .line 465
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 466
    .line 467
    .line 468
    move-result v11

    .line 469
    new-instance v14, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    .line 473
    .line 474
    const-string v15, "badge provider info, pkgName : "

    .line 475
    .line 476
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v5, ", className : "

    .line 483
    .line 484
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v5, ", badgeCount : "

    .line 491
    .line 492
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .line 504
    .line 505
    const/4 v5, 0x0

    .line 506
    const/4 v9, 0x1

    .line 507
    move/from16 v20, v11

    .line 508
    .line 509
    move v11, v9

    .line 510
    move/from16 v9, v20

    .line 511
    .line 512
    goto :goto_8

    .line 513
    :cond_c
    move v5, v9

    .line 514
    :goto_9
    if-eqz v6, :cond_d

    .line 515
    .line 516
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 517
    .line 518
    .line 519
    :cond_d
    iget v6, v7, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    .line 520
    .line 521
    const/16 v7, 0x3e7

    .line 522
    .line 523
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 528
    .line 529
    .line 530
    move-result v5

    .line 531
    goto :goto_b

    .line 532
    :catchall_0
    move-exception v0

    .line 533
    move-object v1, v0

    .line 534
    if-eqz v6, :cond_e

    .line 535
    .line 536
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 537
    .line 538
    .line 539
    goto :goto_a

    .line 540
    :catchall_1
    move-exception v0

    .line 541
    move-object v2, v0

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 543
    .line 544
    .line 545
    :cond_e
    :goto_a
    throw v1

    .line 546
    :cond_f
    const/4 v5, 0x0

    .line 547
    :goto_b
    if-nez v5, :cond_10

    .line 548
    .line 549
    const/16 v0, 0x8

    .line 550
    .line 551
    invoke-virtual {v10, v12, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 552
    .line 553
    .line 554
    const v5, 0x7f0a00db

    .line 555
    .line 556
    .line 557
    invoke-virtual {v10, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 558
    .line 559
    .line 560
    const v5, 0x7f0a00da

    .line 561
    .line 562
    .line 563
    invoke-virtual {v10, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 564
    .line 565
    .line 566
    const v5, 0x7f0a00de

    .line 567
    .line 568
    .line 569
    invoke-virtual {v10, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 570
    .line 571
    .line 572
    const v0, 0x7f0a00d8

    .line 573
    .line 574
    .line 575
    const/4 v5, 0x0

    .line 576
    goto/16 :goto_f

    .line 577
    .line 578
    :cond_10
    const/16 v6, 0x8

    .line 579
    .line 580
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 581
    .line 582
    .line 583
    move-result-object v7

    .line 584
    const-string v9, "badge_app_icon_type"

    .line 585
    .line 586
    const/4 v11, 0x0

    .line 587
    invoke-static {v7, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 588
    .line 589
    .line 590
    move-result v7

    .line 591
    if-eqz v7, :cond_11

    .line 592
    .line 593
    const/4 v7, 0x1

    .line 594
    goto :goto_c

    .line 595
    :cond_11
    move v7, v11

    .line 596
    :goto_c
    if-eqz v7, :cond_12

    .line 597
    .line 598
    invoke-virtual {v10, v12, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 599
    .line 600
    .line 601
    const v7, 0x7f0a00db

    .line 602
    .line 603
    .line 604
    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 605
    .line 606
    .line 607
    const v7, 0x7f0a00da

    .line 608
    .line 609
    .line 610
    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 611
    .line 612
    .line 613
    const v6, 0x7f0a00de

    .line 614
    .line 615
    .line 616
    invoke-virtual {v10, v6, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 617
    .line 618
    .line 619
    goto :goto_d

    .line 620
    :cond_12
    const v7, 0x7f0a00db

    .line 621
    .line 622
    .line 623
    const v9, 0x7f0a00da

    .line 624
    .line 625
    .line 626
    const v13, 0x7f0a00de

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10, v13, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 630
    .line 631
    .line 632
    const/16 v13, 0x63

    .line 633
    .line 634
    if-le v5, v13, :cond_13

    .line 635
    .line 636
    invoke-virtual {v10, v12, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v10, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 643
    .line 644
    .line 645
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-virtual {v10, v9, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 650
    .line 651
    .line 652
    goto :goto_d

    .line 653
    :cond_13
    const/16 v13, 0x9

    .line 654
    .line 655
    if-le v5, v13, :cond_14

    .line 656
    .line 657
    invoke-virtual {v10, v12, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v10, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v10, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 664
    .line 665
    .line 666
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v6

    .line 670
    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 671
    .line 672
    .line 673
    goto :goto_d

    .line 674
    :cond_14
    invoke-virtual {v10, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v10, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 681
    .line 682
    .line 683
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    invoke-virtual {v10, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 688
    .line 689
    .line 690
    :goto_d
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    const v5, 0x7f130c14

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    move v5, v11

    .line 704
    goto :goto_e

    .line 705
    :cond_15
    const/16 v0, 0x8

    .line 706
    .line 707
    const v6, 0x7f0a00db

    .line 708
    .line 709
    .line 710
    const v7, 0x7f0a00da

    .line 711
    .line 712
    .line 713
    invoke-virtual {v10, v12, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v10, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v10, v7, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 720
    .line 721
    .line 722
    const v6, 0x7f0a00de

    .line 723
    .line 724
    .line 725
    invoke-virtual {v10, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 726
    .line 727
    .line 728
    :goto_e
    const v0, 0x7f0a00d8

    .line 729
    .line 730
    .line 731
    :goto_f
    invoke-virtual {v10, v0, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 732
    .line 733
    .line 734
    iget-object v0, v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherRemoteViewsFactory;->mItemList:Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    add-int/lit8 v4, v4, 0x1

    .line 740
    .line 741
    goto/16 :goto_0

    .line 742
    .line 743
    :cond_16
    return-void
.end method
