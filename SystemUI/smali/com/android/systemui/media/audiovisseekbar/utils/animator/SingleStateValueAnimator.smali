.class public final Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final animDuration:J

.field public final animInterpolator:Landroid/view/animation/Interpolator;

.field public animator:Landroid/animation/ValueAnimator;

.field public final callback:Lkotlin/jvm/functions/Function1;

.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FJ",
            "Landroid/view/animation/Interpolator;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animDuration:J

    .line 4
    iput-object p4, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animInterpolator:Landroid/view/animation/Interpolator;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->callback:Lkotlin/jvm/functions/Function1;

    .line 6
    iput p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    return-void
.end method

.method public synthetic constructor <init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const-wide/16 p2, 0x190

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 7
    new-instance p4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    .line 8
    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;-><init>(FJLandroid/view/animation/Interpolator;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final animateTo(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget v2, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    .line 13
    .line 14
    aput v2, v0, v1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aput p1, v0, v1

    .line 18
    .line 19
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-wide v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animDuration:J

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animInterpolator:Landroid/view/animation/Interpolator;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$1$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$1$1;-><init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnStart$1;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnStart$1;-><init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnEnd$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    return-void
.end method
