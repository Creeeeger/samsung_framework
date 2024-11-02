.class public final Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGlowView:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/GlowGradientEffect;->mGradientView:Lcom/android/systemui/edgelighting/effect/view/GradientEffectView;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/view/AbsEdgeLightingMaskView;->resetImageDrawable()V

    .line 25
    .line 26
    .line 27
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
