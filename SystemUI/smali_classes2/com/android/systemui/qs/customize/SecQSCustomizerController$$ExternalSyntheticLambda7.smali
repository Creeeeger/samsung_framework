.class public final synthetic Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;->f$0:Landroid/view/View;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;->f$0:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;->f$1:F

    .line 4
    .line 5
    iget p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$$ExternalSyntheticLambda7;->f$2:F

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    mul-float/2addr v1, p1

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 13
    .line 14
    .line 15
    mul-float/2addr p0, p1

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
