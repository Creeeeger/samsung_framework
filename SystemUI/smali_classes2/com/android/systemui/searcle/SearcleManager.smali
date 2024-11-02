.class public final Lcom/android/systemui/searcle/SearcleManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public currentDownCount:I

.field public final desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public invokedPackageName:Ljava/lang/String;

.field public isUnavailableSearchApp:Z

.field public final keyguradUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final sysUiState:Lcom/android/systemui/model/SysUiState;

.field public final tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

.field public toast:Landroid/widget/Toast;

.field public toastMsg:Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/searcle/SearcleManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/searcle/SearcleManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const-class v0, Lcom/android/systemui/model/SysUiState;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/model/SysUiState;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/app/SemMultiWindowManager;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    .line 23
    .line 24
    .line 25
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 34
    .line 35
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->keyguradUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 44
    .line 45
    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 52
    .line 53
    const-string v0, "desktopmode"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v0, v2

    .line 68
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 69
    .line 70
    new-instance v0, Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 71
    .line 72
    invoke-direct {v0, p1}, Lcom/android/systemui/searcle/SearcleTipPopup;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 76
    .line 77
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    new-instance v0, Lcom/android/systemui/searcle/SearcleManager$1;

    .line 84
    .line 85
    invoke-direct {v0, p0, v2}, Lcom/android/systemui/searcle/SearcleManager$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x3

    .line 89
    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final invokeSearcle()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 8
    .line 9
    const-string v3, "SearcleManager"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    :try_start_0
    sget-object v1, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-class v1, Landroid/app/ActivityManager;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/app/ActivityManager;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    .line 48
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v1, v4

    .line 58
    :goto_0
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v6, "getTopActivity SecurityException "

    .line 65
    .line 66
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    const-string v1, ""

    .line 80
    .line 81
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    .line 82
    .line 83
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/searcle/SearcleManager;->invokedPackageName:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v6, "invokeSearcle invokedPackageName = "

    .line 88
    .line 89
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    new-instance v1, Landroid/os/Handler;

    .line 103
    .line 104
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 109
    .line 110
    .line 111
    new-instance v3, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;

    .line 112
    .line 113
    invoke-direct {v3, p0}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 120
    .line 121
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    new-instance v5, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$2;

    .line 126
    .line 127
    invoke-direct {v5, p0, v4}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$2;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    .line 128
    .line 129
    .line 130
    const/4 v6, 0x3

    .line 131
    invoke-static {v3, v4, v4, v5, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportTouchToSearch()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    invoke-static {v2}, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->invokeCircle2Search(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;

    .line 149
    .line 150
    invoke-direct {v2, p0, v4}, Lcom/android/systemui/searcle/SearcleManager$invokeSearcle$3;-><init>(Lcom/android/systemui/searcle/SearcleManager;Lkotlin/coroutines/Continuation;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v4, v4, v2, v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 154
    .line 155
    .line 156
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    .line 157
    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    .line 168
    .line 169
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 170
    .line 171
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    .line 172
    .line 173
    :cond_5
    return-void
.end method

.method public final isSupportTouchToSearch()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BIXBY_TOUCH_SUPPORT_CIRCLE2SEARCH:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 15
    .line 16
    const-string v0, "cn_support_circe_to_search"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-ne p0, v2, :cond_0

    .line 27
    .line 28
    move p0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p0, v1

    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 32
    .line 33
    move v1, v2

    .line 34
    :cond_1
    return v1
.end method

.method public final isUnavailableSearchAppCheck()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "SearcleManager"

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/systemui/searcle/SearcleManager;->desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    iget v5, v5, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    const-string v5, "isUnAvailableSearcle = dex mode"

    .line 25
    .line 26
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    sget-boolean v5, Lcom/android/systemui/BasicRune;->MAINTENANCE_MODE:Z

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    const-string v5, "isUnAvailableSearcle = maintenance mode"

    .line 36
    .line 37
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/searcle/SearcleManager;->keyguradUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    .line 44
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKidsModeRunning()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    const-string v5, "isUnAvailableSearcle = kids mode"

    .line 51
    .line 52
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const v4, 0x7f130eda

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 63
    .line 64
    goto/16 :goto_5

    .line 65
    .line 66
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getProKioskManager()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    const-string v5, "isKioskMode : proKiosk mode"

    .line 81
    .line 82
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKioskMode()Lcom/samsung/android/knox/kiosk/KioskMode;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    const-string v5, "isKioskMode : Kiosk mode"

    .line 101
    .line 102
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    :goto_0
    move v5, v1

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception v5

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v7, "SecurityException: "

    .line 111
    .line 112
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_4
    move v5, v3

    .line 126
    :goto_1
    if-eqz v5, :cond_5

    .line 127
    .line 128
    const-string v5, "isUnAvailableSearcle = kiosk mode"

    .line 129
    .line 130
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto/16 :goto_5

    .line 134
    .line 135
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    sget-object v6, Lcom/android/systemui/volume/util/SystemServiceExtension;->INSTANCE:Lcom/android/systemui/volume/util/SystemServiceExtension;

    .line 140
    .line 141
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    const-class v6, Landroid/app/ActivityManager;

    .line 145
    .line 146
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    check-cast v6, Landroid/app/ActivityManager;

    .line 151
    .line 152
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_7

    .line 157
    .line 158
    const-string v6, "isUnAvailableSearcle = Pinned app"

    .line 159
    .line 160
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    if-eqz v5, :cond_6

    .line 164
    .line 165
    const v4, 0x7f130f87

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_6
    const v4, 0x7f130f85

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    const v7, 0x7f13115d

    .line 185
    .line 186
    .line 187
    if-eqz v6, :cond_9

    .line 188
    .line 189
    const-string v5, "isUnAvailableSearcle = one hand mode"

    .line 190
    .line 191
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportTouchToSearch()Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_8

    .line 199
    .line 200
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    const v5, 0x7f130cf0

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_8
    const v4, 0x7f130edc

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/searcle/SearcleManager;->sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 230
    .line 231
    iget-wide v8, v6, Lcom/android/systemui/model/SysUiState;->mFlags:J

    .line 232
    .line 233
    const-wide/16 v10, 0x804

    .line 234
    .line 235
    and-long/2addr v10, v8

    .line 236
    const-wide/16 v12, 0x0

    .line 237
    .line 238
    cmp-long v6, v10, v12

    .line 239
    .line 240
    if-eqz v6, :cond_a

    .line 241
    .line 242
    move v6, v1

    .line 243
    goto :goto_3

    .line 244
    :cond_a
    move v6, v3

    .line 245
    :goto_3
    if-eqz v6, :cond_b

    .line 246
    .line 247
    const-string v5, "isUnAvailableSearcle = notification shade"

    .line 248
    .line 249
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_b
    if-eqz v5, :cond_e

    .line 254
    .line 255
    const-wide/16 v10, 0x248

    .line 256
    .line 257
    and-long/2addr v8, v10

    .line 258
    cmp-long v6, v8, v12

    .line 259
    .line 260
    if-eqz v6, :cond_c

    .line 261
    .line 262
    move v6, v1

    .line 263
    goto :goto_4

    .line 264
    :cond_c
    move v6, v3

    .line 265
    :goto_4
    if-eqz v6, :cond_e

    .line 266
    .line 267
    const-string v5, "isUnAvailableSearcle = keyguard"

    .line 268
    .line 269
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportTouchToSearch()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_d

    .line 277
    .line 278
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    const v5, 0x7f130cef

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_d
    const v4, 0x7f130edb

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    iput-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->isSupportTouchToSearch()Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_f

    .line 311
    .line 312
    invoke-static {v2, v5}, Lcom/android/systemui/plugins/circle2search/BixbyTouchCircle2SearchAPI;->isLaunchingCircle2Search(Landroid/content/Context;Z)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_f

    .line 317
    .line 318
    const-string v5, "isUnAvailableSearcle = isLaunchingCircle2Search"

    .line 319
    .line 320
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    :goto_5
    move v4, v3

    .line 324
    goto :goto_6

    .line 325
    :cond_f
    move v4, v1

    .line 326
    :goto_6
    if-eqz v4, :cond_1f

    .line 327
    .line 328
    sget-boolean v4, Lcom/android/systemui/BasicRune;->SUPPORT_SEARCLE:Z

    .line 329
    .line 330
    if-nez v4, :cond_12

    .line 331
    .line 332
    sget-boolean v4, Lcom/android/systemui/BasicRune;->BIXBY_TOUCH_SUPPORT_CIRCLE2SEARCH:Z

    .line 333
    .line 334
    if-eqz v4, :cond_11

    .line 335
    .line 336
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    .line 338
    .line 339
    if-eqz v4, :cond_10

    .line 340
    .line 341
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 342
    .line 343
    const-string v4, "cn_support_circe_to_search"

    .line 344
    .line 345
    invoke-virtual {v0, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-ne v0, v1, :cond_10

    .line 354
    .line 355
    move v0, v1

    .line 356
    goto :goto_7

    .line 357
    :cond_10
    move v0, v3

    .line 358
    :goto_7
    if-eqz v0, :cond_11

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_11
    move v0, v3

    .line 362
    goto :goto_9

    .line 363
    :cond_12
    :goto_8
    move v0, v1

    .line 364
    :goto_9
    if-eqz v0, :cond_1e

    .line 365
    .line 366
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isOmniPackageEnabled()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    const-string v4, "OmniAPI"

    .line 373
    .line 374
    if-nez v0, :cond_13

    .line 375
    .line 376
    const-string v0, "isInvokeAvailable : Google app is disabled"

    .line 377
    .line 378
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;->GOOGLE_APP_DISABLED:Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;

    .line 382
    .line 383
    goto/16 :goto_c

    .line 384
    .line 385
    :cond_13
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isCsHelperAvailable()Ljava/util/Optional;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    sget-object v5, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 392
    .line 393
    invoke-virtual {v5}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isVisAvailable()Ljava/util/Optional;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-nez v6, :cond_15

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eqz v6, :cond_14

    .line 408
    .line 409
    goto :goto_a

    .line 410
    :cond_14
    move v6, v3

    .line 411
    goto :goto_b

    .line 412
    :cond_15
    :goto_a
    move v6, v1

    .line 413
    :goto_b
    const-string v7, "isInvokeAvailable : Omni not available"

    .line 414
    .line 415
    if-eqz v6, :cond_17

    .line 416
    .line 417
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 418
    .line 419
    invoke-virtual {v0, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Ljava/lang/Boolean;

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-nez v0, :cond_19

    .line 430
    .line 431
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    check-cast v0, Ljava/lang/Boolean;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_16

    .line 442
    .line 443
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;->SERVICE_UNAVAILABLE:Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;

    .line 447
    .line 448
    goto :goto_c

    .line 449
    :cond_16
    if-eqz v0, :cond_19

    .line 450
    .line 451
    invoke-static {v2}, Lcom/android/systemui/searcle/OmniAPI;->isGoogleDefaultAssistant(Landroid/content/Context;)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    if-nez v0, :cond_19

    .line 456
    .line 457
    const-string v0, "isInvokeAvailable isVisAvailable : Google is not default assistant"

    .line 458
    .line 459
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;->GOOGLE_IS_NOT_DIGITAL_ASSISTANT:Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;

    .line 463
    .line 464
    goto :goto_c

    .line 465
    :cond_17
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 466
    .line 467
    invoke-virtual {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isInitSession()Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_18

    .line 472
    .line 473
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 474
    .line 475
    invoke-virtual {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isOmniAvailable()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_18

    .line 480
    .line 481
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;->SERVICE_UNAVAILABLE:Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;

    .line 485
    .line 486
    goto :goto_c

    .line 487
    :cond_18
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 488
    .line 489
    invoke-virtual {v0}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isOmniAvailable()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_19

    .line 494
    .line 495
    invoke-static {v2}, Lcom/android/systemui/searcle/OmniAPI;->isGoogleDefaultAssistant(Landroid/content/Context;)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-nez v0, :cond_19

    .line 500
    .line 501
    const-string v0, "isInvokeAvailable : Google is not default assistant"

    .line 502
    .line 503
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;->GOOGLE_IS_NOT_DIGITAL_ASSISTANT:Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_19
    sget-object v0, Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;->AVAILABLE:Lcom/android/systemui/searcle/OmniAPI$UnexecutableType;

    .line 510
    .line 511
    :goto_c
    if-nez v0, :cond_1a

    .line 512
    .line 513
    const/4 v0, -0x1

    .line 514
    goto :goto_d

    .line 515
    :cond_1a
    sget-object v4, Lcom/android/systemui/searcle/SearcleManager$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 516
    .line 517
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    aget v0, v4, v0

    .line 522
    .line 523
    :goto_d
    if-eq v0, v1, :cond_1d

    .line 524
    .line 525
    const/4 v4, 0x2

    .line 526
    if-eq v0, v4, :cond_1c

    .line 527
    .line 528
    const/4 v4, 0x3

    .line 529
    if-eq v0, v4, :cond_1b

    .line 530
    .line 531
    move p0, v1

    .line 532
    goto :goto_f

    .line 533
    :cond_1b
    const v0, 0x7f130ed9

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 541
    .line 542
    goto :goto_e

    .line 543
    :cond_1c
    const v0, 0x7f130ed8

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 551
    .line 552
    goto :goto_e

    .line 553
    :cond_1d
    const v0, 0x7f130ede

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iput-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 561
    .line 562
    :goto_e
    move p0, v3

    .line 563
    :goto_f
    if-nez p0, :cond_1e

    .line 564
    .line 565
    goto :goto_10

    .line 566
    :cond_1e
    move v1, v3

    .line 567
    :cond_1f
    :goto_10
    return v1
.end method

.method public final showToast()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/systemui/searcle/SearcleManager$showToast$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/android/systemui/searcle/SearcleManager$showToast$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final startSearcleByHomeKey(ZZ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/systemui/searcle/SearcleManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->SEARCLE:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 13
    .line 14
    const-string/jumbo v4, "touch_and_hold_to_search"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v4}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v3

    .line 30
    :goto_0
    if-nez v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string/jumbo v1, "startSearcleByHomeKey down = "

    .line 34
    .line 35
    .line 36
    const-string v4, ", longPress = "

    .line 37
    .line 38
    const-string v5, "SearcleManager"

    .line 39
    .line 40
    invoke-static {v1, p1, v4, p2, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "startSearcleByHomeKey isUnavailableSearchApp = "

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/android/systemui/searcle/SearcleManager;->context:Landroid/content/Context;

    .line 47
    .line 48
    if-eqz p2, :cond_7

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchAppCheck()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    .line 55
    .line 56
    sget-boolean p1, Lcom/android/systemui/BasicRune;->SUPPORT_SEARCLE:Z

    .line 57
    .line 58
    if-nez p1, :cond_4

    .line 59
    .line 60
    sget-boolean p1, Lcom/android/systemui/BasicRune;->BIXBY_TOUCH_SUPPORT_CIRCLE2SEARCH:Z

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 70
    .line 71
    const-string p2, "cn_support_circe_to_search"

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-ne p1, v2, :cond_2

    .line 82
    .line 83
    move p1, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move p1, v3

    .line 86
    :goto_1
    if-eqz p1, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v2, v3

    .line 90
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 91
    .line 92
    sget-object p1, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->isInitSession()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_5

    .line 99
    .line 100
    const-string/jumbo p1, "startSearcleByHomeKey GlobalSearchSession is not initialized"

    .line 101
    .line 102
    .line 103
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Lcom/android/systemui/searcle/SearcleManager$startSearcleByHomeKey$1;-><init>(Lcom/android/systemui/searcle/SearcleManager;)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lcom/android/systemui/searcle/OmniAPI;->mAssistStateManager:Lcom/android/systemui/plugins/omni/AssistStateManager;

    .line 112
    .line 113
    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/plugins/omni/AssistStateManager;->initSearchSession(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    .line 119
    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->showToast()V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/searcle/SearcleManager;->invokeSearcle()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_7
    if-nez p1, :cond_e

    .line 148
    .line 149
    if-nez p2, :cond_e

    .line 150
    .line 151
    iget-boolean p1, p0, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    .line 152
    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    invoke-static {v1, p1, v5}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iput-boolean v3, p0, Lcom/android/systemui/searcle/SearcleManager;->isUnavailableSearchApp:Z

    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->toastMsg:Ljava/lang/CharSequence;

    .line 162
    .line 163
    iput-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->toast:Landroid/widget/Toast;

    .line 164
    .line 165
    :cond_8
    iget p1, p0, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    .line 166
    .line 167
    sget-object p2, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->INSTANCE:Lcom/android/systemui/searcle/SearcleTipPopupUtil;

    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    const-string p2, "SearcleTipCount"

    .line 173
    .line 174
    invoke-static {v4, p2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const-string/jumbo v1, "startSearcleByHomeKey currentDownCount = "

    .line 179
    .line 180
    .line 181
    const-string v6, " tipShownCount = "

    .line 182
    .line 183
    const-string v7, " "

    .line 184
    .line 185
    invoke-static {v1, p1, v6, v0, v7}, Landroidx/recyclerview/widget/SeslRecyclerViewFastScroller$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/systemui/searcle/SearcleManager;->tipPopup:Lcom/android/systemui/searcle/SearcleTipPopup;

    .line 193
    .line 194
    iget-boolean v0, p1, Lcom/android/systemui/searcle/SearcleTipPopup;->isTipPopupShowing:Z

    .line 195
    .line 196
    if-nez v0, :cond_e

    .line 197
    .line 198
    invoke-static {v4, p2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    const/4 v7, 0x2

    .line 203
    if-ge v0, v7, :cond_9

    .line 204
    .line 205
    move v0, v2

    .line 206
    goto :goto_3

    .line 207
    :cond_9
    move v0, v3

    .line 208
    :goto_3
    if-eqz v0, :cond_e

    .line 209
    .line 210
    iget v0, p0, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    .line 211
    .line 212
    add-int/2addr v0, v2

    .line 213
    invoke-static {v4, p2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v4, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    const-string v9, "SearcleTipFirstSeenTime"

    .line 226
    .line 227
    const-wide/16 v10, 0x0

    .line 228
    .line 229
    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 230
    .line 231
    .line 232
    move-result-wide v10

    .line 233
    invoke-static {v10, v11}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getTimeFormatString(J)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v10

    .line 241
    invoke-static {v10, v11}, Lcom/android/systemui/searcle/SearcleTipPopupUtil;->getTimeFormatString(J)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    const-string v11, " firstShownTime = "

    .line 246
    .line 247
    invoke-static {v1, v0, v6, v7, v11}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, " currentTime = "

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    invoke-static {v4, p2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_a

    .line 274
    .line 275
    iget p2, p0, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    .line 276
    .line 277
    add-int/2addr p2, v2

    .line 278
    iput p2, p0, Lcom/android/systemui/searcle/SearcleManager;->currentDownCount:I

    .line 279
    .line 280
    const/16 p0, 0xa

    .line 281
    .line 282
    if-lt p2, p0, :cond_e

    .line 283
    .line 284
    invoke-virtual {p1, v3}, Lcom/android/systemui/searcle/SearcleTipPopup;->showSearcleTip(Z)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 288
    .line 289
    .line 290
    move-result-wide p0

    .line 291
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {v4, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-interface {p2, v9, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_a
    invoke-static {v4, p2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    .line 312
    .line 313
    .line 314
    move-result p0

    .line 315
    if-eqz p0, :cond_d

    .line 316
    .line 317
    if-eq p0, v2, :cond_b

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v0

    .line 324
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-virtual {v4, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    const-wide/16 v6, 0x0

    .line 333
    .line 334
    invoke-interface {p0, v9, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 335
    .line 336
    .line 337
    move-result-wide v6

    .line 338
    sub-long/2addr v0, v6

    .line 339
    const-wide/32 v6, 0xf731400

    .line 340
    .line 341
    .line 342
    cmp-long p0, v0, v6

    .line 343
    .line 344
    if-ltz p0, :cond_c

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_c
    :goto_4
    move v2, v3

    .line 348
    :cond_d
    :goto_5
    if-eqz v2, :cond_e

    .line 349
    .line 350
    const-string/jumbo p0, "startSearcleByHomeKey remind popup!"

    .line 351
    .line 352
    .line 353
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v3}, Lcom/android/systemui/searcle/SearcleTipPopup;->showSearcleTip(Z)V

    .line 357
    .line 358
    .line 359
    :cond_e
    :goto_6
    return-void
.end method
