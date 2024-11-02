.class public Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;
.super Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mContainerAnimator:Landroid/animation/ValueAnimator;

.field public mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->init()V

    return-void
.end method


# virtual methods
.method public final containerAlphaAnimation(FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " containerAlphaAnimation from : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " to : "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "ApplicationEffect"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string v0, " containerAlphaAnimation  cancel"

    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 51
    .line 52
    .line 53
    :cond_0
    const/4 v0, 0x2

    .line 54
    new-array v0, v0, [F

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    aput p1, v0, v1

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    aput p2, v0, p1

    .line 61
    .line 62
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$1;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 77
    .line 78
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;

    .line 79
    .line 80
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;-><init>(Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;F)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    const-wide/16 v0, 0x1f4

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mContainerAnimator:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "layout_inflater"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/LayoutInflater;

    .line 15
    .line 16
    const v1, 0x7f0d00e1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a038e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 32
    .line 33
    iget v1, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 34
    .line 35
    iget p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenHeight:I

    .line 36
    .line 37
    iput v1, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mWidth:I

    .line 38
    .line 39
    iput p0, v0, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mHeight:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->setImageDrawable()V

    .line 42
    .line 43
    .line 44
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mTopLayer:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, v0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mBottomLayer:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
