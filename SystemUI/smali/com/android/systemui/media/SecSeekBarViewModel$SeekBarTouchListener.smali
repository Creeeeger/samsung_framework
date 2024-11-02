.class public final Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public final bar:Landroid/widget/SeekBar;

.field public final detector:Landroidx/core/view/GestureDetectorCompat;

.field public final flingVelocity:I

.field public isThumbTouched:Z

.field public shouldGoToSeekBar:Z

.field public final viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 7
    .line 8
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->detector:Landroidx/core/view/GestureDetectorCompat;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    mul-int/lit8 p1, p1, 0xa

    .line 32
    .line 33
    iput p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMin()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sub-int/2addr v3, v4

    .line 32
    if-lez v3, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMin()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v2, v4

    .line 41
    int-to-double v4, v2

    .line 42
    int-to-double v2, v3

    .line 43
    div-double/2addr v4, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    sub-int/2addr v2, v0

    .line 54
    sub-int/2addr v2, v1

    .line 55
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/SeekBar;->isLayoutRtl()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v3, 0x1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    int-to-double v0, v0

    .line 65
    int-to-double v6, v2

    .line 66
    int-to-double v8, v3

    .line 67
    sub-double/2addr v8, v4

    .line 68
    mul-double/2addr v8, v6

    .line 69
    add-double/2addr v8, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    int-to-double v0, v0

    .line 72
    int-to-double v6, v2

    .line 73
    mul-double/2addr v6, v4

    .line 74
    add-double v8, v6, v0

    .line 75
    .line 76
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    div-int/lit8 v0, v0, 0x2

    .line 83
    .line 84
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    int-to-long v4, v0

    .line 89
    sub-long/2addr v1, v4

    .line 90
    long-to-int v0, v1

    .line 91
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    add-long/2addr v1, v4

    .line 96
    long-to-int v1, v1

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const/4 v2, 0x0

    .line 106
    if-gt v0, p1, :cond_2

    .line 107
    .line 108
    if-gt p1, v1, :cond_2

    .line 109
    .line 110
    move v2, v3

    .line 111
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    .line 112
    .line 113
    iput-boolean v2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->isThumbTouched:Z

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    .line 129
    .line 130
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->isThumbTouched:Z

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    cmpl-float p1, p1, p2

    .line 13
    .line 14
    if-gtz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget p2, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->flingVelocity:I

    .line 21
    .line 22
    int-to-float p2, p2

    .line 23
    cmpl-float p1, p1, p2

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance p2, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Lcom/android/systemui/media/SecSeekBarViewModel$onSeekFalse$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    .line 38
    .line 39
    check-cast p1, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    .line 45
    .line 46
    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    .line 3
    .line 4
    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->bar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->detector:Landroidx/core/view/GestureDetectorCompat;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/core/view/GestureDetectorCompat;->mImpl:Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Landroid/view/GestureDetector;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarTouchListener;->shouldGoToSeekBar:Z

    .line 21
    .line 22
    xor-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    return p0
.end method
