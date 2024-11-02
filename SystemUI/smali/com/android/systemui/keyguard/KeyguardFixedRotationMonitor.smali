.class public final Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

.field public final handler:Landroid/os/Handler;

.field public isFixedRotated:Z

.field public isMonitorStarted:Z

.field public final notificationShadeView$delegate:Lkotlin/Lazy;

.field public final notificationShadeWindowController:Ldagger/Lazy;

.field public pendingRunnable:Ljava/lang/Runnable;

.field public final preDrawListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

.field public final safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

.field public final windowManager:Landroid/view/IWindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "KeyguardFixedRotation"

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Landroid/os/Handler;",
            "Landroid/view/IWindowManager;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeWindowController:Ldagger/Lazy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->windowManager:Landroid/view/IWindowManager;

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$notificationShadeView$2;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$notificationShadeView$2;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeView$delegate:Lkotlin/Lazy;

    .line 20
    .line 21
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->preDrawListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

    .line 27
    .line 28
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    .line 34
    .line 35
    new-instance p1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "KeyguardFixedRotation"

    .line 7
    .line 8
    const-string v1, "cancel"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;->run()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->windowManager:Landroid/view/IWindowManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->displayWindowListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$displayWindowListener$1;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isFixedRotated:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->isMonitorStarted:Z

    .line 40
    .line 41
    return-void
.end method

.method public final setPendingRunnable(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "set "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-boolean v1, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->DEBUG:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "KeyguardFixedRotation"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->pendingRunnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->notificationShadeView$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->preDrawListener:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$preDrawListener$1;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->handler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor;->safeRunnable:Lcom/android/systemui/keyguard/KeyguardFixedRotationMonitor$safeRunnable$1;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    const-wide/16 v1, 0x1f4

    .line 64
    .line 65
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
