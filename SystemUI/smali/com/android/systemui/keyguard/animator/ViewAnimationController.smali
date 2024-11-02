.class public abstract Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final SINE_IN_33:Landroid/view/animation/Interpolator;

.field public final SINE_OUT_33:Landroid/view/animation/Interpolator;

.field public final alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field public final keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field public final scalePathInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 5
    .line 6
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 7
    .line 8
    const v0, 0x3e2e147b    # 0.17f

    .line 9
    .line 10
    .line 11
    const v1, 0x3f2b851f    # 0.67f

    .line 12
    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    .line 20
    .line 21
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 22
    .line 23
    const v0, 0x3f547ae1    # 0.83f

    .line 24
    .line 25
    .line 26
    const v1, 0x3ea8f5c3    # 0.33f

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-direct {p1, v1, v3, v0, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_IN_33:Landroid/view/animation/Interpolator;

    .line 34
    .line 35
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 36
    .line 37
    const v0, 0x3e6147ae    # 0.22f

    .line 38
    .line 39
    .line 40
    const/high16 v4, 0x3e800000    # 0.25f

    .line 41
    .line 42
    invoke-direct {p1, v0, v4, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->scalePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 46
    .line 47
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 48
    .line 49
    const v0, 0x3f2e147b    # 0.68f

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v1, v2, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 56
    .line 57
    return-void
.end method

.method public static setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    cmpg-float v1, p2, v0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v1, v3

    .line 15
    :goto_0
    const/4 v4, 0x2

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 19
    .line 20
    new-array v5, v4, [F

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    aput v6, v5, v3

    .line 27
    .line 28
    aput p2, v5, v2

    .line 29
    .line 30
    invoke-static {p1, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    filled-new-array {v1}, [Landroid/animation/Animator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 42
    .line 43
    new-array v5, v4, [F

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    aput v6, v5, v3

    .line 50
    .line 51
    aput p2, v5, v2

    .line 52
    .line 53
    invoke-static {p1, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    cmpg-float p2, p3, v0

    .line 65
    .line 66
    if-nez p2, :cond_3

    .line 67
    .line 68
    move p2, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move p2, v3

    .line 71
    :goto_1
    if-nez p2, :cond_4

    .line 72
    .line 73
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 74
    .line 75
    new-array v0, v4, [F

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    aput v1, v0, v3

    .line 82
    .line 83
    aput p3, v0, v2

    .line 84
    .line 85
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    filled-new-array {p1}, [Landroid/animation/Animator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method


# virtual methods
.method public final getParentView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/view/View;

    .line 10
    .line 11
    return-object p0
.end method

.method public final getView(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/view/View;

    .line 10
    .line 11
    return-object p0
.end method

.method public final hasView(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isKeyguardState()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final setViewAlphaAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V
    .locals 3

    .line 1
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [F

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput p3, v1, v2

    .line 8
    .line 9
    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 22
    .line 23
    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V
    .locals 4

    .line 1
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput p3, v2, v3

    .line 8
    .line 9
    invoke-static {p2, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->scalePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    filled-new-array {v0}, [Landroid/animation/Animator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 34
    .line 35
    new-array v1, v1, [F

    .line 36
    .line 37
    aput p3, v1, v3

    .line 38
    .line 39
    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 50
    .line 51
    .line 52
    filled-new-array {p2}, [Landroid/animation/Animator;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
