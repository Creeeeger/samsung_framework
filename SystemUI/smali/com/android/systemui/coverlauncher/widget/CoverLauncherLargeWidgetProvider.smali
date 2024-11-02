.class public Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sDimension:Ljava/util/HashMap;

.field public static final sWidgetOptions:Ljava/util/HashMap;


# instance fields
.field public mCoverLauncherPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->sDimension:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->sWidgetOptions:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/Thread;

    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;

    .line 11
    .line 12
    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController$2;-><init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherWidgetViewController;[ILandroid/appwidget/AppWidgetManager;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getProviderType()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getWidgetOptions()Ljava/util/HashMap;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->sWidgetOptions:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getWidgetOptions()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getProviderType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v4, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v4, v3, v5, v3, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;-><init>(ZLjava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-object v2, v4

    .line 36
    :cond_0
    const-string/jumbo v0, "visible"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-boolean v1, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mVisibleOption:Z

    .line 44
    .line 45
    const-string v4, ", type="

    .line 46
    .line 47
    const-string v5, ", id="

    .line 48
    .line 49
    const-string v6, "CoverLauncherWidgetProvider"

    .line 50
    .line 51
    const/4 v7, 0x1

    .line 52
    iget v8, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mType:I

    .line 53
    .line 54
    if-eq v0, v1, :cond_3

    .line 55
    .line 56
    const-string/jumbo v1, "visible changed to "

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0, v5, p3, v4}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1, v8, v6}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v0, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mVisibleOption:Z

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string/jumbo v1, "notification_badging"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    move v0, v7

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v0, v3

    .line 87
    :goto_0
    if-eqz v0, :cond_3

    .line 88
    .line 89
    :goto_1
    move v0, v7

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move v0, v3

    .line 92
    :goto_2
    const-string v1, "appIconPackageName"

    .line 93
    .line 94
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v9, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mAppIconPkgOption:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_4

    .line 105
    .line 106
    const-string v9, "appIcon pkg is updated to "

    .line 107
    .line 108
    const-string v10, " from"

    .line 109
    .line 110
    invoke-static {v9, v1, v10}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    iget-object v10, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mAppIconPkgOption:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {v9, v8, v6}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mAppIconPkgOption:Ljava/lang/String;

    .line 132
    .line 133
    move v1, v7

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move v1, v3

    .line 136
    :goto_3
    const-string v9, "config_ui_mode"

    .line 137
    .line 138
    invoke-virtual {p4, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 139
    .line 140
    .line 141
    move-result p4

    .line 142
    iget v3, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mUiModeOption:I

    .line 143
    .line 144
    if-eq p4, v3, :cond_5

    .line 145
    .line 146
    const-string v1, "Ui mode is changed to "

    .line 147
    .line 148
    invoke-static {v1, p4, v5, p3, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v1, v8, v6}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iput p4, v2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;->mUiModeOption:I

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_5
    move v7, v1

    .line 159
    :goto_4
    if-eqz v7, :cond_6

    .line 160
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetViewWithProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_6
    if-eqz v0, :cond_7

    .line 166
    .line 167
    filled-new-array {p3}, [I

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {p1, p2, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 172
    .line 173
    .line 174
    :cond_7
    :goto_5
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "onDeleted, id="

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", type="

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getProviderType()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "CoverLauncherWidgetProvider"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    array-length p1, p2

    .line 38
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-ge v0, p1, :cond_0

    .line 40
    .line 41
    aget v1, p2, v0

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getWidgetOptions()Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "onReceive : "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "CoverLauncherWidgetProvider"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v1, "action_launch_app"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mCoverLauncherPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    new-instance v0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mCoverLauncherPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 46
    .line 47
    :cond_0
    const-string v0, "key_package_name"

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->mCoverLauncherPackageUtil:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    :try_start_0
    iget-object v3, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "Failed to get packageInfo "

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "CoverLauncherPackageUtils"

    .line 82
    .line 83
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->tryUpdateAppWidget()V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    :goto_0
    if-nez v1, :cond_1

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v1, "packageInfo is null : "

    .line 95
    .line 96
    .line 97
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetViewWithProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_1
    sget-object p1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->sDimension:Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 121
    .line 122
    .line 123
    const-string v2, "app_name"

    .line 124
    .line 125
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v1, "CVSE1045"

    .line 131
    .line 132
    invoke-static {v1, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForSystemUI(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 133
    .line 134
    .line 135
    new-instance p1, Ljava/lang/Thread;

    .line 136
    .line 137
    new-instance v1, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;

    .line 138
    .line 139
    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider$1;-><init>(Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;Ljava/lang/String;Landroid/content/Intent;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    const-string p0, "com.samsung.settings.ACTION_UPDATE_WIDGET"

    .line 150
    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-eqz p0, :cond_3

    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    if-eqz p0, :cond_3

    .line 162
    .line 163
    const-string p2, "appWidgetIds"

    .line 164
    .line 165
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string/jumbo v1, "update widget from settings, id="

    .line 176
    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    invoke-static {p1, p2, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 196
    .line 197
    .line 198
    :cond_3
    :goto_1
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onUpdate, id="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", type="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getProviderType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "CoverLauncherWidgetProvider"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    array-length v0, p3

    .line 38
    const/4 v1, 0x0

    .line 39
    move v2, v1

    .line 40
    :goto_0
    if-ge v2, v0, :cond_1

    .line 41
    .line 42
    aget v3, p3, v2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getWidgetOptions()Ljava/util/HashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->getProviderType()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    .line 61
    .line 62
    if-nez v6, :cond_0

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v6, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    invoke-direct {v6, v1, v7, v1, v5}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherWidgetOptions;-><init>(ZLjava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public updateAppWidgetViewWithProvider(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 1

    .line 1
    new-instance p0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v0, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;

    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1, p2, p0}, Lcom/android/systemui/coverlauncher/widget/CoverLauncherLargeWidgetProvider;->updateAppWidgetView(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
