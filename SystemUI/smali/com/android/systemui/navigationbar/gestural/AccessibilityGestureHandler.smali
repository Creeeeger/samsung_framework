.class public final Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/gestural/MotionPauseListener;


# instance fields
.field public activePointerId:I

.field public final context:Landroid/content/Context;

.field public final coverContext:Landroid/content/Context;

.field public final displayId:I

.field public downY:F

.field public gestureDetected:Z

.field public final inFlingVelocity:I

.field public final inGestureDistance:I

.field public inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field public inputMonitor:Landroid/view/InputMonitor;

.field public isAttached:Z

.field public isCoverNavBarVisible:Z

.field public isPaused:Z

.field public motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

.field public final navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final tag:Ljava/lang/String;

.field public totalY:F

.field public velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/NavBarHelper;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 9
    .line 10
    const-string p2, "AccessibilityGestureHandler"

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->displayId:I

    .line 16
    .line 17
    const-string p3, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 18
    .line 19
    invoke-virtual {p4, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    array-length p4, p3

    .line 24
    if-le p4, p2, :cond_0

    .line 25
    .line 26
    aget-object p2, p3, p2

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const p3, 0x7f070584

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inGestureDistance:I

    .line 53
    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inFlingVelocity:I

    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public final clear(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->tag:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "clear"

    .line 10
    .line 11
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->velocityProvider:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector$SystemVelocityProvider;->velocityTracker:Landroid/view/VelocityTracker;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->previousVelocity:Ljava/lang/Float;

    .line 30
    .line 31
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->hasEverBeenPaused:Z

    .line 32
    .line 33
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->isPaused:Z

    .line 34
    .line 35
    const-wide/16 v3, 0x0

    .line 36
    .line 37
    iput-wide v3, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->slowStartTime:J

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;->timer:Lcom/android/systemui/navigationbar/util/ScopeTimer;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/util/ScopeTimer;->cancel()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->motionPauseDetector:Lcom/android/systemui/navigationbar/gestural/MotionPauseDetector;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 51
    .line 52
    .line 53
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 54
    .line 55
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateAccessibilityGestureDetected(Z)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->totalY:F

    .line 60
    .line 61
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->downY:F

    .line 62
    .line 63
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->activePointerId:I

    .line 64
    .line 65
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isPaused:Z

    .line 66
    .line 67
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const/4 p1, 0x3

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final disposeInputChannel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/InputMonitor;->dispose()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 19
    .line 20
    return-void
.end method

.method public final updateAccessibilityGestureDetected(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "updateAccessibilityGestureDetected: "

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->gestureDetected:Z

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarHelper;->mStateListeners:Ljava/util/List;

    .line 22
    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/android/systemui/navigationbar/NavBarHelper$NavbarTaskbarStateUpdater;->updateAccessibilityGestureDetected(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public final updateIsEnabled()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isAttached:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->displayId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 20
    .line 21
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isLargeCoverScreenSyncEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->navBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 38
    .line 39
    iget-wide v4, v3, Lcom/android/systemui/navigationbar/NavBarHelper;->mA11yButtonState:J

    .line 40
    .line 41
    const-wide/16 v6, 0x20

    .line 42
    .line 43
    and-long/2addr v4, v6

    .line 44
    const-wide/16 v6, 0x0

    .line 45
    .line 46
    cmp-long v4, v4, v6

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    move v4, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v4, v6

    .line 55
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v7, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;

    .line 59
    .line 60
    invoke-direct {v7, v3, v1}, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;-><init>(Lcom/android/systemui/navigationbar/NavBarHelper;I)V

    .line 61
    .line 62
    .line 63
    iget v3, v7, Lcom/android/systemui/navigationbar/NavBarHelper$CurrentSysuiState;->mWindowState:I

    .line 64
    .line 65
    const/4 v7, 0x2

    .line 66
    if-eq v3, v7, :cond_3

    .line 67
    .line 68
    move v3, v5

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v3, v6

    .line 71
    :goto_1
    if-eqz v4, :cond_6

    .line 72
    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    if-nez v2, :cond_4

    .line 76
    .line 77
    iget-boolean v7, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isCoverNavBarVisible:Z

    .line 78
    .line 79
    if-eqz v7, :cond_5

    .line 80
    .line 81
    :cond_4
    if-nez v3, :cond_7

    .line 82
    .line 83
    :cond_5
    if-nez v3, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v5, v6

    .line 87
    :cond_7
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isCoverNavBarVisible:Z

    .line 88
    .line 89
    const-string v7, "a11yButtonState: "

    .line 90
    .line 91
    const-string v8, ", coverScreenNavBarEnabled: "

    .line 92
    .line 93
    const-string v9, " gestureMode: "

    .line 94
    .line 95
    invoke-static {v7, v4, v8, v2, v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v4, ", isWindowShowing: "

    .line 100
    .line 101
    const-string v7, ", isCoverNavBarVisible: "

    .line 102
    .line 103
    invoke-static {v2, v0, v4, v3, v7}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, ", isEnabled: "

    .line 107
    .line 108
    invoke-static {v2, v6, v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->disposeInputChannel()V

    .line 118
    .line 119
    .line 120
    if-eqz v5, :cond_9

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->coverContext:Landroid/content/Context;

    .line 123
    .line 124
    const-class v2, Landroid/hardware/input/InputManager;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 131
    .line 132
    const-string v2, "a11yGesture-swipe"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputMonitor:Landroid/view/InputMonitor;

    .line 139
    .line 140
    new-instance v1, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    goto :goto_3

    .line 149
    :cond_8
    const/4 v0, 0x0

    .line 150
    :goto_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    new-instance v4, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;

    .line 159
    .line 160
    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler$setInputChannel$1;-><init>(Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    .line 164
    .line 165
    .line 166
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->inputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 167
    .line 168
    :cond_9
    return-void
.end method
