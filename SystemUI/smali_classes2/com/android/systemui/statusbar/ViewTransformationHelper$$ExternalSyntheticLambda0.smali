.class public final synthetic Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/TransformableView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;Lcom/android/systemui/statusbar/TransformableView;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/TransformableView;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/TransformableView;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/TransformableView;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(FLcom/android/systemui/statusbar/TransformableView;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
