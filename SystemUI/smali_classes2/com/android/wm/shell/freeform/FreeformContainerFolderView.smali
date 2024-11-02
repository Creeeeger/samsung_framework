.class Lcom/android/wm/shell/freeform/FreeformContainerFolderView;
.super Lcom/android/internal/widget/RecyclerView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/wm/shell/freeform/FreeformContainerCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

.field public mAnimatingSpringX:Z

.field public mAnimatingSpringY:Z

.field public mBlockDataUpdate:Z

.field public final mCachedBitmaps:Landroid/util/ArrayMap;

.field public mColorTintList:Landroid/content/res/ColorStateList;

.field public final mContext:Landroid/content/Context;

.field public mDraggingIconReturnLocation:[I

.field public mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

.field public mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

.field public mDraggingIconView:Landroid/widget/ImageView;

.field public mEmptySlotIcon:Landroid/graphics/drawable/Drawable;

.field public mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public mHeight:I

.field public mIsCollapseAnimating:Z

.field public mIsExpandAnimating:Z

.field public mIsExpanded:Z

.field public mItemAddedWhileAnimating:Z

.field public final mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

.field public mItemSize:I

.field public mLastPositionX:F

.field public mLastPositionY:F

.field public mLastScrollState:I

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

.field public mMaxWidth:I

.field public final mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public final mSpringSystem:Lcom/facebook/rebound/SpringSystem;

.field public mTargetIconView:Landroid/widget/ImageView;

.field public mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

.field public mThresholdToMove:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

.field public mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

.field public mVisibleIconCount:I

.field public mVisibleIconMaxCount:I

.field public mWidth:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mrestoreAppIcon(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v3, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 12
    .line 13
    new-instance p2, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    .line 22
    .line 23
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpandAnimating:Z

    .line 24
    .line 25
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    .line 28
    .line 29
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 30
    .line 31
    iput p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastScrollState:I

    .line 32
    .line 33
    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [I

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    .line 37
    .line 38
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    .line 39
    .line 40
    iput-boolean p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 41
    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    .line 48
    .line 49
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-string/jumbo v0, "window"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/view/WindowManager;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWindowManager:Landroid/view/WindowManager;

    .line 68
    .line 69
    const-string v0, "layout_inflater"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 78
    .line 79
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->isLayoutRtl()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    move-object v1, v0

    .line 88
    move-object v2, p0

    .line 89
    move-object v3, p1

    .line 90
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;Landroid/content/Context;IIZ)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    .line 94
    .line 95
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 96
    .line 97
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 101
    .line 102
    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 103
    .line 104
    invoke-direct {v1, p0, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;I)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 116
    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->setClipToOutline(Z)V

    .line 120
    .line 121
    .line 122
    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;

    .line 123
    .line 124
    invoke-direct {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView;->addOnScrollListener(Lcom/android/internal/widget/RecyclerView$OnScrollListener;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final calculateFolderSize()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mNonDecorDisplayFrame:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingLeft:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mPaddingRight:I

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 20
    .line 21
    iget v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButtonSize:I

    .line 22
    .line 23
    iget v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    .line 24
    .line 25
    add-int/2addr v4, v3

    .line 26
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    .line 29
    .line 30
    iget v1, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 31
    .line 32
    add-int/2addr v5, v1

    .line 33
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconMaxCount:I

    .line 34
    .line 35
    mul-int/2addr v5, v1

    .line 36
    add-int/2addr v5, v3

    .line 37
    iput v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    .line 38
    .line 39
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconCount:I

    .line 40
    .line 41
    :goto_0
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    .line 42
    .line 43
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 44
    .line 45
    add-int/2addr v3, v1

    .line 46
    add-int/2addr v3, v4

    .line 47
    if-ge v0, v3, :cond_0

    .line 48
    .line 49
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 52
    .line 53
    iget v5, v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 54
    .line 55
    add-int/2addr v3, v5

    .line 56
    sub-int/2addr v1, v3

    .line 57
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    .line 58
    .line 59
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconCount:I

    .line 60
    .line 61
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mVisibleIconCount:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/16 v1, 0x14

    .line 73
    .line 74
    if-le v0, v1, :cond_1

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    .line 84
    .line 85
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 88
    .line 89
    iget-object v4, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 90
    .line 91
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    .line 94
    .line 95
    iget v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemSpace:I

    .line 96
    .line 97
    add-int/2addr v5, v3

    .line 98
    mul-int/2addr v5, v0

    .line 99
    add-int/2addr v5, v4

    .line 100
    iput v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    .line 101
    .line 102
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mMaxWidth:I

    .line 103
    .line 104
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    iput v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    .line 109
    .line 110
    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemDecoration:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;

    .line 111
    .line 112
    iget-object v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemDecoration;->mItemMargin:Landroid/graphics/Rect;

    .line 113
    .line 114
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 115
    .line 116
    iget v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemSize:I

    .line 117
    .line 118
    add-int/2addr v5, v6

    .line 119
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 120
    .line 121
    add-int/2addr v5, v4

    .line 122
    iput v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    .line 123
    .line 124
    if-ne v1, v3, :cond_2

    .line 125
    .line 126
    if-eq v2, v5, :cond_3

    .line 127
    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    .line 133
    .line 134
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    .line 136
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    .line 137
    .line 138
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 144
    .line 145
    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    .line 146
    .line 147
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    .line 148
    .line 149
    iget-object v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mItemMargin:Landroid/graphics/Rect;

    .line 150
    .line 151
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 152
    .line 153
    add-int/2addr v2, v4

    .line 154
    iget v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mCloseButtonSize:I

    .line 155
    .line 156
    add-int/2addr v2, v4

    .line 157
    iget v4, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mOpenAllAppsButtonSize:I

    .line 158
    .line 159
    add-int/2addr v2, v4

    .line 160
    iput v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    .line 161
    .line 162
    iput v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    .line 169
    .line 170
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 171
    .line 172
    iget v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    .line 173
    .line 174
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v2, "[FolderView] updateFolderSize: itemCount="

    .line 182
    .line 183
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v0, ", size=("

    .line 190
    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWidth:I

    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string/jumbo v0, "x"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHeight:I

    .line 206
    .line 207
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p0, ")"

    .line 211
    .line 212
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const-string v0, "FreeformContainer"

    .line 220
    .line 221
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    :cond_3
    return-void
.end method

.method public final collapse(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsExpanded:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLayoutManager:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$2;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/GridLayoutManager;->scrollToPosition(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mOpenFolderRunnable:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$1;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_0
    if-ge v0, v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderItemViewHolder;

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 47
    .line 48
    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    const-string p1, "FreeformContainer"

    .line 71
    .line 72
    const-string v2, "[FolderView] animateCollapse"

    .line 73
    .line 74
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    const v2, 0x7f0101ac

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;

    .line 90
    .line 91
    invoke-direct {v2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 113
    .line 114
    const-string v2, "fullscreen_mode_request_folder"

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->closeFullscreenMode(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :goto_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZED_PREVIEW:Z

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 131
    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_3

    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mWindowManager:Landroid/view/WindowManager;

    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 143
    .line 144
    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mFreeformThumbnailView:Lcom/android/wm/shell/freeform/FreeformThumbnailView;

    .line 148
    .line 149
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mCachedBitmaps:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 152
    .line 153
    .line 154
    :cond_5
    return-void
.end method

.method public final finishDraggingAppIcon()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 29
    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetIconView:Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getDraggingAppIconBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v2, v0

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v1

    .line 29
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final getTrayBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTrayView:Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    float-to-int v1, v1

    .line 13
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mWidth:I

    .line 16
    .line 17
    add-int/2addr v3, v0

    .line 18
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mHeight:I

    .line 19
    .line 20
    add-int/2addr v4, v1

    .line 21
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderTrayView;->mTmpBounds:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final isSpringAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final onItemAdded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mBlockDataUpdate:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mItemAddedWhileAnimating:Z

    .line 7
    .line 8
    const-string p0, "FreeformContainer"

    .line 9
    .line 10
    const-string p1, "[FolderView] onItemAdded: item is added while opening folder"

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAdapter:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$FolderViewAdapter;->getItemCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->updateContainerState(IZZ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mIsCollapseAnimating:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->calculateFolderSize()V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onRotationChanged(IILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    if-eq v2, v4, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq v2, v0, :cond_2

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    .line 39
    .line 40
    sub-float v4, v0, v4

    .line 41
    .line 42
    add-float/2addr v4, v2

    .line 43
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setX(F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    .line 53
    .line 54
    sub-float v4, v1, v4

    .line 55
    .line 56
    add-float/2addr v4, v2

    .line 57
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setY(F)V

    .line 58
    .line 59
    .line 60
    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    .line 61
    .line 62
    iput v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingAppIconBounds(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/DismissButtonView;->updateView(Landroid/graphics/Rect;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return v3

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingAppIconBounds(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_3

    .line 108
    .line 109
    move p1, v0

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissButtonManager:Lcom/android/wm/shell/common/DismissButtonManager;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/wm/shell/common/DismissButtonManager;->mView:Lcom/android/wm/shell/common/DismissButtonView;

    .line 114
    .line 115
    iget-boolean p1, p1, Lcom/android/wm/shell/common/DismissButtonView;->mIsEnterDismissButton:Z

    .line 116
    .line 117
    :goto_1
    if-nez p1, :cond_7

    .line 118
    .line 119
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationX()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconView:Landroid/widget/ImageView;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationY()F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconReturnLocation:[I

    .line 132
    .line 133
    aget v4, v2, v0

    .line 134
    .line 135
    int-to-float v4, v4

    .line 136
    aget v2, v2, v3

    .line 137
    .line 138
    int-to-float v2, v2

    .line 139
    sub-float v5, p1, v4

    .line 140
    .line 141
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    const/high16 v6, 0x40000000    # 2.0f

    .line 146
    .line 147
    cmpl-float v5, v5, v6

    .line 148
    .line 149
    if-lez v5, :cond_4

    .line 150
    .line 151
    move v5, v3

    .line 152
    goto :goto_2

    .line 153
    :cond_4
    move v5, v0

    .line 154
    :goto_2
    iput-boolean v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringX:Z

    .line 155
    .line 156
    sub-float v5, v1, v2

    .line 157
    .line 158
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    cmpl-float v5, v5, v6

    .line 163
    .line 164
    if-lez v5, :cond_5

    .line 165
    .line 166
    move v0, v3

    .line 167
    :cond_5
    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringY:Z

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringAnimating()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    const-string v0, "[FolderView] animateToReturnDraggingAppIconView: spring failed, from=["

    .line 176
    .line 177
    const-string v5, ","

    .line 178
    .line 179
    const-string v6, "], to=["

    .line 180
    .line 181
    invoke-static {v0, p1, v5, v1, v6}, Lcom/android/keyguard/punchhole/VIDirector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v0, "], call finishDraggingAppIcon()"

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v0, "FreeformContainer"

    .line 204
    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppIcon()V

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    .line 219
    .line 220
    new-instance v5, Lcom/facebook/rebound/SpringConfig;

    .line 221
    .line 222
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    .line 228
    .line 229
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v5}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    .line 236
    .line 237
    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    iput-wide v10, v0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 243
    .line 244
    iput-wide v10, v0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 245
    .line 246
    new-instance v5, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$6;

    .line 247
    .line 248
    invoke-direct {v5, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$6;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v5}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    .line 255
    .line 256
    float-to-double v12, p1

    .line 257
    invoke-virtual {v0, v12, v13}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringX:Lcom/facebook/rebound/Spring;

    .line 261
    .line 262
    float-to-double v4, v4

    .line 263
    invoke-virtual {p1, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    .line 273
    .line 274
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    .line 275
    .line 276
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)V

    .line 280
    .line 281
    .line 282
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    .line 283
    .line 284
    iput-wide v10, p1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 285
    .line 286
    iput-wide v10, p1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 287
    .line 288
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;

    .line 289
    .line 290
    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$7;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    .line 297
    .line 298
    float-to-double v0, v1

    .line 299
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    .line 300
    .line 301
    .line 302
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingIconSpringY:Lcom/facebook/rebound/Spring;

    .line 303
    .line 304
    float-to-double v0, v2

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    .line 306
    .line 307
    .line 308
    :cond_7
    :goto_3
    return v3

    .line 309
    :cond_8
    :goto_4
    invoke-super {p0, p1}, Lcom/android/internal/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    return p0
.end method

.method public final onViewDestroyed()V
    .locals 0

    .line 1
    return-void
.end method
