.class public final Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

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
    sget-object p1, Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;->INSTANCE:Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/media/audiovisseekbar/utils/animator/AnimatorManager;->animatorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator$createAnimator$lambda$3$$inlined$doOnEnd$1;->this$0:Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/media/audiovisseekbar/utils/animator/SingleStateValueAnimator;->animator:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
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
