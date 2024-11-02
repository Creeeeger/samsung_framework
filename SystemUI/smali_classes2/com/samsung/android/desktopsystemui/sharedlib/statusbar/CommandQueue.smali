.class public Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;
    }
.end annotation


# static fields
.field private static final MGS_ABORT_TRANSIENT:I = 0xa

.field private static final MGS_FOCUSED_DISPLAY_CHANGED:I = 0x8

.field private static final MGS_SET_WINDOW_STATE:I = 0xb

.field private static final MGS_SHOW_TRANSIENT:I = 0x9

.field private static final MSG_ANIMATE_EXPAND_NOTIFICATIONS_PANEL:I = 0xd

.field private static final MSG_ANIMATE_EXPAND_SETTINGS_PANEL:I = 0xe

.field private static final MSG_COLLAPSE_PANELS:I = 0xc

.field private static final MSG_DISABLE:I = 0x7

.field private static final MSG_HANDLE_SYSTEM_KEY:I = 0x4

.field private static final MSG_HIDE_RECENT_APPS:I = 0x2

.field private static final MSG_SEND_KEYEVENT_DESKTOP_TASKBAR:I = 0x6

.field private static final MSG_SHOW_RECENT_APPS:I = 0x1

.field private static final MSG_SYSTEM_BAR_CHANGED:I = 0x5

.field private static final MSG_TOGGLE_KEYBOARD_SHORTCUTS_MENU:I = 0xf

.field private static final MSG_TOGGLE_RECENT_APPS:I = 0x3


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue$1;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public abortTransient(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 9
    .line 10
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const/16 p1, 0xa

    .line 15
    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0xc

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public animateExpandNotificationsPanel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0xd

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0xe

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v2, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public appTransitionCancelled(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public appTransitionFinished(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public appTransitionPending(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public appTransitionStarting(IJJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    .line 1
    return-void
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public clearCallback()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public disable(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v2, 0x7

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 15
    .line 16
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 17
    .line 18
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    if-ne p2, p3, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public dismissInattentiveSleepWarning(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    .line 1
    return-void
.end method

.method public dumpProto([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    return-void
.end method

.method public enterStageSplitFromRunningApp(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public goToFullscreenFromSplit()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public hideAuthenticationDialog(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p2, 0x0

    .line 17
    :goto_0
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public hideToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRequestedGameToolsWin(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyRequestedSystemKey(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBiometricAuthenticated(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBiometricError(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDisplayReady(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEmergencyActionLaunchGestureDetected()V
    .locals 0

    .line 1
    return-void
.end method

.method public onFlashlightKeyPressed(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFocusedDisplayChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public onProposedRotationChanged(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;)V
    .locals 1

    .line 1
    iget-object p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p8

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 9
    .line 10
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 18
    .line 19
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 20
    .line 21
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 22
    .line 23
    iput p6, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 24
    .line 25
    iput-object p7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/4 p1, 0x5

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 35
    .line 36
    .line 37
    monitor-exit p8

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit p8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public passThroughShellCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .line 1
    return-void
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 0

    .line 1
    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueueCallbacks;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestWindowMagnificationConnection(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public resetScheduleAutoHide()V
    .locals 0

    .line 1
    return-void
.end method

.method public runGcForTest()V
    .locals 0

    .line 1
    return-void
.end method

.method public sendKeyEventToDesktopTaskbar(Landroid/view/KeyEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setBlueLightFilter(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public setIndicatorBgColor(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNavigationBarLumaSamplingEnabled(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTopAppHidesStatusBar(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setWindowState(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0xb

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 16
    .line 17
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 18
    .line 19
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    if-ne p2, p3, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 49
    .line 50
    .line 51
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public showAssistDisclosure()V
    .locals 0

    .line 1
    return-void
.end method

.method public showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public showGlobalActionsMenu(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public showInattentiveSleepWarning()V
    .locals 0

    .line 1
    return-void
.end method

.method public showMediaOutputSwitcher(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    .line 1
    return-void
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 0

    .line 1
    return-void
.end method

.method public showRearDisplayDialog(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move p1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v1

    .line 18
    :goto_0
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public showScreenPinningRequest(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public showTransient(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0x9

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 16
    .line 17
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 18
    .line 19
    if-eqz p3, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    if-ne p2, p3, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 54
    .line 55
    .line 56
    :goto_1
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public showWirelessChargingAnimation(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public startSearcleByHomeKey(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public startTracing()V
    .locals 0

    .line 1
    return-void
.end method

.method public stopTracing()V
    .locals 0

    .line 1
    return-void
.end method

.method public suppressAmbientDisplay(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/16 v2, 0xf

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public togglePanel()V
    .locals 0

    .line 1
    return-void
.end method

.method public toggleRecentApps()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public toggleSplitScreen()V
    .locals 0

    .line 1
    return-void
.end method

.method public toggleTaskbar()V
    .locals 0

    .line 1
    return-void
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    .locals 0

    .line 1
    return-void
.end method
