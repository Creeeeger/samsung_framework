.class public final Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final ACTION_LOCK_TASK_MODE:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public allowGesture:Z

.field public final assistManager:Lcom/android/systemui/assist/AssistManager;

.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;

.field public final context:Landroid/content/Context;

.field public final degreeEnd:F

.field public final degreeStart:F

.field public final displayId:I

.field public distance:F

.field public final downPoint:Landroid/graphics/PointF;

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Landroid/view/InputMonitor;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public isAttached:Z

.field public isInLockTaskMode:Z

.field public isPilfered:Z

.field public final navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final scrollTouchSlop:F

.field public startSearcle:Z

.field public final touchSlop:F

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->assistManager:Lcom/android/systemui/assist/AssistManager;

    .line 13
    .line 14
    const-string p2, "SearcleGestureHandler"

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    int-to-float p2, p2

    .line 27
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->scrollTouchSlop:F

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->displayId:I

    .line 34
    .line 35
    check-cast p3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 42
    .line 43
    const-class p2, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/android/systemui/statusbar/VibratorHelper;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 52
    .line 53
    const/high16 p2, 0x42dc0000    # 110.0f

    .line 54
    .line 55
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->degreeStart:F

    .line 56
    .line 57
    const/high16 p2, 0x43340000    # 180.0f

    .line 58
    .line 59
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->degreeEnd:F

    .line 60
    .line 61
    const-string p2, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->ACTION_LOCK_TASK_MODE:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p3, Landroid/graphics/PointF;

    .line 66
    .line 67
    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->downPoint:Landroid/graphics/PointF;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const p3, 0x7f0703a9

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->touchSlop:F

    .line 84
    .line 85
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;-><init>(Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;

    .line 91
    .line 92
    invoke-static {p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->intentFilter:Landroid/content/IntentFilter;

    .line 97
    .line 98
    sget-object p1, Lcom/android/systemui/Dependency;->NAVBAR_BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/os/Handler;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->bgHandler:Landroid/os/Handler;

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public final updateIsEnabled()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isAttached:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    iput-object v3, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/InputMonitor;->dispose()V

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-object v3, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->broadcastReceiver:Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$broadcastReceiver$1;

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->context:Landroid/content/Context;

    .line 47
    .line 48
    const-class v4, Landroid/hardware/input/InputManager;

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 55
    .line 56
    const-string/jumbo v4, "searcle-swipe"

    .line 57
    .line 58
    .line 59
    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->displayId:I

    .line 60
    .line 61
    invoke-virtual {v0, v4, v5}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 66
    .line 67
    new-instance v4, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    new-instance v7, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$setInputChannel$1;

    .line 84
    .line 85
    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler$setInputChannel$1;-><init>(Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v4, v3, v0, v5, v7}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    .line 89
    .line 90
    .line 91
    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 92
    .line 93
    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 94
    .line 95
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->intentFilter:Landroid/content/IntentFilter;

    .line 96
    .line 97
    iget-object v8, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->bgHandler:Landroid/os/Handler;

    .line 98
    .line 99
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 100
    .line 101
    const/16 v10, 0x30

    .line 102
    .line 103
    invoke-static/range {v5 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;I)V

    .line 104
    .line 105
    .line 106
    :cond_4
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    :cond_5
    move v1, v2

    .line 123
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->isInLockTaskMode:Z

    .line 124
    .line 125
    const-string v0, "isInLockTaskMode="

    .line 126
    .line 127
    invoke-static {v0, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/SearcleGestureHandler;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return-void
.end method
