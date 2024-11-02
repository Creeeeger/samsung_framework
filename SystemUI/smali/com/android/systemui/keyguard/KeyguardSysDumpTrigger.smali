.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final KEY:[I

.field public static final SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final context:Landroid/content/Context;

.field public dumpPath:Ljava/lang/String;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final isDebug:Z

.field public isEnabled:Z

.field public keyIndex:I

.field public final powerManager:Landroid/os/PowerManager;

.field public prevEventTime:J

.field public final userManager:Landroid/os/UserManager;

.field public viewCount:J

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    .line 15
    .line 16
    new-instance v0, Landroid/content/ComponentName;

    .line 17
    .line 18
    const-string v1, "com.sec.android.app.servicemodeapp"

    .line 19
    .line 20
    const-string v2, "com.sec.android.app.servicemodeapp.SysDump"

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 4
        0x18
        0x18
        0x18
        0x19
        0x19
        0x19
        0x18
        0x19
        0x18
        0x19
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/os/UserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userManager:Landroid/os/UserManager;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 15
    .line 16
    new-instance v2, Ljava/util/Timer;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x1

    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    .line 36
    .line 37
    new-instance v3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;

    .line 38
    .line 39
    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    .line 40
    .line 41
    .line 42
    move-object v0, p2

    .line 43
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    .line 49
    .line 50
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v1, "package"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    const/16 v6, 0x3c

    .line 73
    .line 74
    move-object p0, p6

    .line 75
    move-object p1, v2

    .line 76
    move-object p2, v0

    .line 77
    move-object p3, v1

    .line 78
    move-object p4, v3

    .line 79
    move p5, v4

    .line 80
    move-object p6, v5

    .line 81
    move p7, v6

    .line 82
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public static synthetic isEnabled$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getKeys()[I
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTriggerMsg(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 3
    .line 4
    const-string/jumbo v1, "systemui heap dump - "

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "lockscreen dump - "

    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_4

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const-string p0, ""

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-wide p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->viewCount:J

    .line 24
    .line 25
    const-string/jumbo v0, "too many views. notiCount : 0. totalView : "

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0, p1}, Landroidx/core/animation/ValueAnimator$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const-string/jumbo p0, "saved heap dump"

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    const-string p0, "input keys"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_4
    const-string/jumbo p0, "timeout of app resume"

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-static {v1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final sendIntent(IJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userManager:Landroid/os/UserManager;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string/jumbo v0, "sendIntent reason="

    .line 20
    .line 21
    .line 22
    const-string v4, " currentUser="

    .line 23
    .line 24
    const-string v5, " userUnlocked="

    .line 25
    .line 26
    invoke-static {v0, p1, v4, v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v4, "KeyguardSysDumpTrigger"

    .line 38
    .line 39
    invoke-static {v4, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    .line 47
    .line 48
    invoke-virtual {v0, v4, v5, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;

    .line 52
    .line 53
    move-object v1, v0

    .line 54
    move-object v4, p0

    .line 55
    move v5, p1

    .line 56
    move-wide v6, p2

    .line 57
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;-><init>(IZLcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final declared-synchronized start(IJJ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "start "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 15
    .line 16
    const-string v1, "KeyguardSysDumpTrigger"

    .line 17
    .line 18
    const-string v2, "cancel"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    .line 22
    .line 23
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 24
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 25
    .line 26
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;

    .line 27
    .line 28
    invoke-direct {v2, p0, p1, p4, p5}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, p2, p3, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(JLjava/lang/Runnable;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 36
    .line 37
    const-string p1, "KeyguardSysDumpTrigger"

    .line 38
    .line 39
    new-instance p4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    :try_start_3
    monitor-exit p0

    .line 60
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :goto_0
    monitor-exit p0

    .line 62
    throw p1
.end method
