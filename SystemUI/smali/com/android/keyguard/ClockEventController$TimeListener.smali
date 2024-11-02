.class public final Lcom/android/keyguard/ClockEventController$TimeListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final clockFace:Lcom/android/systemui/plugins/ClockFaceController;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public isRunning:Z

.field public final predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

.field public final secondsRunnable:Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ClockFaceController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/ClockFaceController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 7
    .line 8
    new-instance p1, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;-><init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    .line 14
    .line 15
    new-instance p1, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;-><init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->secondsRunnable:Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final stop()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/ClockFaceController;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final update(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/ClockFaceController;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/plugins/ClockFaceConfig;->getTickRate()Lcom/android/systemui/plugins/ClockTickRate;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/android/keyguard/ClockEventController$TimeListener$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    aget v0, v1, v0

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->predrawListener:Lcom/android/keyguard/ClockEventController$TimeListener$predrawListener$1;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 58
    .line 59
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->secondsRunnable:Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method
