.class public final Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAppUid:I

.field public final mCurrentAlertAllowed:Z

.field public final mINotificationManager:Landroid/app/INotificationManager;

.field public final mPackageBlocked:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mUpdateAlertAllowed:Z


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;Ljava/lang/String;IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mCurrentAlertAllowed:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mUpdateAlertAllowed:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageBlocked:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mUpdateAlertAllowed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    .line 11
    .line 12
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mCurrentAlertAllowed:Z

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v4, v1

    .line 19
    :goto_0
    invoke-interface {v0, v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageBlocked:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    .line 31
    .line 32
    invoke-interface {v0, v2, p0, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p0

    .line 37
    const-string v0, "InfoGuts"

    .line 38
    .line 39
    const-string v1, "Unable to update notification importance"

    .line 40
    .line 41
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_1
    return-void
.end method
