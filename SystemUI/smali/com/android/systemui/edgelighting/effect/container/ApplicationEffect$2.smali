.class public final Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

.field public final synthetic val$to:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->val$to:F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->val$to:F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    cmpl-float p1, p1, v0

    .line 5
    .line 6
    if-nez p1, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, " hide : "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mIsAnimating:Z

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->resetImageDrawable()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/EdgeLightAppEffectView;->repeatColorAnimation:Landroid/animation/ValueAnimator;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect$2;->this$0:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->onFinishAnimation()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
