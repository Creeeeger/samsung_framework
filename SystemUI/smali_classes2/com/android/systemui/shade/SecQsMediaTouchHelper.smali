.class public final Lcom/android/systemui/shade/SecQsMediaTouchHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/media/SecMediaHost$MediaPanelVisibilityListener;


# instance fields
.field public actionDownStartInMediaPlayer:Z

.field public final clearVelocityTrackerRunnable:Ljava/lang/Runnable;

.field public final currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

.field public final initVelocityTrackerRunnable:Ljava/lang/Runnable;

.field public final initialTouchXConsumer:Ljava/util/function/DoubleConsumer;

.field public final initialTouchXSupplier:Ljava/util/function/DoubleSupplier;

.field public final initialTouchYConsumer:Ljava/util/function/DoubleConsumer;

.field public final initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

.field public mediaDraggedHeight:F

.field public final mediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public mediaPlayerExpanding:Z

.field public mediaPlayerScrolling:Z

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final panelLogger$delegate:Lkotlin/Lazy;

.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public qsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field public final qsSupplier:Ljava/util/function/Supplier;

.field public final trackMovementConsumer:Ljava/util/function/Consumer;

.field public final trackingPointerConsumer:Ljava/util/function/IntConsumer;

.field public final trackingPointerSupplier:Ljava/util/function/IntSupplier;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->clearVelocityTrackerRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchXConsumer:Ljava/util/function/DoubleConsumer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchXSupplier:Ljava/util/function/DoubleSupplier;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchYConsumer:Ljava/util/function/DoubleConsumer;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchYSupplier:Ljava/util/function/DoubleSupplier;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initVelocityTrackerRunnable:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsSupplier:Ljava/util/function/Supplier;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackMovementConsumer:Ljava/util/function/Consumer;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    .line 29
    .line 30
    iput-object p14, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    .line 31
    .line 32
    sget-object p1, Lcom/android/systemui/shade/SecQsMediaTouchHelper$panelLogger$2;->INSTANCE:Lcom/android/systemui/shade/SecQsMediaTouchHelper$panelLogger$2;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->panelLogger$delegate:Lkotlin/Lazy;

    .line 39
    .line 40
    return-void
.end method

.method public static log(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "QpRune.QUICK_BAR_MEDIA(ACTION_DOWN) "

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-interface {p1, p0, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final isInMediaPlayer(FF)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsSupplier:Ljava/util/function/Supplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    const/4 v2, 0x2

    .line 25
    new-array v2, v2, [I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 28
    .line 29
    .line 30
    aget v3, v2, v1

    .line 31
    .line 32
    int-to-float v3, v3

    .line 33
    const/4 v4, 0x1

    .line 34
    aget v2, v2, v4

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iget-object v5, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    .line 38
    .line 39
    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_5

    .line 44
    .line 45
    iget-object v5, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 48
    .line 49
    iget v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 50
    .line 51
    if-lez v5, :cond_3

    .line 52
    .line 53
    move v5, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move v5, v1

    .line 56
    :goto_1
    if-nez v5, :cond_5

    .line 57
    .line 58
    cmpl-float v5, p1, v3

    .line 59
    .line 60
    if-ltz v5, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    int-to-float v0, v0

    .line 67
    add-float/2addr v3, v0

    .line 68
    cmpg-float p1, p1, v3

    .line 69
    .line 70
    if-gtz p1, :cond_5

    .line 71
    .line 72
    cmpl-float p1, p2, v2

    .line 73
    .line 74
    if-ltz p1, :cond_5

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->qsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getBarHeight()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move p0, v1

    .line 86
    :goto_2
    int-to-float p0, p0

    .line 87
    add-float/2addr v2, p0

    .line 88
    cmpg-float p0, p2, v2

    .line 89
    .line 90
    if-gtz p0, :cond_5

    .line 91
    .line 92
    move v1, v4

    .line 93
    :cond_5
    return v1
.end method

.method public final onMediaVisibilityChanged(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaPlayerVisible:Z

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMediaPlayerVisible:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v0, "onMediaVisibilityChanged :  "

    .line 13
    .line 14
    const-string v1, "Stackscroller"

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimateNextTopPaddingChange:Z

    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final preparePointerIndex(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerSupplier:Ljava/util/function/IntSupplier;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->trackingPointerConsumer:Ljava/util/function/IntConsumer;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return v0
.end method

.method public final updateInitialTouchPosition(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchXConsumer:Ljava/util/function/DoubleConsumer;

    .line 2
    .line 3
    float-to-double v1, p1

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->initialTouchYConsumer:Ljava/util/function/DoubleConsumer;

    .line 8
    .line 9
    float-to-double p1, p2

    .line 10
    invoke-interface {p0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateMediaPlayerBar(Landroid/view/MotionEvent;Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$1;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v0, v2, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v3, 0x3

    .line 15
    if-ne v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->isInMediaPlayer(FF)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-object p0, v1, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->userTouch:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerExpanding:Z

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-object p1, v1, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->currentQsVelocitySupplier:Ljava/util/function/DoubleSupplier;

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    double-to-float v2, v2

    .line 52
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setTracking(FZ)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p1, v1, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 56
    .line 57
    iput-boolean v0, p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->userTouch:Z

    .line 58
    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/shade/SecQsMediaTouchHelper;->mediaPlayerScrolling:Z

    .line 60
    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/android/systemui/shade/SecQsMediaTouchHelper$onTouch$1;->run()V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    return-void
.end method
