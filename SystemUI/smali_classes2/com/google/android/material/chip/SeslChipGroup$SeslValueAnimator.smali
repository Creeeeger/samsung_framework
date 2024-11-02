.class public final Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mSeslListeners:Ljava/util/ArrayList;

.field public mSeslUpdateListeners:Ljava/util/ArrayList;

.field public mTargetView:Ljava/lang/ref/WeakReference;

.field public mValues:[F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static varargs ofFloat([F)Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 7
    .line 8
    .line 9
    iput-object p0, v0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mValues:[F

    .line 10
    .line 11
    new-instance p0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mSeslUpdateListeners:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance p0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p0, v0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mSeslListeners:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public final addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mSeslListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mSeslUpdateListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final bridge synthetic clone()Landroid/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->clone()Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->clone()Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mValues:[F

    invoke-static {v0}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->ofFloat([F)Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mSeslUpdateListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mSeslListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->clone()Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final setTarget(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    check-cast v1, Landroid/view/View;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup$SeslValueAnimator;->mTargetView:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
