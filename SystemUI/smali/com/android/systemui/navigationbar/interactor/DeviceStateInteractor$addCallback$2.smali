.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $largeCoverVisCallback:Ljava/util/function/Consumer;

.field public final synthetic $sensitivityCallback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$sensitivityCallback:Ljava/util/function/Consumer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$largeCoverVisCallback:Ljava/util/function/Consumer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$sensitivityCallback:Ljava/util/function/Consumer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    :goto_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$largeCoverVisCallback:Ljava/util/function/Consumer;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    .line 52
    .line 53
    iget-object v2, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayListener:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->componentCallbacks:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

    .line 56
    .line 57
    iget-object v4, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->windowContext:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v5, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/NavigationBarController;->onDisplayReady(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->handler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {v5, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    .line 73
    .line 74
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    .line 78
    .line 79
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget-object p1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    .line 84
    .line 85
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 86
    .line 87
    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 98
    .line 99
    .line 100
    const/4 p0, -0x1

    .line 101
    iput p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    iput p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastCoverRotation:I

    .line 105
    .line 106
    iput-boolean p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    .line 107
    .line 108
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    iget-object p1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    .line 113
    .line 114
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 115
    .line 116
    .line 117
    if-eqz v4, :cond_2

    .line 118
    .line 119
    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_1
    return-void
.end method
