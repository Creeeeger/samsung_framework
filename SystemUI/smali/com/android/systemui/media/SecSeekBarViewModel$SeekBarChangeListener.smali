.class public final Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 4
    .line 5
    int-to-long p1, p2

    .line 6
    iput-wide p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekBarPreesedValue:J

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p3, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;

    .line 12
    .line 13
    invoke-direct {p3, p0, p1, p2}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekProgress$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 19
    .line 20
    invoke-virtual {p0, p3}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekStarting$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;

    .line 12
    .line 13
    invoke-direct {p1, p0, v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeek$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;J)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
