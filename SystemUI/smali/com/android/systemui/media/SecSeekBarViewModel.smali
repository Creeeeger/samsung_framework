.class public final Lcom/android/systemui/media/SecSeekBarViewModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public _data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

.field public final _progress:Landroidx/lifecycle/MutableLiveData;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

.field public final callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

.field public cancel:Ljava/lang/Runnable;

.field public controller:Landroid/media/session/MediaController;

.field public coverMusicCapsuleController:Lcom/android/systemui/media/CoverMusicCapsuleController;

.field public isFalseSeek:Z

.field public lastState:Landroid/media/session/PlaybackState;

.field public listening:Z

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public onSeekBarPreesedValue:J

.field public playbackState:Landroid/media/session/PlaybackState;

.field public scrubbing:Z

.field public sessionDestroyCallback:Lcom/android/systemui/media/SecMediaControlPanel$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/RepeatableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v0, p1

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 21
    .line 22
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    .line 43
    .line 44
    return-void
.end method

.method public static final access$checkPlaybackPosition(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->duration:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_5

    .line 17
    .line 18
    int-to-long v5, v0

    .line 19
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v9, 0x3

    .line 28
    if-eq v0, v9, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v9, 0x4

    .line 35
    if-eq v0, v9, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v9, 0x5

    .line 42
    if-ne v0, v9, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v0, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 48
    :goto_1
    if-eqz v0, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v11

    .line 58
    cmp-long v0, v9, v3

    .line 59
    .line 60
    if-lez v0, :cond_4

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sub-long/2addr v11, v9

    .line 67
    long-to-float v7, v11

    .line 68
    mul-float/2addr v0, v7

    .line 69
    float-to-long v7, v0

    .line 70
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    add-long/2addr v0, v7

    .line 75
    cmp-long v7, v5, v3

    .line 76
    .line 77
    if-ltz v7, :cond_2

    .line 78
    .line 79
    cmp-long v7, v0, v5

    .line 80
    .line 81
    if-lez v7, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    cmp-long v5, v0, v3

    .line 85
    .line 86
    if-gez v5, :cond_3

    .line 87
    .line 88
    move-wide v5, v3

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    move-wide v5, v0

    .line 91
    :goto_2
    move-wide v7, v5

    .line 92
    :cond_4
    long-to-int v0, v7

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    const/4 v0, 0x0

    .line 99
    :goto_3
    if-eqz v0, :cond_7

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->elapsedTime:Ljava/lang/Integer;

    .line 104
    .line 105
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_7

    .line 110
    .line 111
    iget-wide v5, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    .line 112
    .line 113
    long-to-int v1, v5

    .line 114
    const/16 v5, 0x2f

    .line 115
    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v2, v1, v5}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    .line 129
    .line 130
    .line 131
    iput-wide v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 135
    .line 136
    invoke-static {v1, v2, v0, v5}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_4
    return-void
.end method

.method public static final access$setScrubbing(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->checkIfPollingNeeded()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v2, 0x37

    .line 14
    .line 15
    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final checkIfPollingNeeded()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->listening:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->scrubbing:Z

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x4

    .line 27
    if-eq v3, v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x5

    .line 34
    if-ne v0, v3, :cond_1

    .line 35
    .line 36
    :cond_0
    move v0, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v1

    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    move v1, v2

    .line 42
    :cond_2
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 45
    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 49
    .line 50
    new-instance v3, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfPollingNeeded$1;

    .line 51
    .line 52
    invoke-direct {v3, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$checkIfPollingNeeded$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 v4, 0x64

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    .line 62
    move-object v2, v0

    .line 63
    check-cast v2, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 64
    .line 65
    new-instance v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    move-object v6, v7

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;-><init>(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->this$0:Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 78
    .line 79
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 80
    .line 81
    const-wide/16 v3, 0x0

    .line 82
    .line 83
    invoke-virtual {v2, v0, v3, v4, v7}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;->mCancel:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 88
    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    new-instance v1, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$$ExternalSyntheticLambda0;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl$ExecutionToken;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 106
    .line 107
    .line 108
    :cond_4
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 110
    .line 111
    :cond_5
    :goto_1
    return-void
.end method

.method public final setController(Landroid/media/session/MediaController;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->callback:Lcom/android/systemui/media/SecSeekBarViewModel$callback$1;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->controller:Landroid/media/session/MediaController;

    .line 39
    .line 40
    :cond_4
    return-void
.end method

.method public final set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
