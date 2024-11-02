.class public final synthetic Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler;->mShortcutController:Lcom/android/wm/shell/shortcut/ShortcutController;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 21
    .line 22
    iget-object v3, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mSplitScreenController:Ljava/util/Optional;

    .line 23
    .line 24
    iget-object v4, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-direct {v0, p0, v4, v2, v3}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    .line 30
    .line 31
    iget-object p0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mShortCutPolicyMap:Landroid/util/SparseArray;

    .line 32
    .line 33
    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutLeftKeyLaunchPolicy;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutLeftKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x15

    .line 39
    .line 40
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutRightKeyLaunchPolicy;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutRightKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x16

    .line 49
    .line 50
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutUpKeyLaunchPolicy;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutUpKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x13

    .line 59
    .line 60
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutDownKeyLaunchPolicy;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutDownKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    .line 66
    .line 67
    .line 68
    const/16 v2, 0x14

    .line 69
    .line 70
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/android/wm/shell/shortcut/ShortcutRotationKeyLaunchPolicy;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/android/wm/shell/shortcut/ShortcutRotationKeyLaunchPolicy;-><init>(Lcom/android/wm/shell/shortcut/ShortcutController;)V

    .line 76
    .line 77
    .line 78
    const/16 v2, 0x2e

    .line 79
    .line 80
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-object v0, v1, Lcom/android/wm/shell/shortcut/ShortcutController;->mKeyEventListener:Lcom/android/wm/shell/shortcut/ShortcutController$KeyEventListenerImpl;

    .line 88
    .line 89
    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->registKeyEventListener(Lcom/samsung/android/multiwindow/IKeyEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v1, "setFreeformTaskTransitionStarter: e="

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string v0, "ShortcutController"

    .line 110
    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformTaskTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
