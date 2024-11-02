.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;


# static fields
.field public static final SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda6;


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

.field public mDistributeTiles:Z

.field public mInitialX:F

.field public mInitialY:F

.field public mLastExpansion:F

.field public mLastMaxHeight:I

.field public mLayoutDirection:I

.field public mLayoutOrientation:I

.field public mListening:Z

.field public mLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mMaxColumns:I

.field public final mOnPageChangeListener:Lcom/android/systemui/qs/PagedTileLayout$2;

.field public mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public mPageIndicatorPosition:F

.field public mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field public mPageToRestore:I

.field public final mPages:Ljava/util/ArrayList;

.field public final mScroller:Landroid/widget/Scroller;

.field public final mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

.field public final mTiles:Ljava/util/ArrayList;

.field public final mTouchSlop:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/qs/PagedTileLayout;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda6;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda6;-><init>()V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda6;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    iput v2, v0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 25
    .line 26
    sget-object v3, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    sget-object v3, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 32
    .line 33
    iput-object v3, v0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 34
    .line 35
    const/16 v3, 0x64

    .line 36
    .line 37
    iput v3, v0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    .line 38
    .line 39
    iput v2, v0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 40
    .line 41
    new-instance v2, Lcom/android/systemui/qs/PagedTileLayout$2;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Lcom/android/systemui/qs/PagedTileLayout$2;

    .line 47
    .line 48
    new-instance v3, Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 49
    .line 50
    invoke-direct {v3, v0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, v0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 54
    .line 55
    new-instance v4, Landroid/widget/Scroller;

    .line 56
    .line 57
    sget-object v5, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda6;

    .line 58
    .line 59
    move-object/from16 v6, p1

    .line 60
    .line 61
    invoke-direct {v4, v6, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 62
    .line 63
    .line 64
    iput-object v4, v0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 83
    .line 84
    iput v2, v0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    iput v8, v0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 91
    .line 92
    new-instance v2, Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 93
    .line 94
    new-instance v9, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-direct {v9, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 97
    .line 98
    .line 99
    new-instance v10, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;

    .line 100
    .line 101
    invoke-direct {v10, v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 102
    .line 103
    .line 104
    new-instance v11, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda2;

    .line 105
    .line 106
    invoke-direct {v11, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 107
    .line 108
    .line 109
    new-instance v12, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda3;

    .line 110
    .line 111
    invoke-direct {v12, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 112
    .line 113
    .line 114
    new-instance v13, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda4;

    .line 115
    .line 116
    invoke-direct {v13, v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 117
    .line 118
    .line 119
    new-instance v14, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda3;

    .line 120
    .line 121
    const/4 v3, 0x1

    .line 122
    invoke-direct {v14, v0, v3}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 123
    .line 124
    .line 125
    new-instance v15, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda5;

    .line 126
    .line 127
    invoke-direct {v15, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 128
    .line 129
    .line 130
    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda2;

    .line 131
    .line 132
    invoke-direct {v1, v0, v3}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 133
    .line 134
    .line 135
    new-instance v4, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 138
    .line 139
    .line 140
    new-instance v5, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 v7, 0x2

    .line 143
    invoke-direct {v5, v0, v7}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 144
    .line 145
    .line 146
    new-instance v7, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda5;

    .line 147
    .line 148
    invoke-direct {v7, v0, v3}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 149
    .line 150
    .line 151
    move-object v3, v7

    .line 152
    move-object v7, v2

    .line 153
    move-object/from16 v16, v1

    .line 154
    .line 155
    move-object/from16 v17, v4

    .line 156
    .line 157
    move-object/from16 v18, v5

    .line 158
    .line 159
    move-object/from16 v19, v3

    .line 160
    .line 161
    invoke-direct/range {v7 .. v19}, Lcom/android/systemui/qs/SecPagedTileLayout;-><init>(ILjava/util/function/Consumer;Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;Ljava/util/function/IntSupplier;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    .line 162
    .line 163
    .line 164
    iput-object v2, v0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 165
    .line 166
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iput v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mTouchSlop:I

    .line 175
    .line 176
    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 7
    .line 8
    const-string v0, "forcing tile redistribution across pages, reason"

    .line 9
    .line 10
    const-string v1, "adding new tile"

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final computeScroll()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 34
    .line 35
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 36
    .line 37
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v9

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    move-wide v1, v9

    .line 60
    move-wide v3, v9

    .line 61
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 71
    .line 72
    .line 73
    iput-wide v9, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    .line 74
    .line 75
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    sub-int/2addr v0, v1

    .line 86
    int-to-float v0, v0

    .line 87
    :try_start_0
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 96
    .line 97
    const-string v2, "FakeDragBy called before begin"

    .line 98
    .line 99
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/lit8 v0, v0, -0x1

    .line 109
    .line 110
    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda7;

    .line 111
    .line 112
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_3
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 120
    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    :try_start_1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    .line 128
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 129
    .line 130
    const-string v3, "endFakeDrag called without velocityTracker"

    .line 131
    .line 132
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_3
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->computeScroll()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final createTileLayout()Lcom/android/systemui/qs/TileLayout;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d02d7

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns()Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final getCurrentPageNumber()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/lit8 p0, p0, -0x1

    .line 16
    .line 17
    sub-int v1, p0, v1

    .line 18
    .line 19
    :cond_0
    return v1
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->knoxStateCallback:Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 35
    .line 36
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 37
    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    iput v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v2, "orientation changed to "

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 60
    .line 61
    const-string v3, "forcing tile redistribution across pages, reason"

    .line 62
    .line 63
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 68
    .line 69
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 70
    .line 71
    .line 72
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 76
    .line 77
    const-string v2, "Orientation didn\'t change, tiles might be not redistributed, new config"

    .line 78
    .line 79
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iget v2, v0, Lcom/android/systemui/qs/SecPagedTileLayout;->layoutDirection:I

    .line 89
    .line 90
    if-ne v2, p1, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    iput p1, v0, Lcom/android/systemui/qs/SecPagedTileLayout;->layoutDirection:I

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->knoxStateCallback:Lcom/android/systemui/qs/SecPagedTileLayout$knoxStateCallback$1;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/SecPagedTileLayout;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTileLayout()Lcom/android/systemui/qs/TileLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$3;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$3;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/lit8 p0, p0, -0x1

    .line 22
    .line 23
    if-eq v0, p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mInitialX:F

    .line 20
    .line 21
    sub-float/2addr v0, v2

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mInitialY:F

    .line 27
    .line 28
    sub-float/2addr v1, v2

    .line 29
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    cmpl-float v1, v0, v1

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTouchSlop:I

    .line 38
    .line 39
    int-to-float v1, v1

    .line 40
    cmpl-float v0, v0, v1

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mInitialX:F

    .line 47
    .line 48
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mInitialY:F

    .line 49
    .line 50
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 10
    .line 11
    iget-object v3, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v4, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesSupplier:Ljava/util/function/BooleanSupplier;

    .line 14
    .line 15
    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x1

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    iget-object v7, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxHeightSupplier:Ljava/util/function/IntSupplier;

    .line 24
    .line 25
    invoke-interface {v7}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    iget v8, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->pageHeight:I

    .line 30
    .line 31
    if-ne v7, v8, :cond_1

    .line 32
    .line 33
    iget v7, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxWidth:I

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eq v7, v8, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v7, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v7, v6

    .line 45
    :goto_1
    if-eqz v7, :cond_d

    .line 46
    .line 47
    iget-object v7, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxHeightConsumer:Ljava/util/function/IntConsumer;

    .line 48
    .line 49
    iget v8, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->pageHeight:I

    .line 50
    .line 51
    invoke-interface {v7, v8}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 52
    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    iput v7, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxWidth:I

    .line 59
    .line 60
    iget-object v7, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->pagesSupplier:Ljava/util/function/Supplier;

    .line 61
    .line 62
    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Lcom/android/systemui/qs/TileLayout;

    .line 73
    .line 74
    iget-object v8, v8, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 75
    .line 76
    iget-object v9, v8, Lcom/android/systemui/qs/SecTileLayout;->columnsSupplier:Ljava/util/function/IntSupplier;

    .line 77
    .line 78
    invoke-interface {v9}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    iget-object v11, v8, Lcom/android/systemui/qs/SecTileLayout;->contextSupplier:Ljava/util/function/Supplier;

    .line 83
    .line 84
    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    check-cast v11, Landroid/content/Context;

    .line 89
    .line 90
    iget-object v12, v8, Lcom/android/systemui/qs/SecTileLayout;->settingsHelper$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    check-cast v13, Lcom/android/systemui/util/SettingsHelper;

    .line 97
    .line 98
    invoke-virtual {v13}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    iget-object v14, v8, Lcom/android/systemui/qs/SecTileLayout;->columnsConsumer:Ljava/util/function/IntConsumer;

    .line 103
    .line 104
    if-nez v13, :cond_2

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_2
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    const v15, 0x7f0b00ee

    .line 112
    .line 113
    .line 114
    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-ge v6, v13, :cond_3

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move v13, v6

    .line 122
    :goto_2
    invoke-interface {v14, v13}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {v8}, Lcom/android/systemui/qs/SecTileLayout;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 126
    .line 127
    .line 128
    invoke-static {v11}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    int-to-float v13, v13

    .line 133
    const v15, 0x3c9d4952    # 0.0192f

    .line 134
    .line 135
    .line 136
    mul-float/2addr v13, v15

    .line 137
    float-to-int v13, v13

    .line 138
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 139
    .line 140
    .line 141
    move-result v15

    .line 142
    mul-int/lit8 v13, v13, 0x2

    .line 143
    .line 144
    sub-int/2addr v15, v13

    .line 145
    iget-object v13, v8, Lcom/android/systemui/qs/SecTileLayout;->cellWidthSupplier:Ljava/util/function/IntSupplier;

    .line 146
    .line 147
    invoke-interface {v13}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    div-int/2addr v15, v13

    .line 152
    invoke-interface {v14, v15}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Lcom/android/systemui/qs/SecTileLayout;->getResourcePicker()Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 156
    .line 157
    .line 158
    move-result-object v13

    .line 159
    invoke-virtual {v13, v11}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQsTileColumn(Landroid/content/Context;)I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    invoke-interface {v9}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-lt v13, v11, :cond_4

    .line 168
    .line 169
    invoke-interface {v12}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    check-cast v12, Lcom/android/systemui/util/SettingsHelper;

    .line 174
    .line 175
    invoke-virtual {v12}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    .line 176
    .line 177
    .line 178
    move-result v12

    .line 179
    if-nez v12, :cond_4

    .line 180
    .line 181
    invoke-interface {v14, v11}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 182
    .line 183
    .line 184
    move v11, v6

    .line 185
    goto :goto_4

    .line 186
    :cond_4
    move v11, v5

    .line 187
    :goto_4
    if-eqz v11, :cond_5

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_5
    invoke-interface {v9}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 191
    .line 192
    .line 193
    move-result v11

    .line 194
    if-le v11, v6, :cond_6

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_6
    invoke-interface {v14, v6}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 198
    .line 199
    .line 200
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    iget-object v8, v8, Lcom/android/systemui/qs/SecTileLayout;->updateMaxRowsBiFunction:Ljava/util/function/BiFunction;

    .line 209
    .line 210
    invoke-interface {v8, v11, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Ljava/lang/Boolean;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_8

    .line 221
    .line 222
    invoke-interface {v9}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eq v10, v1, :cond_7

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_7
    move v1, v5

    .line 230
    goto :goto_7

    .line 231
    :cond_8
    :goto_6
    move v1, v6

    .line 232
    :goto_7
    if-nez v1, :cond_9

    .line 233
    .line 234
    if-eqz v4, :cond_a

    .line 235
    .line 236
    :cond_9
    move v5, v6

    .line 237
    :cond_a
    if-eqz v5, :cond_b

    .line 238
    .line 239
    iget-object v1, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesConsumer:Ljava/util/function/Consumer;

    .line 240
    .line 241
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 242
    .line 243
    invoke-interface {v1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v1, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->distributeTilesRunnable:Ljava/lang/Runnable;

    .line 247
    .line 248
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 249
    .line 250
    .line 251
    :cond_b
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    .line 256
    .line 257
    iget v1, v1, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 258
    .line 259
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    .line 264
    .line 265
    iget v4, v4, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 266
    .line 267
    iget-object v5, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileExpandedHeight(Landroid/content/Context;)I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    mul-int/2addr v3, v1

    .line 277
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    if-eqz v6, :cond_c

    .line 286
    .line 287
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    check-cast v6, Lcom/android/systemui/qs/TileLayout;

    .line 292
    .line 293
    iput v1, v6, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 294
    .line 295
    iput v4, v6, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 296
    .line 297
    iget-object v6, v6, Lcom/android/systemui/qs/TileLayout;->mSecTileLayout:Lcom/android/systemui/qs/SecTileLayout;

    .line 298
    .line 299
    iput v3, v6, Lcom/android/systemui/qs/SecTileLayout;->height:I

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_c
    iput v3, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->pageHeight:I

    .line 303
    .line 304
    :cond_d
    iget v1, v2, Lcom/android/systemui/qs/SecPagedTileLayout;->pageHeight:I

    .line 305
    .line 306
    const/high16 v2, 0x40000000    # 2.0f

    .line 307
    .line 308
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    move/from16 v2, p1

    .line 313
    .line 314
    invoke-super {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 5
    .line 6
    const-string v1, "onRtlPropertiesChanged change="

    .line 7
    .line 8
    const-string v2, ", Pages="

    .line 9
    .line 10
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 31
    .line 32
    if-eq v0, p1, :cond_0

    .line 33
    .line 34
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x2000

    .line 14
    .line 15
    const/16 v3, 0x1000

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    if-ne p1, v1, :cond_4

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    :cond_2
    move p1, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    :goto_0
    move p1, v2

    .line 35
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_6

    .line 40
    .line 41
    if-eq p1, v2, :cond_5

    .line 42
    .line 43
    if-ne p1, v3, :cond_6

    .line 44
    .line 45
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    .line 46
    .line 47
    .line 48
    :cond_6
    return p2
.end method

.method public final removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 10
    .line 11
    const-string v0, "forcing tile redistribution across pages, reason"

    .line 12
    .line 13
    const-string/jumbo v1, "removing tile"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "current_page"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 9
    .line 10
    return-void
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const-string p0, "current_page"

    .line 12
    .line 13
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    sub-int p1, v0, p1

    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setExpansion(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 2
    .line 3
    return-void
.end method

.method public final setPageMargin(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    neg-int v1, p1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v2, p1, v3, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public final updateListening()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/systemui/qs/TileLayout;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    or-int/2addr v2, v3

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/systemui/qs/SecPagedTileLayout;->lastMaxHeightSupplier:Ljava/util/function/IntSupplier;

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/function/IntSupplier;->getAsInt()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v1, v1, Lcom/android/systemui/qs/SecPagedTileLayout;->pageHeight:I

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eq v3, v1, :cond_1

    .line 40
    .line 41
    move v0, v4

    .line 42
    :cond_1
    or-int/2addr v0, v2

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 46
    .line 47
    const-string v2, "forcing tile redistribution across pages, reason"

    .line 48
    .line 49
    const-string/jumbo v3, "resources in pages changed"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-boolean v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 62
    .line 63
    const-string/jumbo v1, "resource in pages didn\'t change, tiles might be not redistributed"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return v0
.end method

.method public final updateSelected()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    cmpg-float v1, v0, v2

    .line 11
    .line 12
    if-gez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    cmpl-float v0, v0, v2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    const/4 v2, 0x4

    .line 24
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    move v3, v1

    .line 32
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v3, v4, :cond_4

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    .line 47
    .line 48
    if-ne v3, v2, :cond_2

    .line 49
    .line 50
    move v5, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v5, v1

    .line 53
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/view/ViewGroup;->isSelected()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    move v5, v1

    .line 63
    :goto_3
    iget-object v6, v4, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-ge v5, v6, :cond_3

    .line 70
    .line 71
    iget-object v6, v4, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 78
    .line 79
    iget-object v6, v6, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 80
    .line 81
    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 82
    .line 83
    sget-object v8, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    .line 84
    .line 85
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-interface {v7, v8, v1, v9, v6}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final updateTileWidth(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mSecPagedTileLayout:Lcom/android/systemui/qs/SecPagedTileLayout;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/qs/SecPagedTileLayout;->resourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 6
    .line 7
    iput p1, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->mTileExpandedWidthRatio:F

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileExpandedWidth(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Lcom/android/systemui/qs/SecPagedTileLayout;->cellWidth:I

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v3, "updateTileWidth(ratio:"

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ") -> mCellWidth:"

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "PagedTileLayout"

    .line 39
    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lcom/android/systemui/qs/SecPagedTileLayout;->pagesSupplier:Ljava/util/function/Supplier;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    .line 57
    .line 58
    iget v0, v0, Lcom/android/systemui/qs/SecPagedTileLayout;->cellWidth:I

    .line 59
    .line 60
    iput v0, p1, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateResources()Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
