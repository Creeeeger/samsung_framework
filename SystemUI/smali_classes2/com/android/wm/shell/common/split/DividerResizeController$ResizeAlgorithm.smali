.class public final Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mDismissEndThreshold:I

.field public mDismissStartThreshold:I

.field public mDisplaySize:I

.field public mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

.field public mFirstFadeOutPosition:I

.field public mFirstSplitTargetPosition:I

.field public mLastFadeOutPosition:I

.field public mLastSplitTargetPosition:I

.field public mMiddleTargetPosition:I

.field public mSplitDismissSide:I

.field public mTouchPosition:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerResizeController;


# direct methods
.method public static -$$Nest$mupdate(Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_4

    .line 4
    .line 5
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 6
    .line 7
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 20
    .line 21
    if-le p1, v0, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v1, v2

    .line 25
    :goto_1
    if-eqz v1, :cond_3

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    goto :goto_2

    .line 29
    :cond_3
    move v1, v2

    .line 30
    :goto_2
    iget p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    .line 31
    .line 32
    if-eq p1, v1, :cond_4

    .line 33
    .line 34
    iput v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    .line 35
    .line 36
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerResizeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mSplitDismissSide:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getSnapTargetPosition()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 10
    .line 11
    if-gt v0, v4, :cond_0

    .line 12
    .line 13
    move v4, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, v3

    .line 16
    :goto_0
    if-eqz v4, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 20
    .line 21
    if-ge v0, v4, :cond_2

    .line 22
    .line 23
    move v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v4, v3

    .line 26
    :goto_1
    if-eqz v4, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->this$0:Lcom/android/wm/shell/common/split/DividerResizeController;

    .line 29
    .line 30
    iget v0, v0, Lcom/android/wm/shell/common/split/DividerResizeController;->mDividerSize:I

    .line 31
    .line 32
    neg-int v0, v0

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 40
    .line 41
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_3
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 47
    .line 48
    if-le v0, v4, :cond_4

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    move v2, v3

    .line 52
    :goto_2
    if-eqz v2, :cond_5

    .line 53
    .line 54
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDisplaySize:I

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 63
    .line 64
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_5
    if-ge v0, v1, :cond_6

    .line 70
    .line 71
    return v1

    .line 72
    :cond_6
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 73
    .line 74
    if-le v0, v1, :cond_7

    .line 75
    .line 76
    return v1

    .line 77
    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDividerSnapAlgorithm:Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    iget p0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 85
    .line 86
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ResizeAlgorithm{ds="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissStartThreshold:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", ff="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstFadeOutPosition:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", f="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mFirstSplitTargetPosition:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", m="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mMiddleTargetPosition:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", l="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastSplitTargetPosition:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", lf="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mLastFadeOutPosition:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", de="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mDismissEndThreshold:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", touch="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerResizeController$ResizeAlgorithm;->mTouchPosition:I

    .line 79
    .line 80
    const-string/jumbo v1, "}"

    .line 81
    .line 82
    .line 83
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method
