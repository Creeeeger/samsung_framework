.class public final Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$1$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$1$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, v0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$1$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->callback:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget p0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->value:F

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
