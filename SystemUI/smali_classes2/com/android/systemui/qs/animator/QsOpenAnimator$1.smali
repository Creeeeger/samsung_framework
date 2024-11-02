.class public final Lcom/android/systemui/qs/animator/QsOpenAnimator$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/animator/QsOpenAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

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
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderLockShadeAnimator:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 7
    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$1;->this$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 37
    .line 38
    .line 39
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
