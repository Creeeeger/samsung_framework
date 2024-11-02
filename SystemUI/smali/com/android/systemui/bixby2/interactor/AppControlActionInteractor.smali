.class public Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/bixby2/interactor/ActionInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAppController:Lcom/android/systemui/bixby2/controller/AppController;

.field private final mContext:Landroid/content/Context;

.field private mGson:Lcom/google/gson/Gson;

.field private final mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;


# direct methods
.method public static synthetic $r8$lambda$j7GbumxW3Mb9kIVXVLM9x6ulq6U(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/bixby2/controller/AppController;Lcom/android/systemui/bixby2/controller/MWBixbyController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AppControlActionInteractor"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "AppControlActionInteractor()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/UserHandle;->isSystem()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->initSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string p1, "init in non-system user."

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 54
    .line 55
    :goto_0
    new-instance p1, Lcom/google/gson/Gson;

    .line 56
    .line 57
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    .line 61
    .line 62
    return-void
.end method

.method private getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v0, "result"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string p1, "description"

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private getResponseCode(Ljava/lang/String;)I
    .locals 0

    .line 1
    const-string/jumbo p0, "success"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x2

    .line 13
    :goto_0
    return p0
.end method

.method private isCheckAction(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private isJsonParameterAction(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_1

    .line 72
    .line 73
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_1

    .line 84
    .line 85
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_1

    .line 96
    .line 97
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_1

    .line 108
    .line 109
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 110
    .line 111
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_1

    .line 120
    .line 121
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_1

    .line 132
    .line 133
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_0

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_0
    const/4 p0, 0x0

    .line 147
    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 149
    :goto_1
    return p0
.end method

.method private isLoadStatefulMultiWindowCommand(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 65
    :goto_1
    return p0
.end method

.method private isSimpleAction(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    sget-object p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->doubletab_coverflex:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 65
    :goto_1
    return p0
.end method

.method private static synthetic lambda$matchAction$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 3

    .line 1
    const-string v0, "loadStatefulMultiWindowCommand  actionName="

    .line 2
    .line 3
    const-string v1, "AppControlActionInteractor"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSplitState()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getPackageNameInSplit(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiSplit()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkTopFullscreenHomeOrRecents()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    goto :goto_0

    .line 131
    :cond_5
    move-object p0, v2

    .line 132
    :goto_0
    if-nez p0, :cond_6

    .line 133
    .line 134
    return-object v2

    .line 135
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string/jumbo p2, "responseMessage: "

    .line 138
    .line 139
    .line 140
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 158
    .line 159
    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object p1
.end method

.method private matchAction(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method private performMultiWindowCommandAction(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/bixby2/util/ParamsParser;->getPackageInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/PackageInfoBixby;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiWindow(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 58
    .line 59
    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->startAppSplitPosition(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_3
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->exchangePositionOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_4
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->changeLayoutOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_5
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->replaceAppOfSplitScreen(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_6
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 174
    .line 175
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->maximizeApp(Landroid/content/Context;Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->getResponseCode(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    goto :goto_0

    .line 184
    :cond_7
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSupportMultiSplit()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 203
    .line 204
    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_8
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkSplitState()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 226
    .line 227
    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_9
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-eqz v0, :cond_a

    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->checkTopFullscreenHomeOrRecents()Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 249
    .line 250
    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_a
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_b

    .line 264
    .line 265
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mMWBixbyController:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 266
    .line 267
    invoke-virtual {p0, p2}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->getPackageNameInSplit(Lcom/android/systemui/bixby2/util/PackageInfoBixby;)Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    iget-object p1, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 272
    .line 273
    iget p0, p0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 274
    .line 275
    goto :goto_0

    .line 276
    :cond_b
    const/4 p1, 0x0

    .line 277
    move p0, v1

    .line 278
    :goto_0
    if-eqz p0, :cond_c

    .line 279
    .line 280
    iput p0, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 281
    .line 282
    iput-object p1, p3, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 283
    .line 284
    const/4 p0, 0x1

    .line 285
    return p0

    .line 286
    :cond_c
    return v1
.end method


# virtual methods
.method public getSupportingActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/List;

    .line 28
    .line 29
    return-object p0
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;)Lcom/samsung/android/sdk/command/Command;
    .locals 4

    .line 140
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "loadStateful in AppContorlActionInteractor action="

    const-string v2, "AppControlActionInteractor"

    .line 141
    invoke-static {v0, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isLoadStatefulMultiWindowCommand(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    goto :goto_2

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isCheckAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkOrientation()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Portrait"

    goto :goto_0

    :cond_1
    const-string p0, "Landscape"

    .line 146
    :goto_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p1, v3, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "responseMessage: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isJsonParameterAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "JSONException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isSimpleAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 154
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    goto :goto_2

    :cond_4
    :goto_1
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_5

    .line 155
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 156
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 157
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    iput v3, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 159
    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public loadStatefulCommandInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/Command;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
    .locals 5

    const-string v0, "loadStateful in AppContorlActionInteractor(with CommandAction) action="

    const-string v1, "AppControlActionInteractor"

    .line 1
    invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 6
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isLoadStatefulMultiWindowCommand(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    goto :goto_2

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isCheckAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkOrientation()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Portrait"

    goto :goto_0

    :cond_2
    const-string p0, "Landscape"

    .line 10
    :goto_0
    new-instance p1, Lcom/android/systemui/bixby2/CommandActionResponse;

    invoke-direct {p1, v2, p0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "responseMessage: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    iget-object p1, p1, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isJsonParameterAction(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 14
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    new-instance p1, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "JSONException: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 17
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->isSimpleAction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 18
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    goto :goto_2

    :cond_5
    :goto_1
    move-object p0, v3

    :goto_2
    if-eqz p0, :cond_6

    .line 19
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 20
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 21
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 23
    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v3

    :cond_6
    return-object v3

    .line 25
    :cond_7
    :goto_3
    invoke-virtual {p3}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result v0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_8

    move-object p3, v3

    goto :goto_4

    .line 26
    :cond_8
    check-cast p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "newJSONStringValue = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    .line 28
    invoke-static {v0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_4
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->loadStatefulMultiWindowCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 30
    new-instance p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;

    .line 31
    iget-object p2, p2, Lcom/samsung/android/sdk/command/Command;->mCommandId:Ljava/lang/String;

    .line 32
    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iput v2, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mStatus:I

    .line 34
    iput-object p0, p1, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/Command$StatefulBuilder;->build()Lcom/samsung/android/sdk/command/Command;

    move-result-object v3

    :cond_9
    return-object v3
.end method

.method public performCommandActionInteractor(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
    .locals 12

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/CommandActionResponse;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string/jumbo v2, "success"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->matchAction(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string/jumbo v3, "perform in AppContorlActionInteractor  actionName = "

    .line 18
    .line 19
    .line 20
    const-string v4, ", actionType = "

    .line 21
    .line 22
    invoke-static {v3, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "AppControlActionInteractor"

    .line 38
    .line 39
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v5, 0x5

    .line 47
    const/4 v6, 0x2

    .line 48
    const/4 v7, 0x0

    .line 49
    if-eq v3, v5, :cond_1

    .line 50
    .line 51
    const-string p2, "invalid_action"

    .line 52
    .line 53
    move-object v3, p2

    .line 54
    move v5, v6

    .line 55
    move-object p2, v7

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    check-cast p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo v5, "newJSONStringValue = "

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p2, p2, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v3, p2, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move v5, v1

    .line 73
    move-object v3, v2

    .line 74
    :goto_0
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    const-string v9, "NotInstalled"

    .line 85
    .line 86
    if-eqz v8, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_2

    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->launchApplication(Landroid/content/Context;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_18

    .line 109
    .line 110
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 111
    .line 112
    if-eqz p1, :cond_1b

    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_1b

    .line 121
    .line 122
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/android/systemui/bixby2/controller/AppController;->getPackageNameFromPdss(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {p2, v0}, Lcom/android/systemui/bixby2/controller/AppController;->checkSettingsCoverLauncher(Landroid/content/Context;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkIncludeCoverLauncher(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkAvailableCoverLauncher(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    const-string p0, "NotIncludeCoverLauncherAppList"

    .line 151
    .line 152
    :goto_1
    move-object v2, p0

    .line 153
    goto/16 :goto_5

    .line 154
    .line 155
    :cond_3
    if-nez p2, :cond_4

    .line 156
    .line 157
    const-string p0, "SetOffCoverLauncher"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    if-nez p0, :cond_1b

    .line 161
    .line 162
    const-string p0, "NotAvailableCoverLauncherWidget"

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_5
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 166
    .line 167
    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_7

    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 178
    .line 179
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_6

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->removeSearchedTask(Landroid/content/Context;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_18

    .line 197
    .line 198
    goto/16 :goto_5

    .line 199
    .line 200
    :cond_7
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    const-string v10, "NoAppClose"

    .line 211
    .line 212
    const-string v11, "DexMode"

    .line 213
    .line 214
    if-eqz v8, :cond_9

    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_8

    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 227
    .line 228
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {p1, p0, v1, v7}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;ZLjava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-eqz p0, :cond_c

    .line 235
    .line 236
    goto/16 :goto_5

    .line 237
    .line 238
    :cond_9
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 239
    .line 240
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-eqz v7, :cond_e

    .line 249
    .line 250
    new-instance p1, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 256
    .line 257
    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/bixby2/controller/AppController;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_a

    .line 264
    .line 265
    :goto_2
    move v1, v6

    .line 266
    move-object v2, v9

    .line 267
    goto/16 :goto_5

    .line 268
    .line 269
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    goto/16 :goto_3

    .line 278
    .line 279
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 280
    .line 281
    iget-object v3, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 282
    .line 283
    invoke-virtual {v0, v3, p2, p1}, Lcom/android/systemui/bixby2/controller/AppController;->checkRunningInRecents(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_d

    .line 288
    .line 289
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 290
    .line 291
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 292
    .line 293
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;ZLjava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-eqz p0, :cond_c

    .line 299
    .line 300
    goto/16 :goto_5

    .line 301
    .line 302
    :cond_c
    move v1, v6

    .line 303
    move-object v2, v10

    .line 304
    goto/16 :goto_5

    .line 305
    .line 306
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mGson:Lcom/google/gson/Gson;

    .line 307
    .line 308
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    const-string/jumbo p1, "notRunningPackageList = "

    .line 313
    .line 314
    .line 315
    invoke-static {p1, p0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move-object v2, p0

    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :cond_e
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 322
    .line 323
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_f

    .line 332
    .line 333
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 334
    .line 335
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 336
    .line 337
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->removeAllTasks(Landroid/content/Context;)Z

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    if-eqz p0, :cond_18

    .line 342
    .line 343
    goto/16 :goto_5

    .line 344
    .line 345
    :cond_f
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 346
    .line 347
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_10

    .line 356
    .line 357
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 358
    .line 359
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->removeFocusedTask(Landroid/content/Context;)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-eqz p0, :cond_18

    .line 366
    .line 367
    goto/16 :goto_5

    .line 368
    .line 369
    :cond_10
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 370
    .line 371
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v7

    .line 379
    if-eqz v7, :cond_11

    .line 380
    .line 381
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 382
    .line 383
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->openRecentsApp(Landroid/content/Context;)Z

    .line 386
    .line 387
    .line 388
    move-result p0

    .line 389
    if-eqz p0, :cond_18

    .line 390
    .line 391
    goto/16 :goto_5

    .line 392
    .line 393
    :cond_11
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 394
    .line 395
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    if-eqz v7, :cond_13

    .line 404
    .line 405
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-eqz p1, :cond_12

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 417
    .line 418
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/systemui/bixby2/controller/AppController;->startNavigationApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    if-eqz p0, :cond_18

    .line 423
    .line 424
    iget v1, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 425
    .line 426
    iget-object v2, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 427
    .line 428
    goto/16 :goto_5

    .line 429
    .line 430
    :cond_13
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 431
    .line 432
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_15

    .line 441
    .line 442
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 443
    .line 444
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isDexMode()Z

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    if-eqz p1, :cond_14

    .line 449
    .line 450
    :goto_3
    move v1, v6

    .line 451
    move-object v2, v11

    .line 452
    goto :goto_5

    .line 453
    :cond_14
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 454
    .line 455
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 456
    .line 457
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/bixby2/controller/AppController;->removeNavigationApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result p0

    .line 461
    if-eqz p0, :cond_18

    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_15
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 465
    .line 466
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    if-eqz v7, :cond_17

    .line 475
    .line 476
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkOrientation()Z

    .line 479
    .line 480
    .line 481
    move-result p0

    .line 482
    if-eqz p0, :cond_16

    .line 483
    .line 484
    const-string v2, "Portrait"

    .line 485
    .line 486
    goto :goto_5

    .line 487
    :cond_16
    const-string v2, "Landscape"

    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_17
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->doubletab_coverflex:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 491
    .line 492
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v7

    .line 500
    if-eqz v7, :cond_19

    .line 501
    .line 502
    iget-object p1, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mAppController:Lcom/android/systemui/bixby2/controller/AppController;

    .line 503
    .line 504
    iget-object p0, p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->mContext:Landroid/content/Context;

    .line 505
    .line 506
    invoke-virtual {p1, p0}, Lcom/android/systemui/bixby2/controller/AppController;->checkCoverFlexMode(Landroid/content/Context;)Z

    .line 507
    .line 508
    .line 509
    move-result p0

    .line 510
    if-eqz p0, :cond_18

    .line 511
    .line 512
    goto :goto_5

    .line 513
    :cond_18
    move-object v2, v3

    .line 514
    :goto_4
    move v1, v6

    .line 515
    goto :goto_5

    .line 516
    :cond_19
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;->performMultiWindowCommandAction(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/bixby2/CommandActionResponse;)Z

    .line 517
    .line 518
    .line 519
    move-result p0

    .line 520
    if-eqz p0, :cond_1a

    .line 521
    .line 522
    iget v1, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseCode:I

    .line 523
    .line 524
    iget-object v2, v0, Lcom/android/systemui/bixby2/CommandActionResponse;->responseMessage:Ljava/lang/String;

    .line 525
    .line 526
    goto :goto_5

    .line 527
    :cond_1a
    move-object v2, v3

    .line 528
    move v1, v5

    .line 529
    :cond_1b
    :goto_5
    if-eqz p3, :cond_1c

    .line 530
    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string/jumbo p1, "responseCode = "

    .line 534
    .line 535
    .line 536
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string p1, ", responseMessage = "

    .line 543
    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    check-cast p3, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;

    .line 558
    .line 559
    invoke-virtual {p3, v1, v2}, Lcom/samsung/android/sdk/command/provider/CommandProvider$1;->onActionFinished(ILjava/lang/String;)V

    .line 560
    .line 561
    .line 562
    :cond_1c
    return-void
.end method
