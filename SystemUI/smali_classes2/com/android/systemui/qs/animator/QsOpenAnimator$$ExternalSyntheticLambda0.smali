.class public final synthetic Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/animator/QsOpenAnimator;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/animator/QsOpenAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    sub-float/2addr v1, p0

    .line 19
    const/high16 p0, -0x3d900000    # -60.0f

    .line 20
    .line 21
    mul-float/2addr v1, p0

    .line 22
    iget-object p0, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p1, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
