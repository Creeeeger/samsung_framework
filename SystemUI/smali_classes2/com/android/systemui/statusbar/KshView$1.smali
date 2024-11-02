.class public final Lcom/android/systemui/statusbar/KshView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    if-eq p2, p1, :cond_1

    .line 14
    .line 15
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    .line 27
    .line 28
    :cond_1
    if-ne p2, p1, :cond_2

    .line 29
    .line 30
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    .line 31
    .line 32
    :cond_2
    const/4 v2, 0x2

    .line 33
    if-ne p2, v2, :cond_3

    .line 34
    .line 35
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mTabKeyIn:Z

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    .line 40
    .line 41
    :cond_3
    if-nez p2, :cond_8

    .line 42
    .line 43
    iget-boolean p2, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    .line 44
    .line 45
    if-eqz p2, :cond_8

    .line 46
    .line 47
    iget-object p2, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 61
    .line 62
    xor-int/2addr v2, p1

    .line 63
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 64
    .line 65
    :cond_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v2, v1, v3, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v3, -0x1

    .line 76
    if-nez v2, :cond_5

    .line 77
    .line 78
    move v2, v3

    .line 79
    goto :goto_0

    .line 80
    :cond_5
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    sub-int/2addr v5, p1

    .line 91
    invoke-virtual {v4, v5, v3, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_6

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_6
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    :goto_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    move v2, v3

    .line 107
    :cond_7
    iput v2, v0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    .line 108
    .line 109
    iget v0, v0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    .line 110
    .line 111
    if-eq v2, v0, :cond_8

    .line 112
    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    :cond_8
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    if-lez p2, :cond_0

    .line 3
    .line 4
    move p3, p1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p3, 0x0

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    .line 20
    .line 21
    :cond_1
    return-void
.end method
