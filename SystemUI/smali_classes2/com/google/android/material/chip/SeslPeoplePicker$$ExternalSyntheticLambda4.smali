.class public final synthetic Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

.field public final synthetic f$1:I

.field public final synthetic f$2:F

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/chip/SeslPeoplePicker;IFIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$2:F

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$3:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$4:I

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$0:Lcom/google/android/material/chip/SeslPeoplePicker;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$2:F

    .line 6
    .line 7
    iget v3, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$3:I

    .line 8
    .line 9
    iget v4, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$4:I

    .line 10
    .line 11
    iget p0, p0, Lcom/google/android/material/chip/SeslPeoplePicker$$ExternalSyntheticLambda4;->f$5:I

    .line 12
    .line 13
    iget-object v5, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 14
    .line 15
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/Float;

    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    mul-float/2addr v6, v2

    .line 30
    float-to-int v2, v6

    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 33
    .line 34
    iget-object v1, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mContainer:Lcom/google/android/material/chip/SeslExpandableContainer;

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    sub-int/2addr v3, v4

    .line 40
    int-to-float v1, v3

    .line 41
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/Float;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    mul-float/2addr p1, v1

    .line 52
    int-to-float p0, p0

    .line 53
    div-float/2addr p1, p0

    .line 54
    const/4 p0, 0x0

    .line 55
    cmpl-float p0, p1, p0

    .line 56
    .line 57
    if-lez p0, :cond_0

    .line 58
    .line 59
    const/high16 p0, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    iget-object p1, v0, Lcom/google/android/material/chip/SeslPeoplePicker;->mChipGroup:Lcom/google/android/material/chip/SeslChipGroup;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method
