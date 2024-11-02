.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;
.super Landroid/app/Activity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "SubscreenNotificationIntelligenceStartActivity"

    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p1, "SubscreenNotificationIntelligenceStartActivity()"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const-string p3, "onActivityResult() request: "

    .line 5
    .line 6
    const-string v0, ", result: "

    .line 7
    .line 8
    invoke-static {p3, p1, v0, p2}, Lcom/android/systemui/ScreenDecorations$CoverRestartingPreDrawListener$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x1

    .line 18
    const-string/jumbo v1, "suggestion_responses_used"

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 23
    .line 24
    const/16 v4, 0xa

    .line 25
    .line 26
    const/4 v5, -0x1

    .line 27
    const/16 v6, 0x14

    .line 28
    .line 29
    if-eq p1, v4, :cond_3

    .line 30
    .line 31
    if-eq p1, v6, :cond_0

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    if-ne p2, v5, :cond_7

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->setAiInfoConfirmed()V

    .line 38
    .line 39
    .line 40
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 41
    .line 42
    if-eqz p1, :cond_7

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_7

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, v3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    :goto_0
    move p3, v2

    .line 74
    :goto_1
    if-nez p3, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->showDisclaimerDialog()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    if-ne p2, v5, :cond_7

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->controller:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isSamsungAccountLoggedIn()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->setAiInfoConfirmed()V

    .line 98
    .line 99
    .line 100
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_7

    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-boolean p2, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object p1, v3, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 121
    .line 122
    invoke-virtual {p1, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    :goto_2
    move p3, v2

    .line 134
    :goto_3
    if-nez p3, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->showDisclaimerDialog()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    const-string/jumbo p1, "startSamsungAccountSignInPopup()"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroid/content/Intent;

    .line 147
    .line 148
    const-string p2, "com.msc.action.samsungaccount.SIGNIN_POPUP"

    .line 149
    .line 150
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/high16 p2, 0x24000000

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const-string p2, "client_id"

    .line 159
    .line 160
    const-string p3, "i5to7wq0er"

    .line 161
    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "onCreate()"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0461

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 15
    .line 16
    .line 17
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    const-string v2, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string/jumbo v4, "pid"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :cond_0
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const-string v4, "is_dialog_showing"

    .line 46
    .line 47
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move-object p1, v3

    .line 57
    :goto_0
    if-nez v0, :cond_2

    .line 58
    .line 59
    new-instance p1, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->showDisclaimerDialog()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance p1, Landroid/content/Intent;

    .line 81
    .line 82
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onDestroy()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 47
    .line 48
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string/jumbo v0, "pid"

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    const-string v0, "is_dialog_showing"

    .line 33
    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setAiInfoConfirmed()V
    .locals 4

    .line 1
    const-string/jumbo v0, "set ai_info_confirmed to 1"

    .line 2
    .line 3
    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_NOTIFICATION_FIFTH:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, -0x2

    .line 26
    const-string v2, "ai_info_confirmed"

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final showDisclaimerDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 33
    .line 34
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 35
    .line 36
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 37
    .line 38
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$3;

    .line 49
    .line 50
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity$showDisclaimerDialog$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationIntelligenceStartActivity;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;

    .line 57
    .line 58
    :try_start_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    const-string p0, "SubscreenNotificationSmartReplyDisclaimerDialog"

    .line 67
    .line 68
    const-string v0, "BadTokenException occurs. The dialog show will be ignored."

    .line 69
    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_1
    return-void
.end method
