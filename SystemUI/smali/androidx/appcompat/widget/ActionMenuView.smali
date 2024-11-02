.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActionButtonPaddingEnd:I

.field public mActionButtonPaddingStart:I

.field public mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public mFormatItems:Z

.field public mFormatItemsWidth:I

.field public final mGeneratedItemPadding:I

.field public final mIsOneUI41:Z

.field public mLastItemEndPadding:I

.field public mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public mMenuBuilderCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public final mMinCellSize:I

.field public mOnMenuItemClickListener:Landroidx/appcompat/widget/Toolbar$1;

.field public final mOverflowBadgeText:Ljava/lang/String;

.field public mOverflowButtonMinWidth:I

.field public mOverflowButtonPaddingEnd:I

.field public mOverflowButtonPaddingStart:I

.field public mPopupContext:Landroid/content/Context;

.field public mPopupTheme:I

.field public mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

.field public mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 5
    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 6
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 7
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupTheme:I

    .line 9
    invoke-static {}, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->getField_SEM_PLATFORM_INT()I

    move-result v1

    const v2, 0x1fc34

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 10
    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mIsOneUI41:Z

    .line 11
    sget-object v2, Landroidx/appcompat/R$styleable;->View:[I

    const v3, 0x7f04000d

    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x7

    .line 12
    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    const/4 v5, 0x6

    .line 13
    invoke-virtual {v3, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    .line 14
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x7f040023

    .line 15
    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 17
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    const/4 v2, 0x3

    .line 18
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130fd3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowBadgeText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f49

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f44

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f42

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070f41

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    return-void
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;
    .locals 2

    const/16 v0, 0x10

    if-eqz p0, :cond_2

    .line 5
    instance-of v1, p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroidx/appcompat/widget/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :goto_0
    iget p0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p0, :cond_1

    .line 9
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v1

    .line 10
    :cond_2
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 11
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 2
    .line 3
    return p0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 3
    new-instance p0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 15
    .line 16
    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v1, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 22
    .line 23
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 32
    .line 33
    iput-boolean v0, v1, Landroidx/appcompat/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;

    .line 41
    .line 42
    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-object v0, v1, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 57
    .line 58
    iput-object p0, v0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    .line 59
    .line 60
    iget-object v0, v0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 61
    .line 62
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 63
    .line 64
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 65
    .line 66
    return-object p0
.end method

.method public final hasSupportDividerBeforeChildAt(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-ge p1, p0, :cond_1

    .line 20
    .line 21
    instance-of p0, v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    or-int/2addr v0, p0

    .line 32
    :cond_1
    if-lez p1, :cond_2

    .line 33
    .line 34
    instance-of p0, v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;

    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    or-int/2addr v0, p0

    .line 45
    :cond_2
    return v0
.end method

.method public final initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    return-void
.end method

.method public final invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :cond_0
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->onConfigurationChanged()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget-object v1, Landroidx/appcompat/R$styleable;->View:[I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const v3, 0x7f04000d

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v3, 0x7

    .line 50
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iput v4, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    .line 55
    .line 56
    const/4 v4, 0x6

    .line 57
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    iput v5, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const v5, 0x7f040023

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, v1, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 82
    .line 83
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 88
    .line 89
    const/4 v1, 0x3

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .line 98
    .line 99
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mIsOneUI41:Z

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const v0, 0x7f070f49

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const v0, 0x7f070f44

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v0, 0x7f070f42

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 151
    .line 152
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const v0, 0x7f070f41

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    .line 164
    .line 165
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mActionButtonPopup:Landroidx/appcompat/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuPopupHelper;->mPopup:Landroidx/appcompat/view/menu/StandardMenuPopup;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int v2, p5, p3

    .line 16
    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    .line 19
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 20
    .line 21
    sub-int v4, p4, p2

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    sub-int v5, v4, v5

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    sub-int/2addr v5, v6

    .line 34
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x0

    .line 41
    :goto_0
    const/16 v11, 0x8

    .line 42
    .line 43
    const/4 v12, 0x1

    .line 44
    if-ge v8, v1, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    if-ne v14, v11, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 62
    .line 63
    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 64
    .line 65
    if-eqz v14, :cond_4

    .line 66
    .line 67
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-eqz v14, :cond_2

    .line 76
    .line 77
    add-int/2addr v9, v3

    .line 78
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 85
    .line 86
    .line 87
    move-result v15

    .line 88
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 89
    .line 90
    add-int/2addr v15, v11

    .line 91
    add-int v11, v15, v9

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 99
    .line 100
    .line 101
    move-result v16

    .line 102
    sub-int v15, v15, v16

    .line 103
    .line 104
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 105
    .line 106
    sub-int v11, v15, v11

    .line 107
    .line 108
    sub-int v15, v11, v9

    .line 109
    .line 110
    :goto_1
    div-int/lit8 v16, v14, 0x2

    .line 111
    .line 112
    sub-int v7, v2, v16

    .line 113
    .line 114
    add-int/2addr v14, v7

    .line 115
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    .line 116
    .line 117
    .line 118
    sub-int/2addr v5, v9

    .line 119
    move v9, v12

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    iget v12, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 126
    .line 127
    add-int/2addr v7, v12

    .line 128
    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 129
    .line 130
    add-int/2addr v7, v11

    .line 131
    sub-int/2addr v5, v7

    .line 132
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v10, v10, 0x1

    .line 136
    .line 137
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    if-ne v1, v12, :cond_6

    .line 141
    .line 142
    if-nez v9, :cond_6

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    div-int/lit8 v4, v4, 0x2

    .line 158
    .line 159
    div-int/lit8 v5, v1, 0x2

    .line 160
    .line 161
    sub-int/2addr v4, v5

    .line 162
    div-int/lit8 v5, v3, 0x2

    .line 163
    .line 164
    sub-int/2addr v2, v5

    .line 165
    add-int/2addr v1, v4

    .line 166
    add-int/2addr v3, v2

    .line 167
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_6
    xor-int/lit8 v3, v9, 0x1

    .line 172
    .line 173
    sub-int/2addr v10, v3

    .line 174
    if-lez v10, :cond_7

    .line 175
    .line 176
    div-int v3, v5, v10

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    const/4 v3, 0x0

    .line 180
    :goto_3
    const/4 v4, 0x0

    .line 181
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v6, :cond_a

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    sub-int/2addr v5, v6

    .line 196
    move v7, v4

    .line 197
    :goto_4
    if-ge v7, v1, :cond_d

    .line 198
    .line 199
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    if-eq v8, v11, :cond_9

    .line 214
    .line 215
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 216
    .line 217
    if-eqz v8, :cond_8

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_8
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 221
    .line 222
    sub-int/2addr v5, v8

    .line 223
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    div-int/lit8 v10, v9, 0x2

    .line 232
    .line 233
    sub-int v10, v2, v10

    .line 234
    .line 235
    sub-int v12, v5, v8

    .line 236
    .line 237
    add-int/2addr v9, v10

    .line 238
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 239
    .line 240
    .line 241
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 242
    .line 243
    add-int/2addr v8, v4

    .line 244
    add-int/2addr v8, v3

    .line 245
    sub-int/2addr v5, v8

    .line 246
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    move v7, v4

    .line 254
    :goto_6
    if-ge v7, v1, :cond_d

    .line 255
    .line 256
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    if-eq v8, v11, :cond_c

    .line 271
    .line 272
    iget-boolean v8, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 273
    .line 274
    if-eqz v8, :cond_b

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_b
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 278
    .line 279
    add-int/2addr v5, v8

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    div-int/lit8 v10, v9, 0x2

    .line 289
    .line 290
    sub-int v10, v2, v10

    .line 291
    .line 292
    add-int v12, v5, v8

    .line 293
    .line 294
    add-int/2addr v9, v10

    .line 295
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 296
    .line 297
    .line 298
    iget v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 299
    .line 300
    add-int/2addr v8, v4

    .line 301
    add-int/2addr v8, v3

    .line 302
    add-int/2addr v8, v5

    .line 303
    move v5, v8

    .line 304
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_d
    return-void
.end method

.method public final onMeasure(II)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/high16 v5, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-ne v2, v5, :cond_0

    .line 14
    .line 15
    move v2, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    iput-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    iput v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 23
    .line 24
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 37
    .line 38
    if-eq v1, v6, :cond_2

    .line 39
    .line 40
    iput v1, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuView;->mFormatItems:Z

    .line 50
    .line 51
    if-eqz v2, :cond_2e

    .line 52
    .line 53
    if-lez v1, :cond_2e

    .line 54
    .line 55
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    add-int/2addr v8, v7

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v7

    .line 85
    const/4 v7, -0x2

    .line 86
    move/from16 v10, p2

    .line 87
    .line 88
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sub-int/2addr v2, v8

    .line 93
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mMinCellSize:I

    .line 94
    .line 95
    div-int v10, v2, v8

    .line 96
    .line 97
    rem-int v11, v2, v8

    .line 98
    .line 99
    if-nez v10, :cond_3

    .line 100
    .line 101
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_1f

    .line 105
    .line 106
    :cond_3
    div-int/2addr v11, v10

    .line 107
    add-int/2addr v11, v8

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    move v3, v4

    .line 113
    move v12, v3

    .line 114
    move v13, v12

    .line 115
    move v14, v13

    .line 116
    move v15, v14

    .line 117
    move/from16 v18, v15

    .line 118
    .line 119
    const-wide/16 v16, 0x0

    .line 120
    .line 121
    :goto_1
    if-ge v14, v8, :cond_12

    .line 122
    .line 123
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    move/from16 v19, v6

    .line 132
    .line 133
    const/16 v6, 0x8

    .line 134
    .line 135
    if-ne v4, v6, :cond_4

    .line 136
    .line 137
    move/from16 v23, v1

    .line 138
    .line 139
    move/from16 v22, v2

    .line 140
    .line 141
    move/from16 v21, v9

    .line 142
    .line 143
    goto/16 :goto_9

    .line 144
    .line 145
    :cond_4
    instance-of v4, v5, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 146
    .line 147
    add-int/lit8 v12, v12, 0x1

    .line 148
    .line 149
    if-eqz v4, :cond_5

    .line 150
    .line 151
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 152
    .line 153
    move/from16 v20, v12

    .line 154
    .line 155
    const/4 v12, 0x0

    .line 156
    invoke-virtual {v5, v6, v12, v6, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    move/from16 v20, v12

    .line 161
    .line 162
    const/4 v12, 0x0

    .line 163
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 168
    .line 169
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 170
    .line 171
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 172
    .line 173
    iput v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 174
    .line 175
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 176
    .line 177
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 178
    .line 179
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 180
    .line 181
    if-eqz v4, :cond_6

    .line 182
    .line 183
    move-object v12, v5

    .line 184
    check-cast v12, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 185
    .line 186
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    if-eqz v12, :cond_6

    .line 191
    .line 192
    const/4 v12, 0x1

    .line 193
    goto :goto_3

    .line 194
    :cond_6
    const/4 v12, 0x0

    .line 195
    :goto_3
    iput-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 196
    .line 197
    iget-boolean v12, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 198
    .line 199
    if-eqz v12, :cond_7

    .line 200
    .line 201
    const/4 v12, 0x1

    .line 202
    goto :goto_4

    .line 203
    :cond_7
    move v12, v10

    .line 204
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 205
    .line 206
    .line 207
    move-result-object v21

    .line 208
    move/from16 v22, v2

    .line 209
    .line 210
    move-object/from16 v2, v21

    .line 211
    .line 212
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 213
    .line 214
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 215
    .line 216
    .line 217
    move-result v21

    .line 218
    move/from16 v23, v1

    .line 219
    .line 220
    sub-int v1, v21, v9

    .line 221
    .line 222
    move/from16 v21, v9

    .line 223
    .line 224
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v4, :cond_8

    .line 233
    .line 234
    move-object v4, v5

    .line 235
    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_8
    const/4 v4, 0x0

    .line 239
    :goto_5
    if-eqz v4, :cond_9

    .line 240
    .line 241
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_9

    .line 246
    .line 247
    const/4 v4, 0x1

    .line 248
    goto :goto_6

    .line 249
    :cond_9
    const/4 v4, 0x0

    .line 250
    :goto_6
    if-lez v12, :cond_c

    .line 251
    .line 252
    if-eqz v4, :cond_a

    .line 253
    .line 254
    const/4 v9, 0x2

    .line 255
    if-lt v12, v9, :cond_c

    .line 256
    .line 257
    :cond_a
    mul-int/2addr v12, v11

    .line 258
    const/high16 v9, -0x80000000

    .line 259
    .line 260
    invoke-static {v12, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    invoke-virtual {v5, v9, v1}, Landroid/view/View;->measure(II)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 268
    .line 269
    .line 270
    move-result v9

    .line 271
    div-int v12, v9, v11

    .line 272
    .line 273
    rem-int/2addr v9, v11

    .line 274
    if-eqz v9, :cond_b

    .line 275
    .line 276
    add-int/lit8 v12, v12, 0x1

    .line 277
    .line 278
    :cond_b
    if-eqz v4, :cond_d

    .line 279
    .line 280
    const/4 v9, 0x2

    .line 281
    if-ge v12, v9, :cond_d

    .line 282
    .line 283
    const/4 v12, 0x2

    .line 284
    goto :goto_7

    .line 285
    :cond_c
    const/4 v12, 0x0

    .line 286
    :cond_d
    :goto_7
    iget-boolean v9, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 287
    .line 288
    if-nez v9, :cond_e

    .line 289
    .line 290
    if-eqz v4, :cond_e

    .line 291
    .line 292
    const/4 v4, 0x1

    .line 293
    goto :goto_8

    .line 294
    :cond_e
    const/4 v4, 0x0

    .line 295
    :goto_8
    iput-boolean v4, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 296
    .line 297
    iput v12, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 298
    .line 299
    mul-int v2, v11, v12

    .line 300
    .line 301
    const/high16 v4, 0x40000000    # 2.0f

    .line 302
    .line 303
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    invoke-virtual {v5, v2, v1}, Landroid/view/View;->measure(II)V

    .line 308
    .line 309
    .line 310
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 315
    .line 316
    if-eqz v1, :cond_f

    .line 317
    .line 318
    add-int/lit8 v18, v18, 0x1

    .line 319
    .line 320
    :cond_f
    iget-boolean v1, v6, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 321
    .line 322
    if-eqz v1, :cond_10

    .line 323
    .line 324
    const/4 v15, 0x1

    .line 325
    :cond_10
    sub-int/2addr v10, v12

    .line 326
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    const/4 v1, 0x1

    .line 335
    if-ne v12, v1, :cond_11

    .line 336
    .line 337
    shl-int v2, v1, v14

    .line 338
    .line 339
    int-to-long v1, v2

    .line 340
    or-long v16, v16, v1

    .line 341
    .line 342
    :cond_11
    move/from16 v12, v20

    .line 343
    .line 344
    :goto_9
    add-int/lit8 v14, v14, 0x1

    .line 345
    .line 346
    move/from16 v6, v19

    .line 347
    .line 348
    move/from16 v9, v21

    .line 349
    .line 350
    move/from16 v2, v22

    .line 351
    .line 352
    move/from16 v1, v23

    .line 353
    .line 354
    const/4 v4, 0x0

    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :cond_12
    move/from16 v23, v1

    .line 358
    .line 359
    move/from16 v22, v2

    .line 360
    .line 361
    move/from16 v19, v6

    .line 362
    .line 363
    if-eqz v15, :cond_13

    .line 364
    .line 365
    const/4 v1, 0x2

    .line 366
    if-ne v12, v1, :cond_13

    .line 367
    .line 368
    const/4 v1, 0x1

    .line 369
    goto :goto_a

    .line 370
    :cond_13
    const/4 v1, 0x0

    .line 371
    :goto_a
    const/4 v2, 0x0

    .line 372
    :goto_b
    if-lez v18, :cond_18

    .line 373
    .line 374
    if-lez v10, :cond_18

    .line 375
    .line 376
    const v6, 0x7fffffff

    .line 377
    .line 378
    .line 379
    const/4 v9, 0x0

    .line 380
    const/4 v14, 0x0

    .line 381
    const-wide/16 v20, 0x0

    .line 382
    .line 383
    :goto_c
    if-ge v14, v8, :cond_17

    .line 384
    .line 385
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 386
    .line 387
    .line 388
    move-result-object v24

    .line 389
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 390
    .line 391
    .line 392
    move-result-object v24

    .line 393
    move-object/from16 v4, v24

    .line 394
    .line 395
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 396
    .line 397
    iget-boolean v5, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 398
    .line 399
    if-nez v5, :cond_14

    .line 400
    .line 401
    goto :goto_d

    .line 402
    :cond_14
    iget v4, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 403
    .line 404
    const-wide/16 v24, 0x1

    .line 405
    .line 406
    if-ge v4, v6, :cond_15

    .line 407
    .line 408
    shl-long v5, v24, v14

    .line 409
    .line 410
    move-wide/from16 v20, v5

    .line 411
    .line 412
    const/4 v9, 0x1

    .line 413
    move v6, v4

    .line 414
    goto :goto_d

    .line 415
    :cond_15
    if-ne v4, v6, :cond_16

    .line 416
    .line 417
    shl-long v4, v24, v14

    .line 418
    .line 419
    or-long v4, v20, v4

    .line 420
    .line 421
    add-int/lit8 v9, v9, 0x1

    .line 422
    .line 423
    move-wide/from16 v20, v4

    .line 424
    .line 425
    :cond_16
    :goto_d
    add-int/lit8 v14, v14, 0x1

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :cond_17
    or-long v16, v16, v20

    .line 429
    .line 430
    if-le v9, v10, :cond_19

    .line 431
    .line 432
    :cond_18
    move v9, v7

    .line 433
    move/from16 v24, v8

    .line 434
    .line 435
    goto :goto_10

    .line 436
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 437
    .line 438
    const/4 v2, 0x0

    .line 439
    :goto_e
    if-ge v2, v8, :cond_1d

    .line 440
    .line 441
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    check-cast v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 450
    .line 451
    const/4 v9, 0x1

    .line 452
    shl-int v14, v9, v2

    .line 453
    .line 454
    move v9, v7

    .line 455
    move/from16 v24, v8

    .line 456
    .line 457
    int-to-long v7, v14

    .line 458
    and-long v25, v20, v7

    .line 459
    .line 460
    const-wide/16 v27, 0x0

    .line 461
    .line 462
    cmp-long v14, v25, v27

    .line 463
    .line 464
    if-nez v14, :cond_1a

    .line 465
    .line 466
    iget v4, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 467
    .line 468
    if-ne v4, v6, :cond_1c

    .line 469
    .line 470
    or-long v16, v16, v7

    .line 471
    .line 472
    goto :goto_f

    .line 473
    :cond_1a
    if-eqz v1, :cond_1b

    .line 474
    .line 475
    iget-boolean v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 476
    .line 477
    if-eqz v7, :cond_1b

    .line 478
    .line 479
    const/4 v7, 0x1

    .line 480
    if-ne v10, v7, :cond_1b

    .line 481
    .line 482
    iget v8, v0, Landroidx/appcompat/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 483
    .line 484
    add-int v14, v8, v11

    .line 485
    .line 486
    const/4 v7, 0x0

    .line 487
    invoke-virtual {v4, v14, v7, v8, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 488
    .line 489
    .line 490
    :cond_1b
    iget v4, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 491
    .line 492
    const/4 v7, 0x1

    .line 493
    add-int/2addr v4, v7

    .line 494
    iput v4, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 495
    .line 496
    iput-boolean v7, v5, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 497
    .line 498
    add-int/lit8 v10, v10, -0x1

    .line 499
    .line 500
    :cond_1c
    :goto_f
    add-int/lit8 v2, v2, 0x1

    .line 501
    .line 502
    move v7, v9

    .line 503
    move/from16 v8, v24

    .line 504
    .line 505
    goto :goto_e

    .line 506
    :cond_1d
    const/4 v2, 0x1

    .line 507
    goto/16 :goto_b

    .line 508
    .line 509
    :goto_10
    const/4 v1, 0x1

    .line 510
    if-nez v15, :cond_1e

    .line 511
    .line 512
    if-ne v12, v1, :cond_1e

    .line 513
    .line 514
    move v4, v1

    .line 515
    goto :goto_11

    .line 516
    :cond_1e
    const/4 v4, 0x0

    .line 517
    :goto_11
    if-lez v10, :cond_29

    .line 518
    .line 519
    const-wide/16 v5, 0x0

    .line 520
    .line 521
    cmp-long v7, v16, v5

    .line 522
    .line 523
    if-eqz v7, :cond_29

    .line 524
    .line 525
    sub-int/2addr v12, v1

    .line 526
    if-lt v10, v12, :cond_1f

    .line 527
    .line 528
    if-nez v4, :cond_1f

    .line 529
    .line 530
    if-le v13, v1, :cond_29

    .line 531
    .line 532
    :cond_1f
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    int-to-float v1, v1

    .line 537
    if-nez v4, :cond_21

    .line 538
    .line 539
    const-wide/16 v4, 0x1

    .line 540
    .line 541
    and-long v4, v16, v4

    .line 542
    .line 543
    const-wide/16 v6, 0x0

    .line 544
    .line 545
    cmp-long v4, v4, v6

    .line 546
    .line 547
    const/high16 v5, 0x3f000000    # 0.5f

    .line 548
    .line 549
    if-eqz v4, :cond_20

    .line 550
    .line 551
    const/4 v4, 0x0

    .line 552
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 561
    .line 562
    iget-boolean v4, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 563
    .line 564
    if-nez v4, :cond_20

    .line 565
    .line 566
    sub-float/2addr v1, v5

    .line 567
    :cond_20
    add-int/lit8 v8, v24, -0x1

    .line 568
    .line 569
    const/4 v4, 0x1

    .line 570
    shl-int v6, v4, v8

    .line 571
    .line 572
    int-to-long v6, v6

    .line 573
    and-long v6, v16, v6

    .line 574
    .line 575
    const-wide/16 v12, 0x0

    .line 576
    .line 577
    cmp-long v4, v6, v12

    .line 578
    .line 579
    if-eqz v4, :cond_21

    .line 580
    .line 581
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 590
    .line 591
    iget-boolean v4, v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 592
    .line 593
    if-nez v4, :cond_21

    .line 594
    .line 595
    sub-float/2addr v1, v5

    .line 596
    :cond_21
    const/4 v4, 0x0

    .line 597
    cmpl-float v4, v1, v4

    .line 598
    .line 599
    if-lez v4, :cond_22

    .line 600
    .line 601
    mul-int/2addr v10, v11

    .line 602
    int-to-float v4, v10

    .line 603
    div-float/2addr v4, v1

    .line 604
    float-to-int v1, v4

    .line 605
    goto :goto_12

    .line 606
    :cond_22
    const/4 v1, 0x0

    .line 607
    :goto_12
    move/from16 v5, v24

    .line 608
    .line 609
    const/4 v4, 0x0

    .line 610
    :goto_13
    if-ge v4, v5, :cond_2a

    .line 611
    .line 612
    const/4 v6, 0x1

    .line 613
    shl-int v7, v6, v4

    .line 614
    .line 615
    int-to-long v6, v7

    .line 616
    and-long v6, v16, v6

    .line 617
    .line 618
    const-wide/16 v12, 0x0

    .line 619
    .line 620
    cmp-long v6, v6, v12

    .line 621
    .line 622
    if-nez v6, :cond_23

    .line 623
    .line 624
    const/4 v6, 0x2

    .line 625
    const/4 v8, 0x1

    .line 626
    goto :goto_16

    .line 627
    :cond_23
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 632
    .line 633
    .line 634
    move-result-object v7

    .line 635
    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 636
    .line 637
    instance-of v6, v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 638
    .line 639
    if-eqz v6, :cond_25

    .line 640
    .line 641
    iput v1, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 642
    .line 643
    const/4 v2, 0x1

    .line 644
    iput-boolean v2, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 645
    .line 646
    if-nez v4, :cond_24

    .line 647
    .line 648
    iget-boolean v2, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 649
    .line 650
    if-nez v2, :cond_24

    .line 651
    .line 652
    neg-int v2, v1

    .line 653
    const/4 v6, 0x2

    .line 654
    div-int/2addr v2, v6

    .line 655
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 656
    .line 657
    goto :goto_14

    .line 658
    :cond_24
    const/4 v6, 0x2

    .line 659
    :goto_14
    const/4 v8, 0x1

    .line 660
    goto :goto_15

    .line 661
    :cond_25
    const/4 v6, 0x2

    .line 662
    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 663
    .line 664
    if-eqz v8, :cond_26

    .line 665
    .line 666
    iput v1, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 667
    .line 668
    const/4 v8, 0x1

    .line 669
    iput-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 670
    .line 671
    neg-int v2, v1

    .line 672
    div-int/2addr v2, v6

    .line 673
    iput v2, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 674
    .line 675
    :goto_15
    move v2, v8

    .line 676
    goto :goto_16

    .line 677
    :cond_26
    const/4 v8, 0x1

    .line 678
    if-eqz v4, :cond_27

    .line 679
    .line 680
    div-int/lit8 v10, v1, 0x2

    .line 681
    .line 682
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 683
    .line 684
    :cond_27
    add-int/lit8 v10, v5, -0x1

    .line 685
    .line 686
    if-eq v4, v10, :cond_28

    .line 687
    .line 688
    div-int/lit8 v10, v1, 0x2

    .line 689
    .line 690
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 691
    .line 692
    :cond_28
    :goto_16
    add-int/lit8 v4, v4, 0x1

    .line 693
    .line 694
    goto :goto_13

    .line 695
    :cond_29
    move/from16 v5, v24

    .line 696
    .line 697
    :cond_2a
    if-eqz v2, :cond_2c

    .line 698
    .line 699
    const/4 v4, 0x0

    .line 700
    :goto_17
    if-ge v4, v5, :cond_2c

    .line 701
    .line 702
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 711
    .line 712
    iget-boolean v6, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 713
    .line 714
    if-nez v6, :cond_2b

    .line 715
    .line 716
    const/high16 v2, 0x40000000    # 2.0f

    .line 717
    .line 718
    goto :goto_18

    .line 719
    :cond_2b
    iget v6, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 720
    .line 721
    mul-int/2addr v6, v11

    .line 722
    iget v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 723
    .line 724
    add-int/2addr v6, v2

    .line 725
    const/high16 v2, 0x40000000    # 2.0f

    .line 726
    .line 727
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 728
    .line 729
    .line 730
    move-result v6

    .line 731
    invoke-virtual {v1, v6, v9}, Landroid/view/View;->measure(II)V

    .line 732
    .line 733
    .line 734
    :goto_18
    add-int/lit8 v4, v4, 0x1

    .line 735
    .line 736
    goto :goto_17

    .line 737
    :cond_2c
    const/high16 v2, 0x40000000    # 2.0f

    .line 738
    .line 739
    move/from16 v1, v23

    .line 740
    .line 741
    if-eq v1, v2, :cond_2d

    .line 742
    .line 743
    move v6, v3

    .line 744
    goto :goto_19

    .line 745
    :cond_2d
    move/from16 v6, v19

    .line 746
    .line 747
    :goto_19
    move/from16 v2, v22

    .line 748
    .line 749
    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_1f

    .line 753
    .line 754
    :cond_2e
    move/from16 v10, p2

    .line 755
    .line 756
    const/4 v12, 0x0

    .line 757
    :goto_1a
    if-ge v12, v1, :cond_36

    .line 758
    .line 759
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 768
    .line 769
    const/4 v4, 0x0

    .line 770
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 771
    .line 772
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 773
    .line 774
    instance-of v5, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 775
    .line 776
    if-eqz v5, :cond_33

    .line 777
    .line 778
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    .line 779
    .line 780
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingEnd:I

    .line 781
    .line 782
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 783
    .line 784
    invoke-static {v2, v5, v4, v6, v4}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 785
    .line 786
    .line 787
    add-int/lit8 v4, v1, -0x1

    .line 788
    .line 789
    if-ne v12, v4, :cond_32

    .line 790
    .line 791
    move-object v4, v2

    .line 792
    check-cast v4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 793
    .line 794
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    if-eqz v5, :cond_30

    .line 799
    .line 800
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    if-nez v4, :cond_2f

    .line 805
    .line 806
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    .line 807
    .line 808
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 809
    .line 810
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    .line 812
    .line 813
    goto :goto_1b

    .line 814
    :cond_2f
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mLastItemEndPadding:I

    .line 815
    .line 816
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 817
    .line 818
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    .line 820
    .line 821
    :goto_1b
    const/4 v5, 0x0

    .line 822
    goto :goto_1c

    .line 823
    :cond_30
    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuView;->mIsOneUI41:Z

    .line 824
    .line 825
    if-eqz v5, :cond_31

    .line 826
    .line 827
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    .line 829
    .line 830
    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mActionButtonPaddingStart:I

    .line 831
    .line 832
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 833
    .line 834
    const/4 v5, 0x0

    .line 835
    invoke-static {v2, v3, v5, v4, v5}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 836
    .line 837
    .line 838
    goto :goto_1c

    .line 839
    :cond_31
    const/4 v5, 0x0

    .line 840
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 841
    .line 842
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    .line 847
    .line 848
    iget v3, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 849
    .line 850
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 851
    .line 852
    invoke-static {v2, v3, v5, v4, v5}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 853
    .line 854
    .line 855
    :goto_1c
    move v3, v5

    .line 856
    goto :goto_1e

    .line 857
    :cond_32
    if-ge v12, v4, :cond_35

    .line 858
    .line 859
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 860
    .line 861
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ActionMenuItemView;->hasText()Z

    .line 862
    .line 863
    .line 864
    goto :goto_1d

    .line 865
    :cond_33
    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 866
    .line 867
    if-eqz v3, :cond_35

    .line 868
    .line 869
    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 870
    .line 871
    if-eqz v3, :cond_34

    .line 872
    .line 873
    check-cast v2, Landroid/view/ViewGroup;

    .line 874
    .line 875
    const/4 v3, 0x0

    .line 876
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 881
    .line 882
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 883
    .line 884
    invoke-virtual {v4, v5, v3, v6, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 892
    .line 893
    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 894
    .line 895
    .line 896
    goto :goto_1e

    .line 897
    :cond_34
    const/4 v3, 0x0

    .line 898
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingStart:I

    .line 899
    .line 900
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonPaddingEnd:I

    .line 901
    .line 902
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 903
    .line 904
    invoke-static {v2, v4, v3, v5, v3}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 905
    .line 906
    .line 907
    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->mOverflowButtonMinWidth:I

    .line 908
    .line 909
    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 910
    .line 911
    .line 912
    goto :goto_1e

    .line 913
    :cond_35
    :goto_1d
    const/4 v3, 0x0

    .line 914
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    .line 915
    .line 916
    goto/16 :goto_1a

    .line 917
    .line 918
    :cond_36
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 919
    .line 920
    .line 921
    :goto_1f
    return-void
.end method
