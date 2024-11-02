.class public final Lcom/android/systemui/pluginlock/PluginLockUtils;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sSafeModeLevel:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

.field public mExecutors:Ljava/util/concurrent/ExecutorService;

.field public mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 2
    .line 3
    const v1, 0x1fdc4

    .line 4
    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x5

    .line 11
    :goto_0
    sput v0, Lcom/android/systemui/pluginlock/PluginLockUtils;->sSafeModeLevel:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/utils/DumpUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/PluginLockUtils$HandlerExecutor;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mDumpUtils:Lcom/android/systemui/pluginlock/utils/DumpUtils;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockUtils;->checkSafeMode()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static isCurrentOwner()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public static isGoingToRescueParty()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    const-string/jumbo v1, "persist.sys.rescue_level"

    .line 9
    .line 10
    .line 11
    const-string v2, "0"

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move v1, v0

    .line 23
    :goto_0
    sget v2, Lcom/android/systemui/pluginlock/PluginLockUtils;->sSafeModeLevel:I

    .line 24
    .line 25
    if-lt v1, v2, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    :cond_1
    return v0
.end method


# virtual methods
.method public final addDump(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final callProvider(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const-string v0, "callProvider, result:"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    const-string v3, "PluginLockUtils"

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v2, "content://com.samsung.android.dynamiclock.provider"

    .line 24
    .line 25
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-object v1, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string p0, "callProvider, user isn\'t unlocked yet"

    .line 51
    .line 52
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_0
    return-object v1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    return-object v1
.end method

.method public final checkSafeMode()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    invoke-static {}, Lcom/android/systemui/pluginlock/PluginLockUtils;->isGoingToRescueParty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "checkSafeMode, userUnlocked="

    .line 22
    .line 23
    const-string v3, ", safeMode="

    .line 24
    .line 25
    const-string v4, "PluginLockUtils"

    .line 26
    .line 27
    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda2;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockUtils;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockUtils;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method
