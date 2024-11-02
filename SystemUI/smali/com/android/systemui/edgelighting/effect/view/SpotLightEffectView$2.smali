.class public final Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->mAnimListener:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->resetScreenSize()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    iget v1, p1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 28
    .line 29
    add-int/lit16 v1, v1, -0xa8b

    .line 30
    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;->mSpotlightEffect:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 5
    .line 6
    sget p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->$r8$clinit:I

    .line 7
    .line 8
    const p1, 0x3f2147ae    # 0.63f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;

    .line 5
    .line 6
    sget p1, Lcom/android/systemui/edgelighting/effect/view/SpotLightEffectView;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method
