.class public final Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;->this$0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 10
    .line 11
    cmpl-float v0, v0, v3

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-lez v0, :cond_1

    .line 17
    .line 18
    move v0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    move v0, v4

    .line 23
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDxToMakeVisible(Landroid/view/View;I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v5, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 28
    .line 29
    if-eqz v5, :cond_5

    .line 30
    .line 31
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 32
    .line 33
    cmpl-float v3, v5, v3

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    if-lez v3, :cond_4

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_4
    move v1, v2

    .line 42
    goto :goto_3

    .line 43
    :cond_5
    :goto_2
    move v1, v4

    .line 44
    :goto_3
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateDyToMakeVisible(Landroid/view/View;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    mul-int v1, v0, v0

    .line 49
    .line 50
    mul-int v2, p1, p1

    .line 51
    .line 52
    add-int/2addr v2, v1

    .line 53
    int-to-double v1, v2

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    double-to-int v1, v1

    .line 59
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-lez v2, :cond_7

    .line 64
    .line 65
    int-to-double v1, v1

    .line 66
    const-wide v3, 0x3f2a36e2eb1c432dL    # 2.0E-4

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    mul-double/2addr v1, v3

    .line 72
    const-wide v3, 0x3fdcccccc0000000L    # 0.44999998807907104

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    add-double/2addr v1, v3

    .line 78
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    mul-double/2addr v1, v3

    .line 84
    double-to-int v1, v1

    .line 85
    const/16 v2, 0x320

    .line 86
    .line 87
    if-le v1, v2, :cond_6

    .line 88
    .line 89
    move v1, v2

    .line 90
    :cond_6
    neg-int v0, v0

    .line 91
    neg-int p1, p1

    .line 92
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;->this$0:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 95
    .line 96
    invoke-virtual {p2, v0, p1, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 97
    .line 98
    .line 99
    :cond_7
    return-void
.end method
