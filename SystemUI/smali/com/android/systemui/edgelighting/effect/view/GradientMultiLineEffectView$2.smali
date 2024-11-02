.class public final Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView$2;->this$0:Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GradientMultiLineEffectView;->mMultiLineEffectContainer:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    const-wide/16 v0, 0x12c

    .line 7
    .line 8
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->changeRingImageAlpha(Landroid/view/View;FJ)V

    .line 9
    .line 10
    .line 11
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
