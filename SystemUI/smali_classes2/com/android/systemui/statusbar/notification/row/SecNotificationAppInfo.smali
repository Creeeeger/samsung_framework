.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;


# instance fields
.field public mActualHeight:I

.field public mAlertAllowed:Z

.field public mAppName:Ljava/lang/String;

.field public mAppUid:I

.field public mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field public mDoneButton:Landroid/widget/TextView;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public mINotificationManager:Landroid/app/INotificationManager;

.field public mIsDeviceProvisioned:Z

.field public mIsNonblockable:Z

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNumUniqueChannelsInRow:I

.field public final mOnCancelSettings:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;

.field public mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

.field public mPackageDisableContent:Landroid/view/View;

.field public mPackageEnableContent:Landroid/view/View;

.field public mPackageIsBlocked:Z

.field public mPackageName:Ljava/lang/String;

.field public mPkgIcon:Landroid/graphics/drawable/Drawable;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPressedApply:Z

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field public mSettingToggle:Landroid/widget/TextView;

.field public mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field mSkipPost:Z

.field public mToggleSettingsButton:Landroid/widget/TextView;

.field public mTurnOffButton:Landroid/widget/TextView;

.field public mTurnOffConFirmButton:Landroid/widget/TextView;

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSkipPost:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 8
    .line 9
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnCancelSettings:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final bindBottomButtons(Z)V
    .locals 4

    .line 1
    const v0, 0x7f0a035e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const v3, 0x7f130c13

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const v3, 0x7f130c35

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnCancelSettings:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f0a0783

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/16 v2, 0x8

    .line 63
    .line 64
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    .line 68
    .line 69
    const v0, 0x7f130f50

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    .line 76
    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final bindInlineControls()V
    .locals 5

    .line 1
    const v0, 0x7f0a0bf1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleSettingsButton:Landroid/widget/TextView;

    .line 11
    .line 12
    const v1, 0x7f130c3c

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleSettingsButton:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleSettingsButton:Landroid/widget/TextView;

    .line 25
    .line 26
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-ltz v1, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsDeviceProvisioned:Z

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    .line 41
    .line 42
    if-le v4, v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 46
    .line 47
    :goto_0
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    invoke-direct {v4, p0, v3, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/app/NotificationChannel;I)V

    .line 50
    .line 51
    .line 52
    move-object v3, v4

    .line 53
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const v0, 0x7f0a0bf0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 66
    .line 67
    const v1, 0x7f130f4f

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    .line 76
    .line 77
    xor-int/2addr v1, v2

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 82
    .line 83
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    const v1, 0x3ecccccd    # 0.4f

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 97
    .line 98
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateInlineButtonLayout()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;Lcom/android/internal/logging/UiEventLogger;ZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 2
    .line 3
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 12
    .line 13
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 16
    .line 17
    check-cast p5, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    .line 24
    .line 25
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    .line 27
    iget-object p2, p6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 40
    .line 41
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    .line 42
    .line 43
    .line 44
    iput-boolean p10, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsDeviceProvisioned:Z

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 69
    .line 70
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    .line 71
    .line 72
    const/4 p4, 0x0

    .line 73
    invoke-interface {p1, p3, p2, p4}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    .line 74
    .line 75
    .line 76
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    .line 77
    .line 78
    if-eqz p1, :cond_e

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    if-ne p1, p2, :cond_0

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p3, "miscellaneous"

    .line 90
    .line 91
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 95
    .line 96
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 99
    .line 100
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 101
    .line 102
    .line 103
    move-result p5

    .line 104
    invoke-interface {p1, p3, p5}, Landroid/app/INotificationManager;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception p1

    .line 110
    const-string p3, "InfoGuts"

    .line 111
    .line 112
    const-string p5, "Unable to getNotificationAlertsEnabledForPackage"

    .line 113
    .line 114
    invoke-static {p3, p5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    .line 118
    .line 119
    const p1, 0x7f0a07af

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageEnableContent:Landroid/view/View;

    .line 127
    .line 128
    const p1, 0x7f0a07ac

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageDisableContent:Landroid/view/View;

    .line 136
    .line 137
    const p1, 0x7f0a07ad

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    check-cast p2, Landroid/widget/TextView;

    .line 145
    .line 146
    const p3, 0x7f130f51

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 150
    .line 151
    .line 152
    const p2, 0x7f0a07ae

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    check-cast p3, Landroid/widget/TextView;

    .line 160
    .line 161
    const p5, 0x7f130f52

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(I)V

    .line 165
    .line 166
    .line 167
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 168
    .line 169
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageEnableContent:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageDisableContent:Landroid/view/View;

    .line 175
    .line 176
    const/16 p5, 0x8

    .line 177
    .line 178
    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    const/4 p3, 0x0

    .line 182
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    :try_start_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 185
    .line 186
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 187
    .line 188
    const p6, 0xc2200

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p5, p6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 192
    .line 193
    .line 194
    move-result-object p3

    .line 195
    if-eqz p3, :cond_1

    .line 196
    .line 197
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    invoke-virtual {p5, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 200
    .line 201
    .line 202
    move-result-object p5

    .line 203
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p5

    .line 207
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 208
    .line 209
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 210
    .line 211
    invoke-virtual {p5, p3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :catch_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 219
    .line 220
    invoke-virtual {p3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 221
    .line 222
    .line 223
    move-result-object p3

    .line 224
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 225
    .line 226
    :cond_1
    :goto_1
    const p3, 0x7f0a07ed

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object p3

    .line 233
    check-cast p3, Landroid/widget/ImageView;

    .line 234
    .line 235
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    .line 239
    .line 240
    const p3, 0x7f0a07ee

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object p5

    .line 247
    check-cast p5, Landroid/widget/TextView;

    .line 248
    .line 249
    iget-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p5, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindInlineControls()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindBottomButtons(Z)V

    .line 258
    .line 259
    .line 260
    const p4, 0x7f0a0bf1

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object p4

    .line 267
    check-cast p4, Landroid/widget/TextView;

    .line 268
    .line 269
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingToggle:Landroid/widget/TextView;

    .line 270
    .line 271
    const-class p4, Lnoticolorpicker/NotificationColorPicker;

    .line 272
    .line 273
    invoke-static {p4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p4

    .line 277
    check-cast p4, Lnoticolorpicker/NotificationColorPicker;

    .line 278
    .line 279
    invoke-virtual {p4}, Lnoticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    .line 280
    .line 281
    .line 282
    move-result p5

    .line 283
    invoke-virtual {p4}, Lnoticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    .line 284
    .line 285
    .line 286
    move-result p6

    .line 287
    if-eqz p5, :cond_c

    .line 288
    .line 289
    if-nez p6, :cond_2

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_2
    iget-object p7, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 294
    .line 295
    invoke-static {p7}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    .line 296
    .line 297
    .line 298
    move-result p7

    .line 299
    if-eqz p7, :cond_3

    .line 300
    .line 301
    invoke-virtual {p4}, Lnoticolorpicker/NotificationColorPicker;->getNotificationBgColor$1()I

    .line 302
    .line 303
    .line 304
    move-result p4

    .line 305
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 306
    .line 307
    .line 308
    :cond_3
    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 309
    .line 310
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 311
    .line 312
    .line 313
    move-result-object p4

    .line 314
    const p7, 0x7f05007b

    .line 315
    .line 316
    .line 317
    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 318
    .line 319
    .line 320
    move-result p4

    .line 321
    if-eqz p4, :cond_4

    .line 322
    .line 323
    iget-object p4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 324
    .line 325
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object p4

    .line 329
    const p7, 0x7f0604bc

    .line 330
    .line 331
    .line 332
    invoke-virtual {p4, p7}, Landroid/content/res/Resources;->getColor(I)I

    .line 333
    .line 334
    .line 335
    move-result p4

    .line 336
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 337
    .line 338
    .line 339
    :cond_4
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object p3

    .line 343
    check-cast p3, Landroid/widget/TextView;

    .line 344
    .line 345
    if-eqz p3, :cond_5

    .line 346
    .line 347
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    .line 349
    .line 350
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 351
    .line 352
    if-eqz p3, :cond_6

    .line 353
    .line 354
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    .line 356
    .line 357
    :cond_6
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingToggle:Landroid/widget/TextView;

    .line 358
    .line 359
    if-eqz p3, :cond_7

    .line 360
    .line 361
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    .line 363
    .line 364
    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    check-cast p1, Landroid/widget/TextView;

    .line 369
    .line 370
    if-eqz p1, :cond_8

    .line 371
    .line 372
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    .line 374
    .line 375
    :cond_8
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    check-cast p1, Landroid/widget/TextView;

    .line 380
    .line 381
    if-eqz p1, :cond_9

    .line 382
    .line 383
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    .line 385
    .line 386
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    .line 387
    .line 388
    if-eqz p1, :cond_a

    .line 389
    .line 390
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    .line 392
    .line 393
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    .line 394
    .line 395
    if-eqz p1, :cond_b

    .line 396
    .line 397
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    .line 399
    .line 400
    :cond_b
    const p1, 0x7f0a01f9

    .line 401
    .line 402
    .line 403
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    check-cast p1, Landroid/widget/LinearLayout;

    .line 408
    .line 409
    if-eqz p1, :cond_c

    .line 410
    .line 411
    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    const p3, 0x7f080ccd

    .line 414
    .line 415
    .line 416
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 421
    .line 422
    .line 423
    move-result-object p2

    .line 424
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    .line 429
    .line 430
    :cond_c
    :goto_2
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 431
    .line 432
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 433
    .line 434
    if-eqz p2, :cond_d

    .line 435
    .line 436
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 437
    .line 438
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 439
    .line 440
    .line 441
    move-result p2

    .line 442
    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 443
    .line 444
    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p4

    .line 448
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 449
    .line 450
    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 451
    .line 452
    .line 453
    move-result-object p5

    .line 454
    invoke-interface {p3, p1, p2, p4, p5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 455
    .line 456
    .line 457
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 458
    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    .line 460
    .line 461
    .line 462
    move-result-object p0

    .line 463
    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 468
    .line 469
    const-string p1, "bindNotification requires at least one channel"

    .line 470
    .line 471
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw p0
.end method

.method public final getActualHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mActualHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final handleCloseControls(ZZ)Z
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Landroid/os/Handler;

    .line 8
    .line 9
    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/os/Looper;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 25
    .line 26
    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    .line 27
    .line 28
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 32
    .line 33
    move-object v0, p2

    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;IZZZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 45
    .line 46
    const-string p1, "QPNE0025"

    .line 47
    .line 48
    const-string p2, "app"

    .line 49
    .line 50
    const-string v0, "QPN001"

    .line 51
    .line 52
    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 14

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 32
    .line 33
    :try_start_0
    const-class v1, Landroid/app/INotificationManager;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v3, v1

    .line 40
    check-cast v3, Landroid/app/INotificationManager;

    .line 41
    .line 42
    const-class v1, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 49
    .line 50
    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 57
    .line 58
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 74
    .line 75
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 76
    .line 77
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 84
    .line 85
    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_1

    .line 90
    .line 91
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 92
    .line 93
    check-cast v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 94
    .line 95
    iget v9, v9, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 96
    .line 97
    if-nez v9, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 101
    move-object v8, v0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    new-instance v9, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;

    .line 104
    .line 105
    invoke-direct {v9, v0, v1, v8}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/widget/FrameLayout;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move-object v8, v9

    .line 109
    :goto_1
    const-class v0, Lcom/android/internal/logging/UiEventLogger;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    move-object v9, v0

    .line 116
    check-cast v9, Lcom/android/internal/logging/UiEventLogger;

    .line 117
    .line 118
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 125
    .line 126
    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonPackageBlockable()Z

    .line 133
    .line 134
    .line 135
    move-result v11

    .line 136
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 145
    .line 146
    const/4 v13, 0x1

    .line 147
    invoke-virtual {v0, p1, v13}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    .line 148
    .line 149
    .line 150
    const-class p1, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    move-object v12, p1

    .line 157
    check-cast v12, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 158
    .line 159
    move-object v1, p0

    .line 160
    invoke-virtual/range {v1 .. v12}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda1;Lcom/android/internal/logging/UiEventLogger;ZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    return v13

    .line 164
    :catch_0
    move-exception p0

    .line 165
    const-string p1, "InfoGuts"

    .line 166
    .line 167
    const-string v0, "error binding guts"

    .line 168
    .line 169
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .line 171
    .line 172
    const/4 p0, 0x0

    .line 173
    return p0
.end method

.method public isAnimating()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final needsFalsingProtection()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    const/16 v0, 0x655

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Landroid/metrics/LogMaker;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    const/16 v0, 0xcc

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onFinishedClosing()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindInlineControls()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x20

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 29
    .line 30
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const v1, 0x7f130c18

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 52
    .line 53
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const v1, 0x7f130c17

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mActualHeight:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateInlineButtonLayout()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSkipPost:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    .line 3
    return-void
.end method

.method public final shouldBeSavedOnClose()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    .line 2
    .line 3
    return p0
.end method

.method public final updateInlineButtonLayout()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const v2, 0x7f070a38

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    mul-int/lit8 v2, v2, 0x2

    .line 36
    .line 37
    sub-int/2addr v1, v2

    .line 38
    int-to-float v1, v1

    .line 39
    const/high16 v2, 0x3f000000    # 0.5f

    .line 40
    .line 41
    mul-float/2addr v1, v2

    .line 42
    float-to-int v1, v1

    .line 43
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    .line 45
    const/4 v3, -0x2

    .line 46
    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0709e7

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleSettingsButton:Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 66
    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final willBeRemoved()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
