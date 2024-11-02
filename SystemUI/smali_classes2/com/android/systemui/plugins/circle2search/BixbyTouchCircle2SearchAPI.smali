.class public Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final BIXBY_TOUCH_PKG_NAME:Ljava/lang/String; = "com.samsung.android.bixbytouch"

.field private static final BIXBY_TOUCH_SCROLL_DETECT_UI_SERVICE:Ljava/lang/String; = "com.samsung.android.bixbytouch.service.ScrollDetectUIService"

.field private static final BIXBY_TOUCH_SHOW_CP_CARDS_ACTIVITY:Ljava/lang/String; = "com.samsung.android.bixbytouch.activity.ShowCPCardsActivity"

.field private static final BIXBY_TOUCH_WELCOME_PAGE_ACTIVITY:Ljava/lang/String; = "com.samsung.android.bixbytouch.activity.WelcomePageActivity"

.field public static final DEBUG:Z = false

.field private static final DEFAULT_SIZE_FOR_CHECK_RUNNING_TOP_ACTIVITY:I = 0x1

.field private static final SIZE_FOR_CHECK_RUNNING_TOP_ACTIVITY_IN_GESTURE_MODE:I = 0x2

.field public static final START_CIRCLE_TO_SEARCH_ACTION:Ljava/lang/String; = "com.samsung.android.bixbytouch.ACTION_START_CIRCLE_TO_SEARCH"

.field public static final TAG:Ljava/lang/String; = "BixbyTouchCircle2SearchAPI"

.field public static final VALUE_ON:I = 0x1

.field private static sActivityManager:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->sActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/ActivityManager;

    .line 12
    .line 13
    sput-object p0, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->sActivityManager:Landroid/app/ActivityManager;

    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->sActivityManager:Landroid/app/ActivityManager;

    .line 16
    .line 17
    return-object p0
.end method

.method public static invokeCircle2Search(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.bixbytouch.ACTION_START_CIRCLE_TO_SEARCH"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "com.samsung.android.bixbytouch"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v0, "BixbyTouchCircle2SearchAPI"

    .line 21
    .line 22
    const-string v1, "invokeCircle2Search"

    .line 23
    .line 24
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public static isLaunchingCircle2Search(Landroid/content/Context;Z)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string v4, "com.samsung.android.bixbytouch"

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const-string v4, "com.samsung.android.bixbytouch.activity.ShowCPCardsActivity"

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    const-string v4, "com.samsung.android.bixbytouch.activity.WelcomePageActivity"

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-static {p0}, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const p1, 0x7fffffff

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_5

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 107
    .line 108
    iget-object p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v2, "com.samsung.android.bixbytouch.service.ScrollDetectUIService"

    .line 115
    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move v1, v0

    .line 124
    :goto_2
    return v1
.end method
