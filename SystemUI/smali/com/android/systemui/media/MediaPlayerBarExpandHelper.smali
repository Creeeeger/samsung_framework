.class public final Lcom/android/systemui/media/MediaPlayerBarExpandHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final argbEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

.field public final barCallbackSupplier:Ljava/util/function/Supplier;

.field public final context:Landroid/content/Context;

.field public expandAnimator:Landroid/animation/ValueAnimator;

.field public final expandCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

.field public final frameSupplier:Ljava/util/function/Supplier;

.field public final indicatorExpandSelectedColor:I

.field public final indicatorExpandUnselectedColor:I

.field public initialBarHeight:I

.field public isGestureExpand:Z

.field public final mediaPlayerData:Lcom/android/systemui/media/SecMediaPlayerData;

.field public final pageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public playerBarState:I

.field public playerExpansionHeight:I

.field public final rect:Landroid/graphics/Rect;

.field public final resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public tracking:Z

.field public userTouch:Z

.field public velocity:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/SecMediaPlayerData;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/qs/bar/BarController$4;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->mediaPlayerData:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->barCallbackSupplier:Ljava/util/function/Supplier;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->frameSupplier:Ljava/util/function/Supplier;

    .line 11
    .line 12
    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 21
    .line 22
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/view/View;

    .line 27
    .line 28
    const p3, 0x7f0a099f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/systemui/qs/SecPageIndicator;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/android/systemui/qs/SecPageIndicator;->setSecIndicatorColorResId()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->pageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 41
    .line 42
    new-instance p2, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->rect:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 54
    .line 55
    const p2, 0x7f0603cd

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->indicatorExpandSelectedColor:I

    .line 63
    .line 64
    const/16 p2, 0xb4

    .line 65
    .line 66
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->indicatorExpandUnselectedColor:I

    .line 71
    .line 72
    new-instance p1, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 73
    .line 74
    invoke-direct {p1}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->argbEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    .line 78
    .line 79
    new-instance p1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;-><init>(Lcom/android/systemui/media/MediaPlayerBarExpandHelper;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->expandCallback:Lcom/android/systemui/media/MediaPlayerBarExpandHelper$expandCallback$1;

    .line 85
    .line 86
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/view/View;

    .line 91
    .line 92
    new-instance p2, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;

    .line 93
    .line 94
    invoke-direct {p2, p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$1;-><init>(Lcom/android/systemui/media/MediaPlayerBarExpandHelper;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final getCollapsedHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const v0, 0x7f070ed1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final getExpandedHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const v0, 0x7f070ed2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final setHeight(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->tracking:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->expandAnimator:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr v0, v1

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    iget v1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 30
    .line 31
    sub-int v1, p1, v1

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/4 v2, 0x2

    .line 39
    new-array v2, v2, [F

    .line 40
    .line 41
    iget v3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 42
    .line 43
    int-to-float v3, v3

    .line 44
    const/4 v4, 0x0

    .line 45
    aput v3, v2, v4

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    int-to-float p1, p1

    .line 49
    aput p1, v2, v3

    .line 50
    .line 51
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/16 v2, 0x12c

    .line 56
    .line 57
    int-to-float v2, v2

    .line 58
    div-float/2addr v1, v0

    .line 59
    mul-float/2addr v1, v2

    .line 60
    float-to-int v0, v1

    .line 61
    int-to-long v0, v0

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 66
    .line 67
    const v1, 0x3e2e147b    # 0.17f

    .line 68
    .line 69
    .line 70
    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    .line 72
    const v3, 0x3edc28f6    # 0.43f

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$setHeight$2$1;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper$setHeight$2$1;-><init>(Lcom/android/systemui/media/MediaPlayerBarExpandHelper;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->expandAnimator:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    return-void
.end method

.method public final setPlayerBarExpansion()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->context:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v3, v1

    :cond_1
    :goto_0
    const-string v0, "QsMediaPlayerLastExpanded"

    if-eqz v3, :cond_2

    .line 3
    new-instance v3, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {v2, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    new-instance v3, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_3
    new-instance v3, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :goto_1
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 8
    invoke-static {v2, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "Get Value for expanded: "

    const-string v2, "SecMediaControlPanel"

    .line 9
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    int-to-float v0, v4

    .line 10
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setPlayerBarExpansion(FZ)V

    return-void
.end method

.method public final setPlayerBarExpansion(FZ)V
    .locals 7

    float-to-int v0, p1

    .line 21
    iput v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 23
    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerBarState:I

    const-string v4, "SecMediaControlPanel"

    if-ne v3, p1, :cond_1

    goto :goto_2

    .line 24
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerBarState:I

    if-eqz p2, :cond_3

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    const-string p2, "Set Value for expanded: "

    .line 25
    invoke-static {p2, p1, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->context:Landroid/content/Context;

    const-string v3, "QsMediaPlayerLastExpanded"

    invoke-static {p2, v3, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 27
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->frameSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v2, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 28
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const v0, 0x7f0a0641

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/QSMediaCornerRoundedView;

    .line 29
    invoke-virtual {p2, v3}, Lcom/android/systemui/media/QSMediaCornerRoundedView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 30
    iget-object p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->mediaPlayerData:Lcom/android/systemui/media/SecMediaPlayerData;

    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    move-result v0

    if-gtz v0, :cond_4

    const-string/jumbo p0, "there is no media player, update player height returned."

    .line 31
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 32
    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayers()Ljava/util/ArrayList;

    move-result-object p2

    .line 33
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/SecMediaControlPanel;

    .line 34
    iget v3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerBarState:I

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    .line 35
    :goto_4
    iget-boolean v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    if-eq v4, v3, :cond_7

    .line 36
    iput-boolean v3, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mExpanded:Z

    .line 37
    iget-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 38
    iget-object v4, v4, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    .line 39
    iget-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    const v3, 0x7f130f61

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    const v3, 0x7f130f64

    .line 40
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    :goto_5
    iget-object v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 42
    iget-object v4, v4, Lcom/android/systemui/media/SecPlayerViewHolder;->expandIcon:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    :cond_7
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 45
    iget-object v5, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mViewHolder:Lcom/android/systemui/media/SecPlayerViewHolder;

    .line 46
    iget-object v5, v5, Lcom/android/systemui/media/SecPlayerViewHolder;->playerView:Landroid/view/View;

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 47
    :goto_6
    iget-object v6, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mPlayerRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    invoke-virtual {v5, v6}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 49
    iput v4, v0, Lcom/android/systemui/media/SecMediaControlPanel;->mHeight:I

    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->getPlayerExpandedFraction()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/media/SecMediaControlPanel;->setFraction(F)V

    goto :goto_3

    .line 51
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->pageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz p1, :cond_c

    .line 52
    iget p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    move-result v0

    if-ge p2, v0, :cond_a

    move p2, v0

    :cond_a
    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 53
    iget p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 54
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0604f7

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 55
    iget v3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->indicatorExpandSelectedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->argbEvaluator:Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    invoke-virtual {v4, p2, v0, v3}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0604f8

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 58
    iget v5, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->indicatorExpandUnselectedColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 59
    invoke-virtual {v4, p2, v3, v5}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 60
    iput v0, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    .line 61
    iput p2, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    move p2, v2

    .line 62
    :goto_7
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_c

    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_b

    goto :goto_8

    .line 65
    :cond_b
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p1, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p1, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 68
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->barCallbackSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarController$4;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarController$4;->onBarHeightChanged()V

    :goto_9
    return-void
.end method

.method public final setTracking(FZ)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->tracking:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->initialBarHeight:I

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->shouldPlayerExpand()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerBarState:I

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne v3, v4, :cond_3

    .line 33
    .line 34
    move v3, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move v3, v1

    .line 37
    :goto_1
    if-eq v3, v0, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    move v4, v1

    .line 41
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setHeight(I)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->tracking:Z

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->isGestureExpand:Z

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    sget-object v0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v2, "swipe"

    .line 55
    .line 56
    .line 57
    const-string v3, "QPNE0021"

    .line 58
    .line 59
    const-string/jumbo v5, "type"

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v3, v5, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->isGestureExpand:Z

    .line 66
    .line 67
    move v1, v4

    .line 68
    :goto_3
    iput p1, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->velocity:F

    .line 69
    .line 70
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->tracking:Z

    .line 71
    .line 72
    return v1
.end method

.method public final shouldPlayerExpand()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->tracking:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->velocity:F

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/high16 v3, 0x437a0000    # 250.0f

    .line 14
    .line 15
    cmpl-float v0, v0, v3

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->velocity:F

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    cmpl-float p0, p0, v0

    .line 23
    .line 24
    if-lez p0, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v0, v3

    .line 34
    int-to-float v0, v0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getExpandedHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->getCollapsedHeight()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    sub-int/2addr v3, p0

    .line 44
    int-to-float p0, v3

    .line 45
    const/high16 v3, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float/2addr p0, v3

    .line 48
    cmpl-float p0, v0, p0

    .line 49
    .line 50
    if-lez p0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget p0, p0, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerBarState:I

    .line 54
    .line 55
    if-ne p0, v1, :cond_2

    .line 56
    .line 57
    move p0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move p0, v2

    .line 60
    :goto_0
    if-nez p0, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v1, v2

    .line 64
    :goto_1
    return v1
.end method
