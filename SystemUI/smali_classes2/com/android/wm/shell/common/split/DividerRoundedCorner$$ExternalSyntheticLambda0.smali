.class public final synthetic Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    .line 5
    sget v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mTopLeftCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    .line 21
    .line 22
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mTopRightCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    .line 26
    .line 27
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mBottomLeftCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    .line 31
    .line 32
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mBottomRightCorner:Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;

    .line 36
    .line 37
    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->createTmpPath(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;FF)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
