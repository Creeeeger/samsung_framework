.class public final Lcom/android/wm/shell/freeform/FreeformContainerManager$H;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public mIsBindingMinimizeContainerService:Z

.field public mIsBindingSmartPopupViewService:Z

.field public final mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

.field public final mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

.field public final synthetic this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 5
    new-instance p2, Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    const-string/jumbo p2, "window"

    .line 6
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 9
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    if-eqz p2, :cond_0

    .line 10
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerManager;Landroid/os/Looper;)V

    return-void
.end method

.method public static messageToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, "UNKNOWN"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_1
    const-string p0, "MINIMIZE_CONTAINER_TRAY_COLLAPSE"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_2
    const-string p0, "TASK_MOVE_ENDED"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_3
    const-string p0, "TASK_MOVE_STARTED"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_4
    const-string p0, "FREEFORM_CONTAINER_SET_POINTER_POSITION"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_5
    const-string p0, "FREEFORM_CONTAINER_CONFIGURATION_CHANGED"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_6
    const-string p0, "FREEFORM_CONTAINER_CLOSE_FULLSCREEN_MODE"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_7
    const-string p0, "FREEFORM_CONTAINER_ROTATION_CHANGED"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_8
    const-string p0, "FREEFORM_CONTAINER_REBUILD_ALL"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_9
    const-string p0, "FREEFORM_CONTAINER_USER_SWITCH"

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_a
    const-string p0, "FREEFORM_CONTAINER_LOAD_ICON_COMPLETED"

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_b
    const-string p0, "FREEFORM_CONTAINER_LAUNCH_ITEM"

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_c
    const-string p0, "SMART_POPUP_VIEW_REMOVE_ITEM"

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_d
    const-string p0, "SMART_POPUP_VIEW_ADD_ITEM"

    .line 44
    .line 45
    return-object p0

    .line 46
    :pswitch_e
    const-string p0, "SMART_POPUP_VIEW_SERVICE_UNBIND"

    .line 47
    .line 48
    return-object p0

    .line 49
    :pswitch_f
    const-string p0, "SMART_POPUP_VIEW_SERVICE_BIND"

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_10
    const-string p0, "MINIMIZE_CONTAINER_REMOVE_ALL_ITEM"

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_11
    const-string p0, "MINIMIZE_CONTAINER_MINIMIZE_TIMEOUT"

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_12
    const-string p0, "MINIMIZE_CONTAINER_ANIM_COMPLETED"

    .line 59
    .line 60
    return-object p0

    .line 61
    :pswitch_13
    const-string p0, "MINIMIZE_CONTAINER_REMOVE_ITEM"

    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_14
    const-string p0, "MINIMIZE_CONTAINER_ADD_ITEM"

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_15
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_UNBIND"

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_16
    const-string p0, "MINIMIZE_CONTAINER_SERVICE_BIND"

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final destroy()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    const-string v2, "FreeformContainer"

    .line 12
    .line 13
    const-string v3, "[ViewController] destroy"

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 19
    .line 20
    check-cast v2, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerCallback;

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v5, "[ViewController] onViewDestroyed: "

    .line 41
    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, "FreeformContainer"

    .line 53
    .line 54
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Lcom/android/wm/shell/freeform/FreeformContainerCallback;->onViewDestroyed()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    .line 63
    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 64
    .line 65
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 69
    .line 70
    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 71
    .line 72
    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 74
    .line 75
    check-cast v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 78
    .line 79
    .line 80
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x15

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0xb

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    move v0, v3

    .line 30
    :goto_1
    if-nez v0, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    instance-of v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    const/4 v0, 0x0

    .line 43
    :goto_2
    const-string v1, "FreeformContainer"

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v5, "[Manager] handleMessage: "

    .line 48
    .line 49
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v5, p1, Landroid/os/Message;->what:I

    .line 53
    .line 54
    invoke-static {v5}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    const-string v5, ""

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, " item="

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    .line 91
    .line 92
    const/16 v4, 0x2a

    .line 93
    .line 94
    if-eq v1, v4, :cond_18

    .line 95
    .line 96
    packed-switch v1, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    packed-switch v1, :pswitch_data_1

    .line 100
    .line 101
    .line 102
    packed-switch v1, :pswitch_data_2

    .line 103
    .line 104
    .line 105
    goto/16 :goto_c

    .line 106
    .line 107
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllMinimizeContainerItem()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_c

    .line 113
    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 115
    .line 116
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->animationCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_c

    .line 130
    .line 131
    :cond_6
    const-string p0, "FreeformContainer"

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "[Manager] "

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    .line 141
    .line 142
    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, " failed, due to no taskId: "

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    goto/16 :goto_c

    .line 167
    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 169
    .line 170
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_c

    .line 184
    .line 185
    :cond_7
    const-string p0, "FreeformContainer"

    .line 186
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v1, "[Manager] "

    .line 190
    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget v1, p1, Landroid/os/Message;->what:I

    .line 195
    .line 196
    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, " failed, due to no taskId: "

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 209
    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    goto/16 :goto_c

    .line 221
    .line 222
    :pswitch_3
    if-eqz v0, :cond_1a

    .line 223
    .line 224
    const/16 p1, 0x10

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    const-wide/16 v1, 0xbb8

    .line 235
    .line 236
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 237
    .line 238
    .line 239
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_c

    .line 245
    .line 246
    :pswitch_4
    iput-boolean v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-eqz p1, :cond_8

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    .line 255
    .line 256
    .line 257
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    .line 258
    .line 259
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 260
    .line 261
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    .line 262
    .line 263
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 269
    .line 270
    .line 271
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 272
    .line 273
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mFreeformContainerReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    .line 276
    .line 277
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_c

    .line 281
    .line 282
    :cond_8
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllMinimizeContainerItem()V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_c

    .line 288
    .line 289
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_9

    .line 294
    .line 295
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->registerReceivers()V

    .line 299
    .line 300
    .line 301
    :cond_9
    iput-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 302
    .line 303
    goto/16 :goto_c

    .line 304
    .line 305
    :pswitch_6
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 306
    .line 307
    if-eqz p1, :cond_1a

    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 310
    .line 311
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_c

    .line 315
    .line 316
    :pswitch_7
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 317
    .line 318
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v1, Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    instance-of v1, v0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    .line 327
    .line 328
    if-eqz v1, :cond_a

    .line 329
    .line 330
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 331
    .line 332
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_c

    .line 336
    .line 337
    :cond_a
    const-string p0, "FreeformContainer"

    .line 338
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v1, "[Manager] "

    .line 342
    .line 343
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget v1, p1, Landroid/os/Message;->what:I

    .line 347
    .line 348
    invoke-static {v1}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->messageToString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v1, " failed, due to no smart popup view item which has packageName: "

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto/16 :goto_c

    .line 373
    .line 374
    :pswitch_8
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 375
    .line 376
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 377
    .line 378
    .line 379
    move-result p1

    .line 380
    if-nez p1, :cond_b

    .line 381
    .line 382
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 383
    .line 384
    invoke-virtual {p1, v3, v3, v3}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 385
    .line 386
    .line 387
    :cond_b
    if-eqz v0, :cond_1a

    .line 388
    .line 389
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 390
    .line 391
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_c

    .line 395
    .line 396
    :pswitch_9
    iput-boolean v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-eqz p1, :cond_c

    .line 403
    .line 404
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    .line 405
    .line 406
    .line 407
    :try_start_1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    .line 408
    .line 409
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 410
    .line 411
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    .line 412
    .line 413
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    .line 415
    .line 416
    goto :goto_5

    .line 417
    :catch_1
    move-exception p1

    .line 418
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 419
    .line 420
    .line 421
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 422
    .line 423
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 424
    .line 425
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mFreeformContainerReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    .line 426
    .line 427
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_c

    .line 431
    .line 432
    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 433
    .line 434
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_c

    .line 438
    .line 439
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->noRunningService()Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-eqz p1, :cond_d

    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->registerReceivers()V

    .line 449
    .line 450
    .line 451
    :cond_d
    iput-boolean v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    .line 452
    .line 453
    goto/16 :goto_c

    .line 454
    .line 455
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v0, Landroid/graphics/Point;

    .line 458
    .line 459
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 460
    .line 461
    if-ne p1, v3, :cond_e

    .line 462
    .line 463
    goto :goto_6

    .line 464
    :cond_e
    move v3, v2

    .line 465
    :goto_6
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 466
    .line 467
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 468
    .line 469
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 470
    .line 471
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 472
    .line 473
    int-to-float p1, p1

    .line 474
    int-to-float v0, v0

    .line 475
    invoke-virtual {v1, p1, v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 476
    .line 477
    .line 478
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 479
    .line 480
    iput-boolean v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    .line 481
    .line 482
    goto/16 :goto_c

    .line 483
    .line 484
    :pswitch_c
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 485
    .line 486
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isPointerView()Z

    .line 487
    .line 488
    .line 489
    move-result p1

    .line 490
    if-eqz p1, :cond_f

    .line 491
    .line 492
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 493
    .line 494
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 495
    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 498
    .line 499
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 500
    .line 501
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->updatePointerViewImmediately()V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_c

    .line 505
    .line 506
    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 507
    .line 508
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 509
    .line 510
    .line 511
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 512
    .line 513
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_c

    .line 517
    .line 518
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 519
    .line 520
    instance-of v0, p1, Ljava/lang/String;

    .line 521
    .line 522
    if-eqz v0, :cond_1a

    .line 523
    .line 524
    check-cast p1, Ljava/lang/String;

    .line 525
    .line 526
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 527
    .line 528
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 529
    .line 530
    .line 531
    move-result p1

    .line 532
    if-eqz p1, :cond_1a

    .line 533
    .line 534
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 535
    .line 536
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 537
    .line 538
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_c

    .line 542
    .line 543
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 544
    .line 545
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 546
    .line 547
    iget v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    .line 548
    .line 549
    if-eq v0, p1, :cond_1a

    .line 550
    .line 551
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 552
    .line 553
    const-string v1, "fullscreen_mode_request_screen_rotating"

    .line 554
    .line 555
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    const-string v0, "fullscreen_mode_request_screen_rotating"

    .line 559
    .line 560
    const/16 v1, 0x23

    .line 561
    .line 562
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 566
    .line 567
    const-string v3, "fullscreen_mode_request_screen_rotating"

    .line 568
    .line 569
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->openFullscreenMode(Ljava/lang/String;)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_10

    .line 574
    .line 575
    const-string v0, "fullscreen_mode_request_screen_rotating"

    .line 576
    .line 577
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    const-wide/16 v3, 0x7d0

    .line 582
    .line 583
    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    .line 585
    .line 586
    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    .line 590
    .line 591
    new-instance v1, Ljava/util/ArrayList;

    .line 592
    .line 593
    iget-object v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 594
    .line 595
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_11

    .line 607
    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 613
    .line 614
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->animationCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 615
    .line 616
    .line 617
    goto :goto_7

    .line 618
    :cond_11
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 621
    .line 622
    .line 623
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 624
    .line 625
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 626
    .line 627
    iget v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    .line 628
    .line 629
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    .line 630
    .line 631
    .line 632
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 633
    .line 634
    check-cast v2, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    if-eqz v3, :cond_12

    .line 645
    .line 646
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerCallback;

    .line 651
    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    const-string v5, "[ViewController] onRotationChanged: "

    .line 655
    .line 656
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    const-string v5, "FreeformContainer"

    .line 667
    .line 668
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 672
    .line 673
    invoke-interface {v3, v1, p1, v4}, Lcom/android/wm/shell/freeform/FreeformContainerCallback;->onRotationChanged(IILandroid/graphics/Rect;)V

    .line 674
    .line 675
    .line 676
    goto :goto_8

    .line 677
    :cond_12
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 678
    .line 679
    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    .line 680
    .line 681
    goto/16 :goto_c

    .line 682
    .line 683
    :pswitch_f
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 684
    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    new-instance v0, Ljava/util/ArrayList;

    .line 689
    .line 690
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 691
    .line 692
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 693
    .line 694
    .line 695
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;

    .line 696
    .line 697
    invoke-direct {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;-><init>()V

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    .line 707
    .line 708
    .line 709
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 710
    .line 711
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 712
    .line 713
    monitor-enter p1

    .line 714
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 715
    .line 716
    .line 717
    move-result v1

    .line 718
    :goto_9
    add-int/lit8 v1, v1, -0x1

    .line 719
    .line 720
    if-ltz v1, :cond_13

    .line 721
    .line 722
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 727
    .line 728
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 729
    .line 730
    .line 731
    goto :goto_9

    .line 732
    :cond_13
    monitor-exit p1

    .line 733
    goto/16 :goto_c

    .line 734
    .line 735
    :catchall_0
    move-exception p0

    .line 736
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    throw p0

    .line 738
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->destroy()V

    .line 739
    .line 740
    .line 741
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->init()V

    .line 742
    .line 743
    .line 744
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 745
    .line 746
    if-eqz p1, :cond_14

    .line 747
    .line 748
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 749
    .line 750
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllSmartPopupViewItem()V

    .line 751
    .line 752
    .line 753
    :cond_14
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 754
    .line 755
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 756
    .line 757
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 758
    .line 759
    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 760
    .line 761
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 762
    .line 763
    .line 764
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    if-eqz v0, :cond_1a

    .line 773
    .line 774
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    if-nez v1, :cond_1a

    .line 779
    .line 780
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 785
    .line 786
    .line 787
    move-result v0

    .line 788
    if-eqz v0, :cond_1a

    .line 789
    .line 790
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 795
    .line 796
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 801
    .line 802
    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 803
    .line 804
    const-wide/16 v4, 0x80

    .line 805
    .line 806
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    if-nez v1, :cond_15

    .line 811
    .line 812
    goto :goto_a

    .line 813
    :cond_15
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 814
    .line 815
    new-instance v8, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    .line 816
    .line 817
    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 818
    .line 819
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 820
    .line 821
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 822
    .line 823
    const/4 v6, 0x1

    .line 824
    move-object v0, v8

    .line 825
    move-object v1, p0

    .line 826
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/freeform/MinimizeContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;IIZ)V

    .line 827
    .line 828
    .line 829
    invoke-virtual {p1, v8}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 830
    .line 831
    .line 832
    goto :goto_a

    .line 833
    :catch_2
    move-exception v0

    .line 834
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 835
    .line 836
    .line 837
    goto :goto_a

    .line 838
    :pswitch_11
    if-eqz v0, :cond_1a

    .line 839
    .line 840
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 841
    .line 842
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    const-string v1, "[ItemController] iconLoadCompleted: item="

    .line 848
    .line 849
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object p1

    .line 859
    const-string v1, "FreeformContainer"

    .line 860
    .line 861
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .line 863
    .line 864
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 865
    .line 866
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    move-result p1

    .line 870
    if-nez p1, :cond_16

    .line 871
    .line 872
    new-instance p0, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    const-string p1, "[ItemController] iconLoadCompleted failed item(="

    .line 875
    .line 876
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string p1, ") is not in list"

    .line 883
    .line 884
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object p0

    .line 891
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    goto :goto_c

    .line 895
    :cond_16
    iget-boolean p1, v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    .line 896
    .line 897
    if-nez p1, :cond_17

    .line 898
    .line 899
    iput-boolean v3, v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    .line 900
    .line 901
    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->publishItemIfNeeded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 902
    .line 903
    .line 904
    goto :goto_c

    .line 905
    :pswitch_12
    if-eqz v0, :cond_1a

    .line 906
    .line 907
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 908
    .line 909
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->launch()V

    .line 913
    .line 914
    .line 915
    goto :goto_c

    .line 916
    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 917
    .line 918
    iget p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 919
    .line 920
    const/4 v0, 0x2

    .line 921
    if-ne p1, v0, :cond_19

    .line 922
    .line 923
    move p1, v3

    .line 924
    goto :goto_b

    .line 925
    :cond_19
    move p1, v2

    .line 926
    :goto_b
    if-eqz p1, :cond_1a

    .line 927
    .line 928
    invoke-virtual {p0, v3, v2, v3}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 929
    .line 930
    .line 931
    :cond_1a
    :goto_c
    return-void

    .line 932
    nop

    .line 933
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public final init()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v3, "[ViewController] init"

    .line 11
    .line 12
    const-string v4, "FreeformContainer"

    .line 13
    .line 14
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 18
    .line 19
    iput-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    iput v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mState:I

    .line 23
    .line 24
    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFullscreenModeRequests:Ljava/util/List;

    .line 25
    .line 26
    check-cast v3, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    .line 36
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 37
    .line 38
    const/16 v5, 0xa2c

    .line 39
    .line 40
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 41
    .line 42
    const v5, 0x1800328

    .line 43
    .line 44
    .line 45
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    .line 47
    const/4 v5, -0x2

    .line 48
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 54
    .line 55
    or-int/lit8 v5, v5, 0x10

    .line 56
    .line 57
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 58
    .line 59
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 60
    .line 61
    const/high16 v6, 0x20000

    .line 62
    .line 63
    or-int/2addr v5, v6

    .line 64
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 68
    .line 69
    const/16 v6, 0x11

    .line 70
    .line 71
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    .line 73
    const v6, 0x7f140200

    .line 74
    .line 75
    .line 76
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateDisplayFrame(Z)V

    .line 79
    .line 80
    .line 81
    iget-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 82
    .line 83
    const v7, 0x7f0d0100

    .line 84
    .line 85
    .line 86
    const/4 v8, 0x0

    .line 87
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 92
    .line 93
    iput-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 94
    .line 95
    const v7, 0x7f0a041f

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 103
    .line 104
    iput-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 105
    .line 106
    iget-object v6, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 107
    .line 108
    iget-object v7, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 109
    .line 110
    iput-object v1, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 111
    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v9, "[ViewController] registerCallback: "

    .line 115
    .line 116
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v8, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    .line 130
    .line 131
    move-object v10, v8

    .line 132
    check-cast v10, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    iput-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    iget-object v10, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mInsetsComputer:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda1;

    .line 148
    .line 149
    invoke-virtual {v7, v10}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v10, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mSystemGestureExcludeUpdater:Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda2;

    .line 153
    .line 154
    invoke-virtual {v7, v10}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    const v10, 0x7f07039a

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mDefaultGapTop:I

    .line 171
    .line 172
    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    const v10, 0x7f070395

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mThresholdToMove:I

    .line 186
    .line 187
    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    const v10, 0x7f07039b

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerSettleDownGap:I

    .line 201
    .line 202
    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    const v10, 0x7f070391

    .line 209
    .line 210
    .line 211
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconLeftMarginInFolder:I

    .line 216
    .line 217
    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    const v10, 0x7f070393

    .line 224
    .line 225
    .line 226
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mIconItemTopMarginInFolder:I

    .line 231
    .line 232
    iget-object v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    const v10, 0x7f070388

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    add-int/2addr v7, v5

    .line 246
    iput v7, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mAnimElevation:I

    .line 247
    .line 248
    iget-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 249
    .line 250
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    const v7, 0x7f070396

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    iput v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 262
    .line 263
    const v5, 0x7f0a0418

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    check-cast v5, Landroid/widget/FrameLayout;

    .line 271
    .line 272
    iput-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mBackgroundDimView:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    const v5, 0x7f0a041e

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Landroid/view/ViewGroup;

    .line 282
    .line 283
    iput-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerGroupView:Landroid/view/ViewGroup;

    .line 284
    .line 285
    const v5, 0x7f0a041d

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Landroid/widget/ImageButton;

    .line 293
    .line 294
    iput-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 295
    .line 296
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 297
    .line 298
    .line 299
    iget-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 300
    .line 301
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 302
    .line 303
    .line 304
    iget-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 305
    .line 306
    new-instance v7, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;

    .line 307
    .line 308
    invoke-direct {v7, v6}, Lcom/android/wm/shell/freeform/FreeformContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerView;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    .line 313
    .line 314
    iget-object v5, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 315
    .line 316
    const-string v7, "freeform_container_pref"

    .line 317
    .line 318
    invoke-virtual {v5, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    const-string/jumbo v7, "position_x"

    .line 323
    .line 324
    .line 325
    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-eqz v10, :cond_2

    .line 330
    .line 331
    const-string/jumbo v10, "position_y"

    .line 332
    .line 333
    .line 334
    invoke-interface {v5, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    if-nez v11, :cond_0

    .line 339
    .line 340
    goto/16 :goto_0

    .line 341
    .line 342
    :cond_0
    iget-object v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 345
    .line 346
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    int-to-float v2, v2

    .line 351
    const v11, 0x3f4ccccd    # 0.8f

    .line 352
    .line 353
    .line 354
    mul-float/2addr v2, v11

    .line 355
    iget-object v11, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerView:Landroid/widget/ImageButton;

    .line 356
    .line 357
    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    .line 358
    .line 359
    .line 360
    move-result v11

    .line 361
    int-to-float v11, v11

    .line 362
    const/high16 v12, 0x40000000    # 2.0f

    .line 363
    .line 364
    div-float/2addr v11, v12

    .line 365
    sub-float/2addr v2, v11

    .line 366
    iget-object v11, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 367
    .line 368
    iget-object v11, v11, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 369
    .line 370
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 371
    .line 372
    iget v12, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mDefaultGapTop:I

    .line 373
    .line 374
    add-int/2addr v11, v12

    .line 375
    int-to-float v11, v11

    .line 376
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 377
    .line 378
    .line 379
    move-result v7

    .line 380
    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 381
    .line 382
    .line 383
    move-result v10

    .line 384
    iget-object v12, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 385
    .line 386
    float-to-int v13, v7

    .line 387
    float-to-int v14, v10

    .line 388
    iget v15, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mPointerViewSize:I

    .line 389
    .line 390
    add-int v0, v13, v15

    .line 391
    .line 392
    add-int/2addr v15, v14

    .line 393
    invoke-virtual {v12, v13, v14, v0, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 397
    .line 398
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    const-string/jumbo v12, "rotation"

    .line 407
    .line 408
    .line 409
    invoke-interface {v5, v12, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-eq v0, v5, :cond_1

    .line 414
    .line 415
    iget-object v12, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 416
    .line 417
    iget-object v12, v12, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDisplayFrame:Landroid/graphics/Rect;

    .line 418
    .line 419
    iget-object v13, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 420
    .line 421
    invoke-static {v12, v13, v5, v0}, Lcom/android/wm/shell/freeform/FreeformContainerView;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 422
    .line 423
    .line 424
    :cond_1
    const-string v0, "[ContainerView] loadPositionFromSharedPreferences, position=("

    .line 425
    .line 426
    const-string v5, ","

    .line 427
    .line 428
    const-string v12, ") default=("

    .line 429
    .line 430
    invoke-static {v0, v7, v5, v10, v12}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v2, ")"

    .line 444
    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    iget-object v0, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mTmpBounds:Landroid/graphics/Rect;

    .line 456
    .line 457
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 458
    .line 459
    int-to-float v2, v2

    .line 460
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 461
    .line 462
    int-to-float v0, v0

    .line 463
    const/4 v5, 0x0

    .line 464
    invoke-virtual {v6, v2, v0, v5}, Lcom/android/wm/shell/freeform/FreeformContainerView;->setPointerPosition(FFZ)V

    .line 465
    .line 466
    .line 467
    move v2, v5

    .line 468
    goto :goto_1

    .line 469
    :cond_2
    :goto_0
    const-string v0, "[ContainerView] loadPositionFromSharedPreferences, need to init position"

    .line 470
    .line 471
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    const/4 v0, 0x1

    .line 475
    iput-boolean v0, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mNeedInitPosition:Z

    .line 476
    .line 477
    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 478
    .line 479
    .line 480
    const/16 v0, 0x8

    .line 481
    .line 482
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 483
    .line 484
    .line 485
    iget-object v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 486
    .line 487
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    iput v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMinimumFlingVelocity:I

    .line 496
    .line 497
    iget-object v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mContext:Landroid/content/Context;

    .line 498
    .line 499
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    iput v2, v6, Lcom/android/wm/shell/freeform/FreeformContainerView;->mMaximumFlingVelocity:I

    .line 508
    .line 509
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mFolderView:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 510
    .line 511
    iget-object v5, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 512
    .line 513
    iput-object v1, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 514
    .line 515
    new-instance v6, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v6

    .line 527
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .line 529
    .line 530
    check-cast v8, Ljava/util/ArrayList;

    .line 531
    .line 532
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    iput-object v5, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 536
    .line 537
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getRootView()Landroid/view/View;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    const v5, 0x7f0a041a

    .line 542
    .line 543
    .line 544
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    check-cast v4, Landroid/widget/ImageView;

    .line 549
    .line 550
    iput-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 551
    .line 552
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView;->getRootView()Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    const v5, 0x7f0a0420

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    check-cast v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 564
    .line 565
    iput-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 566
    .line 567
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 568
    .line 569
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    const v5, 0x7f07038b

    .line 574
    .line 575
    .line 576
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    iput v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    .line 581
    .line 582
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 583
    .line 584
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    const v5, 0x7f07038c

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    iput v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingLeft:I

    .line 596
    .line 597
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 598
    .line 599
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    const v5, 0x7f07038d

    .line 604
    .line 605
    .line 606
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    iput v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingRight:I

    .line 611
    .line 612
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 613
    .line 614
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 615
    .line 616
    .line 617
    move-result-object v4

    .line 618
    const v5, 0x7f070395

    .line 619
    .line 620
    .line 621
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    iput v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mThresholdToMove:I

    .line 626
    .line 627
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 628
    .line 629
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    const v5, 0x7f080a13

    .line 634
    .line 635
    .line 636
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 637
    .line 638
    .line 639
    move-result-object v4

    .line 640
    iput-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

    .line 641
    .line 642
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 643
    .line 644
    new-instance v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;

    .line 645
    .line 646
    const/4 v6, 0x0

    .line 647
    invoke-direct {v5, v2, v6}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    .line 648
    .line 649
    .line 650
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButton:Landroid/widget/ImageView;

    .line 651
    .line 652
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    .line 654
    .line 655
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 656
    .line 657
    new-instance v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;

    .line 658
    .line 659
    const/4 v6, 0x1

    .line 660
    invoke-direct {v5, v2, v6}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    .line 661
    .line 662
    .line 663
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButton:Landroid/widget/ImageView;

    .line 664
    .line 665
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 666
    .line 667
    .line 668
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 669
    .line 670
    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 671
    .line 672
    iget-object v6, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 673
    .line 674
    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 675
    .line 676
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 677
    .line 678
    .line 679
    move-result-object v6

    .line 680
    const v7, 0x7f070391

    .line 681
    .line 682
    .line 683
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 684
    .line 685
    .line 686
    move-result v6

    .line 687
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 688
    .line 689
    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 690
    .line 691
    iget-object v6, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 692
    .line 693
    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 694
    .line 695
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    const v7, 0x7f070393

    .line 700
    .line 701
    .line 702
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 703
    .line 704
    .line 705
    move-result v6

    .line 706
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 707
    .line 708
    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 709
    .line 710
    iget-object v6, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 711
    .line 712
    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 713
    .line 714
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    const v7, 0x7f070392

    .line 719
    .line 720
    .line 721
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 722
    .line 723
    .line 724
    move-result v6

    .line 725
    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 726
    .line 727
    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 728
    .line 729
    iget-object v6, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 730
    .line 731
    iget-object v6, v6, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 732
    .line 733
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    const v7, 0x7f070390

    .line 738
    .line 739
    .line 740
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 741
    .line 742
    .line 743
    move-result v6

    .line 744
    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 745
    .line 746
    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 747
    .line 748
    iget-object v5, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 749
    .line 750
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    const v6, 0x7f070394

    .line 755
    .line 756
    .line 757
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 758
    .line 759
    .line 760
    move-result v5

    .line 761
    iput v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 762
    .line 763
    iget-object v5, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    .line 764
    .line 765
    iget-object v5, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 766
    .line 767
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 768
    .line 769
    iget-object v5, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mItemMargin:Landroid/graphics/Rect;

    .line 770
    .line 771
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 772
    .line 773
    .line 774
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 775
    .line 776
    if-eqz v4, :cond_3

    .line 777
    .line 778
    move v4, v0

    .line 779
    goto :goto_2

    .line 780
    :cond_3
    const/4 v4, 0x4

    .line 781
    :goto_2
    iput v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    .line 782
    .line 783
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 784
    .line 785
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    invoke-virtual {v4}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 794
    .line 795
    .line 796
    move-result v4

    .line 797
    iget-object v5, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 798
    .line 799
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    const-string/jumbo v6, "wallpapertheme_state"

    .line 804
    .line 805
    .line 806
    const/4 v7, 0x0

    .line 807
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 808
    .line 809
    .line 810
    move-result v5

    .line 811
    const/4 v6, 0x1

    .line 812
    if-ne v5, v6, :cond_4

    .line 813
    .line 814
    const/4 v7, 0x1

    .line 815
    :cond_4
    if-eqz v7, :cond_5

    .line 816
    .line 817
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 818
    .line 819
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    const v5, 0x1060384

    .line 824
    .line 825
    .line 826
    const/4 v6, 0x0

    .line 827
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    iput-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 832
    .line 833
    goto :goto_3

    .line 834
    :cond_5
    const/4 v5, 0x0

    .line 835
    if-eqz v4, :cond_6

    .line 836
    .line 837
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 838
    .line 839
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 840
    .line 841
    .line 842
    move-result-object v4

    .line 843
    const v6, 0x7f060570

    .line 844
    .line 845
    .line 846
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 847
    .line 848
    .line 849
    move-result-object v4

    .line 850
    iput-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 851
    .line 852
    goto :goto_3

    .line 853
    :cond_6
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 854
    .line 855
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    const v6, 0x7f060571

    .line 860
    .line 861
    .line 862
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    iput-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 867
    .line 868
    :goto_3
    iget-object v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 869
    .line 870
    iget-object v5, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mColorTintList:Landroid/content/res/ColorStateList;

    .line 871
    .line 872
    iget-object v6, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButton:Landroid/widget/ImageView;

    .line 873
    .line 874
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 875
    .line 876
    .line 877
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButton:Landroid/widget/ImageView;

    .line 878
    .line 879
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 883
    .line 884
    .line 885
    iget-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 886
    .line 887
    const/16 v2, 0x200

    .line 888
    .line 889
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 890
    .line 891
    .line 892
    iget-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mContainerView:Lcom/android/wm/shell/freeform/FreeformContainerView;

    .line 893
    .line 894
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mWindowManager:Landroid/view/WindowManager;

    .line 895
    .line 896
    invoke-interface {v2, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    .line 898
    .line 899
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 900
    .line 901
    const/4 v2, 0x1

    .line 902
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerViewController;I)V

    .line 903
    .line 904
    .line 905
    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mHideCallback:Lcom/android/wm/shell/freeform/FreeformContainerViewController$$ExternalSyntheticLambda1;

    .line 906
    .line 907
    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->createOrUpdateDismissButton()V

    .line 908
    .line 909
    .line 910
    move-object/from16 v0, p0

    .line 911
    .line 912
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mItemController:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    .line 913
    .line 914
    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 915
    .line 916
    iput-object v0, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 917
    .line 918
    iput-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 919
    .line 920
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

    .line 921
    .line 922
    invoke-virtual {v2}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->loadResources()V

    .line 923
    .line 924
    .line 925
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 926
    .line 927
    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 928
    .line 929
    .line 930
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 931
    .line 932
    const/4 v4, 0x1

    .line 933
    const/4 v5, 0x1

    .line 934
    const-wide/16 v6, 0x1

    .line 935
    .line 936
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 937
    .line 938
    move-object v3, v2

    .line 939
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 940
    .line 941
    .line 942
    iput-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 943
    .line 944
    const/4 v1, 0x1

    .line 945
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 946
    .line 947
    .line 948
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 949
    .line 950
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 951
    .line 952
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 953
    .line 954
    .line 955
    move-result-object v1

    .line 956
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    iput v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotation:I

    .line 961
    .line 962
    return-void
.end method

.method public final noRunningService()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingSmartPopupViewService:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIsBindingMinimizeContainerService:Z

    .line 12
    .line 13
    xor-int/lit8 p0, p0, 0x1

    .line 14
    .line 15
    return p0
.end method

.method public final registerReceivers()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->mIWindowManager:Landroid/view/IWindowManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mRotationWatcher:Lcom/android/wm/shell/freeform/FreeformContainerManager$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 17
    .line 18
    new-instance v1, Landroid/content/res/Configuration;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mConfiguration:Landroid/content/res/Configuration;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerManager;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mFreeformContainerFilter:Landroid/content/IntentFilter;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerManager;->mFreeformContainerReceiver:Lcom/android/wm/shell/freeform/FreeformContainerManager$2;

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final sendMessage(I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
