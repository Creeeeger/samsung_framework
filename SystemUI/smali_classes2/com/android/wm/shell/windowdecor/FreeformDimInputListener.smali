.class public final Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mDecorationSurface:Landroid/view/SurfaceControl;

.field public final mDisplayId:I

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mFakeWindow:Lcom/android/internal/view/BaseIWindow;

.field public final mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mInputEventReceiver:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

.field public mLayerBoosted:Z

.field public final mTaskId:I

.field public final mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

.field public mTouchableState:Z

.field public final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/TaskPositioner;I)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const-string v0, "FreeformDimInputListener of "

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    iput v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTouchableState:Z

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    move-object/from16 v3, p3

    .line 27
    .line 28
    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mChoreographer:Landroid/view/Choreographer;

    .line 29
    .line 30
    move/from16 v3, p7

    .line 31
    .line 32
    iput v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskId:I

    .line 33
    .line 34
    move/from16 v3, p4

    .line 35
    .line 36
    iput v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDisplayId:I

    .line 37
    .line 38
    move-object/from16 v4, p5

    .line 39
    .line 40
    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    .line 41
    .line 42
    new-instance v5, Lcom/android/internal/view/BaseIWindow;

    .line 43
    .line 44
    invoke-direct {v5}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    .line 48
    .line 49
    invoke-virtual {v5, v2}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 50
    .line 51
    .line 52
    new-instance v12, Landroid/os/Binder;

    .line 53
    .line 54
    invoke-direct {v12}, Landroid/os/Binder;-><init>()V

    .line 55
    .line 56
    .line 57
    new-instance v14, Landroid/view/InputChannel;

    .line 58
    .line 59
    invoke-direct {v14}, Landroid/view/InputChannel;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v14, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 63
    .line 64
    move-object/from16 v6, p6

    .line 65
    .line 66
    iput-object v6, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/TaskPositioner;

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    const/16 v7, 0x8

    .line 70
    .line 71
    const/high16 v8, 0x20000000

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    const/4 v10, 0x2

    .line 75
    const/4 v11, 0x0

    .line 76
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    move/from16 v3, p4

    .line 93
    .line 94
    move-object/from16 v4, p5

    .line 95
    .line 96
    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 102
    .line 103
    .line 104
    :goto_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 107
    .line 108
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mHandler:Landroid/os/Handler;

    .line 109
    .line 110
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mChoreographer:Landroid/view/Choreographer;

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    move-object/from16 p2, v0

    .line 114
    .line 115
    move-object/from16 p3, p0

    .line 116
    .line 117
    move-object/from16 p4, v2

    .line 118
    .line 119
    move-object/from16 p5, v3

    .line 120
    .line 121
    move-object/from16 p6, v4

    .line 122
    .line 123
    move/from16 p7, v5

    .line 124
    .line 125
    invoke-direct/range {p2 .. p7}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;I)V

    .line 126
    .line 127
    .line 128
    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    .line 129
    .line 130
    new-instance v2, Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 131
    .line 132
    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    .line 133
    .line 134
    .line 135
    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 136
    .line 137
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 146
    .line 147
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MOTION_ANIMATION:Z

    .line 148
    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    new-instance v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 152
    .line 153
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-direct {v0, v2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;-><init>(Landroid/view/ViewConfiguration;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    .line 161
    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public final updateBoostIfNeeded(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mLayerBoosted:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mLayerBoosted:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "updateBoostIfNeeded: t #"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskId:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", boost="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "FreeformDimInputListener"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskId:I

    .line 42
    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setBoostFreeformTaskLayer(IZ)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
