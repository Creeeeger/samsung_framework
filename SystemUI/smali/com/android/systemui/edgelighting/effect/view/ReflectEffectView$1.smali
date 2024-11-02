.class public final Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mAnimationSet:Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/ReflectEffectView;->mImageFrame:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_1
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
