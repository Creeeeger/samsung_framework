.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# static fields
.field public static final ONEUI_5_1_1:Z


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public final mContext:Landroid/content/Context;

.field public mDropDownAnchorView:Landroid/view/View;

.field public mDropDownGravity:I

.field public final mDropDownHeight:I

.field public mDropDownHorizontalOffset:I

.field public mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field public mDropDownVerticalOffset:I

.field public mDropDownVerticalOffsetSet:Z

.field public mDropDownWidth:I

.field public final mDropDownWindowLayoutType:I

.field public mEpicenterBounds:Landroid/graphics/Rect;

.field public mForceShowUpper:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field public mIsOverflowPopup:Z

.field public mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final mListItemExpandMaximum:I

.field public mModal:Z

.field public mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

.field public mOverlapAnchor:Z

.field public mOverlapAnchorSet:Z

.field public final mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

.field public final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field public final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->getField_SEM_PLATFORM_INT()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x224d4

    .line 6
    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/ListPopupWindow;->ONEUI_5_1_1:Z

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f04038f

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04038f

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v0, 0x3ea

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    const v1, 0x7fffffff

    .line 9
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 10
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    .line 11
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 12
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    .line 13
    new-instance v1, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 15
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    .line 16
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 17
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 18
    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v0, :cond_0

    .line 21
    iput-boolean v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 22
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    new-instance v0, Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 0

    .line 1
    new-instance p0, Landroidx/appcompat/widget/DropDownListView;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getHorizontalOffset()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 2
    .line 3
    return p0
.end method

.method public final getListView()Landroidx/appcompat/widget/DropDownListView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVerticalOffset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 8
    .line 9
    return p0
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setContentWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    .line 13
    .line 14
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    add-int/2addr v0, p1

    .line 20
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final setHorizontalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public final setVerticalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 5
    .line 6
    return-void
.end method

.method public final show()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$2;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 18
    .line 19
    xor-int/2addr v0, v3

    .line 20
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 25
    .line 26
    iget-object v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 32
    .line 33
    iget-object v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 34
    .line 35
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 49
    .line 50
    new-instance v5, Landroidx/appcompat/widget/ListPopupWindow$3;

    .line 51
    .line 52
    invoke-direct {v5, v1}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 59
    .line 60
    iget-object v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    .line 61
    .line 62
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    iget-object v5, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 75
    .line 76
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .line 86
    :goto_0
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/4 v5, 0x0

    .line 91
    iget-object v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 96
    .line 97
    .line 98
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 101
    .line 102
    add-int/2addr v0, v7

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 105
    .line 106
    .line 107
    move v0, v5

    .line 108
    :goto_1
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    const/4 v8, 0x2

    .line 113
    if-ne v7, v8, :cond_3

    .line 114
    .line 115
    move v7, v3

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    move v7, v5

    .line 118
    :goto_2
    iget-object v9, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 119
    .line 120
    iget v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 121
    .line 122
    invoke-virtual {v4, v9, v10, v7}, Landroidx/appcompat/widget/AppCompatPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    sget-boolean v10, Landroidx/appcompat/widget/ListPopupWindow;->ONEUI_5_1_1:Z

    .line 127
    .line 128
    if-nez v10, :cond_14

    .line 129
    .line 130
    iget-boolean v10, v1, Landroidx/appcompat/widget/ListPopupWindow;->mIsOverflowPopup:Z

    .line 131
    .line 132
    if-eqz v10, :cond_14

    .line 133
    .line 134
    new-instance v10, Landroid/graphics/Point;

    .line 135
    .line 136
    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v11, "display"

    .line 140
    .line 141
    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    check-cast v11, Landroid/hardware/display/DisplayManager;

    .line 146
    .line 147
    const-string v12, "ListPopupWindow"

    .line 148
    .line 149
    if-nez v11, :cond_4

    .line 150
    .line 151
    const-string v3, "displayManager is null, can not update height"

    .line 152
    .line 153
    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    goto/16 :goto_8

    .line 157
    .line 158
    :cond_4
    invoke-virtual {v11, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    if-nez v11, :cond_5

    .line 163
    .line 164
    const-string v3, "display is null, can not update height"

    .line 165
    .line 166
    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto/16 :goto_8

    .line 170
    .line 171
    :cond_5
    invoke-static {}, Landroidx/reflect/view/SeslSemWindowManagerReflector;->isTableMode()Z

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    if-nez v13, :cond_6

    .line 176
    .line 177
    goto/16 :goto_8

    .line 178
    .line 179
    :cond_6
    move-object v13, v2

    .line 180
    :goto_3
    instance-of v14, v13, Landroid/content/ContextWrapper;

    .line 181
    .line 182
    if-eqz v14, :cond_8

    .line 183
    .line 184
    instance-of v14, v13, Landroid/app/Activity;

    .line 185
    .line 186
    if-eqz v14, :cond_7

    .line 187
    .line 188
    check-cast v13, Landroid/app/Activity;

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_7
    check-cast v13, Landroid/content/ContextWrapper;

    .line 192
    .line 193
    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    goto :goto_3

    .line 198
    :cond_8
    const/4 v13, 0x0

    .line 199
    :goto_4
    if-eqz v13, :cond_9

    .line 200
    .line 201
    invoke-virtual {v13}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    if-eqz v13, :cond_9

    .line 206
    .line 207
    goto/16 :goto_8

    .line 208
    .line 209
    :cond_9
    new-array v13, v8, [I

    .line 210
    .line 211
    invoke-virtual {v9, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 215
    .line 216
    .line 217
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableDualDisplay()Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_b

    .line 222
    .line 223
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    .line 232
    .line 233
    if-ne v9, v8, :cond_d

    .line 234
    .line 235
    iget v5, v10, Landroid/graphics/Point;->y:I

    .line 236
    .line 237
    iget v9, v10, Landroid/graphics/Point;->x:I

    .line 238
    .line 239
    if-le v5, v9, :cond_a

    .line 240
    .line 241
    div-int/lit8 v5, v9, 0x2

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_a
    div-int/lit8 v5, v5, 0x2

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_b
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableNoSubDisplay()Z

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    if-eqz v9, :cond_d

    .line 252
    .line 253
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    .line 262
    .line 263
    if-ne v9, v3, :cond_d

    .line 264
    .line 265
    iget v5, v10, Landroid/graphics/Point;->y:I

    .line 266
    .line 267
    iget v9, v10, Landroid/graphics/Point;->x:I

    .line 268
    .line 269
    if-le v5, v9, :cond_c

    .line 270
    .line 271
    div-int/lit8 v5, v5, 0x2

    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_c
    div-int/lit8 v5, v9, 0x2

    .line 275
    .line 276
    :cond_d
    :goto_5
    const-string v8, "center = "

    .line 277
    .line 278
    const-string v9, " , anchor top = "

    .line 279
    .line 280
    invoke-static {v8, v5, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    aget v9, v13, v3

    .line 285
    .line 286
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    if-eqz v5, :cond_13

    .line 297
    .line 298
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    const v9, 0x7f071080

    .line 303
    .line 304
    .line 305
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    const v11, 0x7f071075

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    aget v3, v13, v3

    .line 321
    .line 322
    if-le v5, v3, :cond_e

    .line 323
    .line 324
    sub-int/2addr v5, v3

    .line 325
    sub-int/2addr v5, v8

    .line 326
    sub-int/2addr v5, v9

    .line 327
    goto :goto_9

    .line 328
    :cond_e
    const-string/jumbo v3, "window"

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    check-cast v3, Landroid/view/WindowManager;

    .line 336
    .line 337
    if-eqz v3, :cond_f

    .line 338
    .line 339
    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    invoke-virtual {v3, v11}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    iget v11, v3, Landroid/graphics/Insets;->bottom:I

    .line 356
    .line 357
    new-instance v14, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string/jumbo v15, "systemBar insets = "

    .line 360
    .line 361
    .line 362
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    const-string v11, "android"

    .line 381
    .line 382
    const-string/jumbo v14, "navigation_bar_height"

    .line 383
    .line 384
    .line 385
    const-string v15, "dimen"

    .line 386
    .line 387
    invoke-virtual {v3, v14, v15, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-lez v3, :cond_10

    .line 392
    .line 393
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 398
    .line 399
    .line 400
    move-result v11

    .line 401
    goto :goto_6

    .line 402
    :cond_10
    const/4 v11, 0x0

    .line 403
    :goto_6
    const-string/jumbo v3, "navigationBarHeight = "

    .line 404
    .line 405
    .line 406
    invoke-static {v3, v11, v12}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const/4 v3, 0x1

    .line 410
    aget v3, v13, v3

    .line 411
    .line 412
    sub-int v12, v3, v5

    .line 413
    .line 414
    sub-int/2addr v5, v11

    .line 415
    div-int/lit8 v5, v5, 0x2

    .line 416
    .line 417
    if-le v12, v5, :cond_11

    .line 418
    .line 419
    const/4 v5, 0x1

    .line 420
    goto :goto_7

    .line 421
    :cond_11
    const/4 v5, 0x0

    .line 422
    :goto_7
    if-eqz v5, :cond_12

    .line 423
    .line 424
    sub-int/2addr v12, v8

    .line 425
    sub-int v5, v12, v9

    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_12
    iget v5, v10, Landroid/graphics/Point;->y:I

    .line 429
    .line 430
    sub-int/2addr v5, v3

    .line 431
    sub-int/2addr v5, v8

    .line 432
    sub-int/2addr v5, v9

    .line 433
    sub-int/2addr v5, v11

    .line 434
    goto :goto_9

    .line 435
    :cond_13
    :goto_8
    const/4 v5, -0x2

    .line 436
    :goto_9
    if-lez v5, :cond_14

    .line 437
    .line 438
    if-ge v5, v7, :cond_14

    .line 439
    .line 440
    move v7, v5

    .line 441
    :cond_14
    iget v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 442
    .line 443
    const/4 v5, -0x1

    .line 444
    if-ne v3, v5, :cond_15

    .line 445
    .line 446
    add-int/2addr v7, v0

    .line 447
    goto :goto_c

    .line 448
    :cond_15
    iget v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 449
    .line 450
    const/4 v9, -0x2

    .line 451
    if-eq v8, v9, :cond_17

    .line 452
    .line 453
    const/high16 v9, 0x40000000    # 2.0f

    .line 454
    .line 455
    if-eq v8, v5, :cond_16

    .line 456
    .line 457
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 458
    .line 459
    .line 460
    move-result v6

    .line 461
    goto :goto_a

    .line 462
    :cond_16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 471
    .line 472
    iget v10, v6, Landroid/graphics/Rect;->left:I

    .line 473
    .line 474
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 475
    .line 476
    add-int/2addr v10, v6

    .line 477
    sub-int/2addr v8, v10

    .line 478
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    goto :goto_a

    .line 483
    :cond_17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 492
    .line 493
    iget v9, v6, Landroid/graphics/Rect;->left:I

    .line 494
    .line 495
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 496
    .line 497
    add-int/2addr v9, v6

    .line 498
    sub-int/2addr v8, v9

    .line 499
    const/high16 v6, -0x80000000

    .line 500
    .line 501
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    :goto_a
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 506
    .line 507
    add-int/lit8 v7, v7, 0x0

    .line 508
    .line 509
    invoke-virtual {v8, v6, v7}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(II)I

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    if-lez v6, :cond_18

    .line 514
    .line 515
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 516
    .line 517
    invoke-virtual {v7}, Landroid/widget/ListView;->getPaddingTop()I

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    iget-object v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 522
    .line 523
    invoke-virtual {v8}, Landroid/widget/ListView;->getPaddingBottom()I

    .line 524
    .line 525
    .line 526
    move-result v8

    .line 527
    add-int/2addr v8, v7

    .line 528
    add-int/2addr v8, v0

    .line 529
    add-int/lit8 v8, v8, 0x0

    .line 530
    .line 531
    goto :goto_b

    .line 532
    :cond_18
    const/4 v8, 0x0

    .line 533
    :goto_b
    add-int v7, v6, v8

    .line 534
    .line 535
    :goto_c
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    const/4 v6, 0x2

    .line 540
    if-ne v0, v6, :cond_19

    .line 541
    .line 542
    const/4 v0, 0x1

    .line 543
    goto :goto_d

    .line 544
    :cond_19
    const/4 v0, 0x0

    .line 545
    :goto_d
    iget v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 546
    .line 547
    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 548
    .line 549
    .line 550
    xor-int/lit8 v6, v0, 0x1

    .line 551
    .line 552
    sget-object v8, Landroidx/reflect/widget/SeslPopupWindowReflector;->mClass:Ljava/lang/Class;

    .line 553
    .line 554
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 555
    .line 556
    filled-new-array {v9}, [Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    move-result-object v9

    .line 560
    const-string/jumbo v10, "setAllowScrollingAnchorParent"

    .line 561
    .line 562
    .line 563
    invoke-static {v8, v10, v9}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 564
    .line 565
    .line 566
    move-result-object v8

    .line 567
    if-eqz v8, :cond_1a

    .line 568
    .line 569
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 570
    .line 571
    .line 572
    move-result-object v6

    .line 573
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    invoke-static {v4, v8, v6}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    :cond_1a
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    if-eqz v6, :cond_27

    .line 585
    .line 586
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 587
    .line 588
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 589
    .line 590
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-nez v2, :cond_1b

    .line 595
    .line 596
    return-void

    .line 597
    :cond_1b
    iget v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 598
    .line 599
    if-ne v2, v5, :cond_1c

    .line 600
    .line 601
    move v2, v5

    .line 602
    goto :goto_e

    .line 603
    :cond_1c
    const/4 v6, -0x2

    .line 604
    if-ne v2, v6, :cond_1d

    .line 605
    .line 606
    iget-object v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 607
    .line 608
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 609
    .line 610
    .line 611
    move-result v2

    .line 612
    :cond_1d
    :goto_e
    if-ne v3, v5, :cond_22

    .line 613
    .line 614
    if-eqz v0, :cond_1e

    .line 615
    .line 616
    move v3, v7

    .line 617
    goto :goto_f

    .line 618
    :cond_1e
    move v3, v5

    .line 619
    :goto_f
    if-eqz v0, :cond_20

    .line 620
    .line 621
    iget v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 622
    .line 623
    if-ne v0, v5, :cond_1f

    .line 624
    .line 625
    move v0, v5

    .line 626
    goto :goto_10

    .line 627
    :cond_1f
    const/4 v0, 0x0

    .line 628
    :goto_10
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 629
    .line 630
    .line 631
    const/4 v0, 0x0

    .line 632
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 633
    .line 634
    .line 635
    goto :goto_12

    .line 636
    :cond_20
    iget v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 637
    .line 638
    if-ne v0, v5, :cond_21

    .line 639
    .line 640
    move v0, v5

    .line 641
    goto :goto_11

    .line 642
    :cond_21
    const/4 v0, 0x0

    .line 643
    :goto_11
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 647
    .line 648
    .line 649
    goto :goto_12

    .line 650
    :cond_22
    const/4 v0, -0x2

    .line 651
    if-ne v3, v0, :cond_23

    .line 652
    .line 653
    move v3, v7

    .line 654
    :cond_23
    :goto_12
    const/4 v0, 0x1

    .line 655
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 656
    .line 657
    .line 658
    iget v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 659
    .line 660
    iget-boolean v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    .line 661
    .line 662
    if-eqz v4, :cond_24

    .line 663
    .line 664
    sub-int/2addr v0, v7

    .line 665
    iget-boolean v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 666
    .line 667
    if-nez v4, :cond_24

    .line 668
    .line 669
    iget-object v4, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 670
    .line 671
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 672
    .line 673
    .line 674
    move-result v4

    .line 675
    sub-int/2addr v0, v4

    .line 676
    :cond_24
    move v9, v0

    .line 677
    iget-object v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 678
    .line 679
    iget-object v7, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 680
    .line 681
    iget v8, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 682
    .line 683
    if-gez v2, :cond_25

    .line 684
    .line 685
    move v10, v5

    .line 686
    goto :goto_13

    .line 687
    :cond_25
    move v10, v2

    .line 688
    :goto_13
    if-gez v3, :cond_26

    .line 689
    .line 690
    move v11, v5

    .line 691
    goto :goto_14

    .line 692
    :cond_26
    move v11, v3

    .line 693
    :goto_14
    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/widget/AppCompatPopupWindow;->update(Landroid/view/View;IIII)V

    .line 694
    .line 695
    .line 696
    goto/16 :goto_20

    .line 697
    .line 698
    :cond_27
    iget v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    .line 699
    .line 700
    if-ne v0, v5, :cond_28

    .line 701
    .line 702
    const/4 v0, -0x2

    .line 703
    move v6, v5

    .line 704
    goto :goto_15

    .line 705
    :cond_28
    const/4 v6, -0x2

    .line 706
    if-ne v0, v6, :cond_29

    .line 707
    .line 708
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 709
    .line 710
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 711
    .line 712
    .line 713
    move-result v0

    .line 714
    :cond_29
    move/from16 v16, v6

    .line 715
    .line 716
    move v6, v0

    .line 717
    move/from16 v0, v16

    .line 718
    .line 719
    :goto_15
    if-ne v3, v5, :cond_2a

    .line 720
    .line 721
    move v3, v5

    .line 722
    goto :goto_16

    .line 723
    :cond_2a
    if-ne v3, v0, :cond_2b

    .line 724
    .line 725
    move v3, v7

    .line 726
    :cond_2b
    :goto_16
    const-string v7, "android.view.SemBlurInfo$Builder"

    .line 727
    .line 728
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    if-eqz v0, :cond_37

    .line 733
    .line 734
    if-eqz v2, :cond_37

    .line 735
    .line 736
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    const-string v8, "current_sec_active_themepackage"

    .line 741
    .line 742
    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    if-eqz v0, :cond_2c

    .line 747
    .line 748
    const/4 v0, 0x1

    .line 749
    goto :goto_17

    .line 750
    :cond_2c
    const/4 v0, 0x0

    .line 751
    :goto_17
    if-nez v0, :cond_37

    .line 752
    .line 753
    sget-object v0, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->mClass:Ljava/lang/Class;

    .line 754
    .line 755
    const-string v8, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY"

    .line 756
    .line 757
    const/4 v9, 0x0

    .line 758
    new-array v10, v9, [Ljava/lang/Class;

    .line 759
    .line 760
    invoke-static {v0, v8, v10}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    if-eqz v0, :cond_2d

    .line 765
    .line 766
    new-array v8, v9, [Ljava/lang/Object;

    .line 767
    .line 768
    const/4 v9, 0x0

    .line 769
    invoke-static {v9, v0, v8}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    goto :goto_18

    .line 774
    :cond_2d
    const/4 v9, 0x0

    .line 775
    move-object v0, v9

    .line 776
    :goto_18
    instance-of v8, v0, Ljava/lang/String;

    .line 777
    .line 778
    const-string/jumbo v10, "not_supported"

    .line 779
    .line 780
    .line 781
    if-eqz v8, :cond_2e

    .line 782
    .line 783
    check-cast v0, Ljava/lang/String;

    .line 784
    .line 785
    goto :goto_19

    .line 786
    :cond_2e
    move-object v0, v10

    .line 787
    :goto_19
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v8

    .line 791
    if-eqz v8, :cond_2f

    .line 792
    .line 793
    const/4 v0, 0x1

    .line 794
    goto :goto_1a

    .line 795
    :cond_2f
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 796
    .line 797
    .line 798
    move-result-object v8

    .line 799
    const/4 v10, 0x0

    .line 800
    invoke-static {v8, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    const/4 v8, 0x1

    .line 805
    if-ne v0, v8, :cond_30

    .line 806
    .line 807
    move v0, v8

    .line 808
    goto :goto_1b

    .line 809
    :cond_30
    move v0, v8

    .line 810
    :goto_1a
    const/4 v8, 0x0

    .line 811
    :goto_1b
    if-nez v8, :cond_37

    .line 812
    .line 813
    iget-boolean v8, v4, Landroidx/appcompat/widget/AppCompatPopupWindow;->mIsReplacedPoupBackground:Z

    .line 814
    .line 815
    xor-int/2addr v0, v8

    .line 816
    if-eqz v0, :cond_37

    .line 817
    .line 818
    const-string v8, "SeslSemBlurInfoReflector"

    .line 819
    .line 820
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 821
    .line 822
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 827
    .line 828
    .line 829
    move-result-object v10

    .line 830
    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 831
    .line 832
    .line 833
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    goto :goto_1c

    .line 835
    :catch_0
    move-exception v0

    .line 836
    new-instance v10, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    const-string v11, "failed to get reflection - "

    .line 839
    .line 840
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    const-string v10, "SeslBaseReflector"

    .line 851
    .line 852
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .line 854
    .line 855
    move-object v0, v9

    .line 856
    :goto_1c
    if-eqz v0, :cond_31

    .line 857
    .line 858
    const/4 v10, 0x1

    .line 859
    :try_start_1
    new-array v10, v10, [Ljava/lang/Object;

    .line 860
    .line 861
    const/4 v11, 0x0

    .line 862
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 863
    .line 864
    .line 865
    move-result-object v12

    .line 866
    aput-object v12, v10, v11

    .line 867
    .line 868
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    goto :goto_1d

    .line 873
    :catch_1
    move-exception v0

    .line 874
    const-string/jumbo v10, "semCreateBlurBuilder InstantiationException"

    .line 875
    .line 876
    .line 877
    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .line 879
    .line 880
    goto :goto_1d

    .line 881
    :catch_2
    move-exception v0

    .line 882
    const-string/jumbo v10, "semCreateBlurBuilder InvocationTargetException"

    .line 883
    .line 884
    .line 885
    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 886
    .line 887
    .line 888
    goto :goto_1d

    .line 889
    :catch_3
    move-exception v0

    .line 890
    const-string/jumbo v10, "semCreateBlurBuilder IllegalAccessException"

    .line 891
    .line 892
    .line 893
    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .line 895
    .line 896
    :cond_31
    :goto_1d
    if-eqz v9, :cond_37

    .line 897
    .line 898
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 899
    .line 900
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    move-result-object v8

    .line 904
    const-string v10, "hidden_setRadius"

    .line 905
    .line 906
    invoke-static {v7, v10, v8}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 907
    .line 908
    .line 909
    move-result-object v8

    .line 910
    if-eqz v8, :cond_32

    .line 911
    .line 912
    const/4 v10, 0x1

    .line 913
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 914
    .line 915
    .line 916
    const/16 v10, 0x78

    .line 917
    .line 918
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 919
    .line 920
    .line 921
    move-result-object v10

    .line 922
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v10

    .line 926
    invoke-static {v9, v8, v10}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    :cond_32
    invoke-static {v2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    .line 930
    .line 931
    .line 932
    move-result v8

    .line 933
    if-eqz v8, :cond_33

    .line 934
    .line 935
    const v8, 0x7f0606ab

    .line 936
    .line 937
    .line 938
    goto :goto_1e

    .line 939
    :cond_33
    const v8, 0x7f0606ac

    .line 940
    .line 941
    .line 942
    :goto_1e
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 943
    .line 944
    .line 945
    move-result-object v10

    .line 946
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 947
    .line 948
    .line 949
    move-result-object v11

    .line 950
    invoke-virtual {v10, v8, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 951
    .line 952
    .line 953
    move-result v8

    .line 954
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    const-string v10, "hidden_setBackgroundColor"

    .line 959
    .line 960
    invoke-static {v7, v10, v0}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 961
    .line 962
    .line 963
    move-result-object v0

    .line 964
    if-eqz v0, :cond_34

    .line 965
    .line 966
    const/4 v10, 0x1

    .line 967
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 968
    .line 969
    .line 970
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 971
    .line 972
    .line 973
    move-result-object v8

    .line 974
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v8

    .line 978
    invoke-static {v9, v0, v8}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    :cond_34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    const v2, 0x7f071077

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 989
    .line 990
    .line 991
    move-result v0

    .line 992
    int-to-float v0, v0

    .line 993
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 994
    .line 995
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    const-string v8, "hidden_setBackgroundCornerRadius"

    .line 1000
    .line 1001
    invoke-static {v7, v8, v2}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    const/4 v8, 0x1

    .line 1006
    if-eqz v2, :cond_35

    .line 1007
    .line 1008
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1009
    .line 1010
    .line 1011
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    invoke-static {v9, v2, v0}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    :cond_35
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    const-string v2, "hidden_build"

    .line 1027
    .line 1028
    const/4 v10, 0x0

    .line 1029
    new-array v11, v10, [Ljava/lang/Class;

    .line 1030
    .line 1031
    invoke-static {v7, v2, v11}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v2

    .line 1035
    if-eqz v2, :cond_36

    .line 1036
    .line 1037
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1038
    .line 1039
    .line 1040
    new-array v7, v10, [Ljava/lang/Object;

    .line 1041
    .line 1042
    invoke-static {v9, v2, v7}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    sget-object v7, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    .line 1047
    .line 1048
    :try_start_2
    const-string v7, "android.view.SemBlurInfo"

    .line 1049
    .line 1050
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v7

    .line 1054
    sget-object v8, Landroidx/reflect/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    .line 1055
    .line 1056
    const-string v9, "hidden_semSetBlurInfo"

    .line 1057
    .line 1058
    filled-new-array {v7}, [Ljava/lang/Class;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v7

    .line 1062
    invoke-static {v8, v9, v7}, Landroidx/reflect/SeslBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v7

    .line 1066
    if-eqz v7, :cond_36

    .line 1067
    .line 1068
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v2

    .line 1072
    invoke-static {v0, v7, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1073
    .line 1074
    .line 1075
    goto :goto_1f

    .line 1076
    :catch_4
    move-exception v0

    .line 1077
    const-string v2, "SeslViewReflector"

    .line 1078
    .line 1079
    const-string/jumbo v7, "semSetBlurInfo ClassNotFoundException"

    .line 1080
    .line 1081
    .line 1082
    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    .line 1084
    .line 1085
    :cond_36
    :goto_1f
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1086
    .line 1087
    if-eqz v0, :cond_37

    .line 1088
    .line 1089
    const/4 v2, 0x2

    .line 1090
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1091
    .line 1092
    .line 1093
    :cond_37
    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1097
    .line 1098
    .line 1099
    const/4 v0, 0x1

    .line 1100
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1104
    .line 1105
    .line 1106
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 1107
    .line 1108
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1109
    .line 1110
    .line 1111
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1112
    .line 1113
    if-eqz v0, :cond_38

    .line 1114
    .line 1115
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1116
    .line 1117
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 1118
    .line 1119
    .line 1120
    :cond_38
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 1121
    .line 1122
    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 1123
    .line 1124
    .line 1125
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 1126
    .line 1127
    iget v2, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 1128
    .line 1129
    iget v3, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1130
    .line 1131
    iget v6, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    .line 1132
    .line 1133
    invoke-virtual {v4, v0, v2, v3, v6}, Landroidx/appcompat/widget/AppCompatPopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1134
    .line 1135
    .line 1136
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1137
    .line 1138
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1139
    .line 1140
    .line 1141
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 1142
    .line 1143
    if-eqz v0, :cond_39

    .line 1144
    .line 1145
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1146
    .line 1147
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v0

    .line 1151
    if-eqz v0, :cond_3a

    .line 1152
    .line 1153
    :cond_39
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 1154
    .line 1155
    if-eqz v0, :cond_3a

    .line 1156
    .line 1157
    const/4 v2, 0x1

    .line 1158
    iput-boolean v2, v0, Landroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    .line 1159
    .line 1160
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 1161
    .line 1162
    .line 1163
    :cond_3a
    iget-boolean v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 1164
    .line 1165
    if-nez v0, :cond_3b

    .line 1166
    .line 1167
    iget-object v0, v1, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 1168
    .line 1169
    iget-object v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 1170
    .line 1171
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1172
    .line 1173
    .line 1174
    :cond_3b
    :goto_20
    return-void
.end method
