.class public final Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final eventHandler:Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plank/monitor/TestInputMonitor;Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;",
            "Landroid/view/InputChannel;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;->eventHandler:Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;->eventHandler:Lcom/android/systemui/plank/monitor/TestInputMonitor$EventHandler;

    .line 15
    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Landroid/view/MotionEvent;

    .line 18
    .line 19
    check-cast v1, Lcom/android/systemui/plank/monitor/TestInputHandler;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/android/systemui/plank/monitor/TestInputHandler;->onEventHandler(Landroid/view/MotionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method
