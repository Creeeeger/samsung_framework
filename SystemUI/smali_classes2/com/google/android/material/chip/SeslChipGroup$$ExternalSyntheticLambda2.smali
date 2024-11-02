.class public final synthetic Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslChipGroup;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslChipGroup;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslChipGroup;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/material/chip/SeslChipGroup;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    sget v2, Lcom/google/android/material/chip/SeslChipGroup;->sChipInitialWidth:I

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    int-to-float p0, p0

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Float;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    mul-float/2addr p1, p0

    .line 25
    float-to-int p0, p1

    .line 26
    add-int/2addr v1, p0

    .line 27
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 28
    .line 29
    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->mEmptyContainerHeight:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
