.class public Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public isDetailViewAvailable:Z

.field public mAccessibilityClass:Ljava/lang/String;

.field public final mBg:Landroid/widget/ImageView;

.field public mCircleColor:I

.field public final mCollapsedView:Z

.field public mColorActive:I

.field public mColorDisabled:I

.field public mColorInactive:I

.field public final mDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

.field public final mDetailViewList:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

.field public final mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field public final mIconFrame:Landroid/widget/FrameLayout;

.field public mLastState:I

.field public mLastStateDescription:Ljava/lang/CharSequence;

.field public final mLocInScreen:[I

.field public mOrientation:I

.field public mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public mRipple:Landroid/graphics/drawable/RippleDrawable;

.field public mScreenLayout:I

.field public mSemDisplayDeviceType:I

.field public mStateDescriptionDeltas:Ljava/lang/CharSequence;

.field public final mStrokeWidthActive:F

.field public final mStrokeWidthInactive:F

.field public final mTileBackground:Landroid/graphics/drawable/Drawable;

.field public mTileSpec:Ljava/lang/String;

.field public mTileState:Z


# direct methods
.method public static synthetic $r8$lambda$At0CU0hnXD3S0omAKRLn1Z_WouQ(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 7

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    .line 7
    new-instance v1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v2, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 8
    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 9
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500de

    .line 11
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500df

    .line 13
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    .line 14
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v3

    goto :goto_2

    .line 15
    :cond_0
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v4, :cond_1

    .line 16
    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070cc0

    .line 18
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v5

    .line 20
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v6

    mul-int/2addr v6, v0

    sub-int/2addr v5, v6

    .line 21
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v4, :cond_2

    const v4, 0x7f0b00e6

    .line 22
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_0

    :cond_2
    const v4, 0x7f0b00e3

    .line 23
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 24
    :goto_0
    div-int v4, v5, v4

    .line 25
    :goto_1
    invoke-static {v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 26
    :goto_2
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_3

    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v4

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconHeight(Landroid/content/Context;)I

    move-result v4

    .line 27
    :goto_3
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 30
    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 31
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v4, 0x0

    .line 32
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result p1

    .line 34
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 35
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 36
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-direct {v1, p1, p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 38
    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 41
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 42
    invoke-virtual {v2, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 44
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 45
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 46
    new-instance p1, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$1;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mDetailViewList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 48
    instance-of v1, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_4

    .line 49
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0605bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 50
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    .line 53
    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 56
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateBackgroundColors()V

    .line 58
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 60
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 61
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    .line 62
    new-instance p1, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$2;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public getCircleColor(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Invalid state "

    .line 10
    .line 11
    const-string v0, "QSTileBaseView"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Landroidx/core/widget/NestedScrollView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorActive:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorDisabled:I

    .line 22
    .line 23
    return p0

    .line 24
    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorInactive:I

    .line 25
    .line 26
    return p0
.end method

.method public getDetailY()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    if-eq v3, v2, :cond_2

    .line 35
    .line 36
    if-eq v3, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    .line 40
    .line 41
    cmpl-float v3, v3, v4

    .line 42
    .line 43
    if-ltz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    .line 65
    .line 66
    cmpl-float v3, v3, v4

    .line 67
    .line 68
    if-ltz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getCircleColor(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isNonBGTile:Z

    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const v3, 0x7f070f07

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    .line 118
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .line 124
    .line 125
    move v0, v4

    .line 126
    :cond_4
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    .line 127
    .line 128
    if-eq v0, v3, :cond_5

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 137
    .line 138
    .line 139
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    .line 140
    .line 141
    :cond_5
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    move v0, v2

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    move v0, v4

    .line 148
    :goto_1
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 149
    .line 150
    .line 151
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 157
    .line 158
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileSpec:Ljava/lang/String;

    .line 167
    .line 168
    const v5, 0x7f131117

    .line 169
    .line 170
    .line 171
    if-eqz v3, :cond_9

    .line 172
    .line 173
    const-string v6, "SoundMode"

    .line 174
    .line 175
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_9

    .line 180
    .line 181
    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 182
    .line 183
    if-eq v3, v2, :cond_8

    .line 184
    .line 185
    if-eq v3, v1, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_8
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    const v5, 0x7f131116

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :goto_2
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 211
    .line 212
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_a

    .line 217
    .line 218
    const-string v3, ", "

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 224
    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    .line 229
    .line 230
    const/4 v5, -0x1

    .line 231
    if-eq v3, v5, :cond_a

    .line 232
    .line 233
    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 234
    .line 235
    if-ne v5, v3, :cond_a

    .line 236
    .line 237
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 238
    .line 239
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    .line 240
    .line 241
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    if-nez v3, :cond_a

    .line 246
    .line 247
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 248
    .line 249
    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_9
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 253
    .line 254
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 269
    .line 270
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    .line 271
    .line 272
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 273
    .line 274
    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    .line 275
    .line 276
    const/4 v3, 0x0

    .line 277
    if-nez v0, :cond_b

    .line 278
    .line 279
    move-object v5, v3

    .line 280
    goto :goto_4

    .line 281
    :cond_b
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 282
    .line 283
    :goto_4
    iput-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 284
    .line 285
    instance-of v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 286
    .line 287
    if-eqz v5, :cond_c

    .line 288
    .line 289
    move-object v0, p1

    .line 290
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 291
    .line 292
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 293
    .line 294
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 295
    .line 296
    if-eq v1, v0, :cond_e

    .line 297
    .line 298
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_c
    if-ne v0, v1, :cond_d

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_d
    move v2, v4

    .line 305
    :goto_5
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 306
    .line 307
    :cond_e
    :goto_6
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 308
    .line 309
    if-eqz v0, :cond_f

    .line 310
    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 321
    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const v1, 0x7f130052

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 341
    .line 342
    const-string v2, ","

    .line 343
    .line 344
    if-nez v1, :cond_11

    .line 345
    .line 346
    if-eqz v3, :cond_12

    .line 347
    .line 348
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 353
    .line 354
    if-eqz v1, :cond_10

    .line 355
    .line 356
    const v1, 0x7f13006f

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_10
    const v1, 0x7f13006e

    .line 361
    .line 362
    .line 363
    :goto_7
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    const-string v1, "\n"

    .line 368
    .line 369
    const-string v4, " "

    .line 370
    .line 371
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    const-string v3, "-"

    .line 376
    .line 377
    const-string v4, ""

    .line 378
    .line 379
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    goto :goto_8

    .line 408
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 414
    .line 415
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    :cond_12
    :goto_8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 429
    .line 430
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;I)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;I)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->init(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;)V

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileSpec:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mDetailViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->isDetailViewAvailable:Z

    return-void
.end method

.method public init(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda2;)V
    .locals 0

    .line 4
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    const v0, 0x101045c

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mOrientation:I

    .line 5
    .line 6
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mScreenLayout:I

    .line 11
    .line 12
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mSemDisplayDeviceType:I

    .line 17
    .line 18
    iget v2, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mOrientation:I

    .line 23
    .line 24
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 25
    .line 26
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mScreenLayout:I

    .line 27
    .line 28
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 29
    .line 30
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mSemDisplayDeviceType:I

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x40

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    const-class v0, Landroid/widget/Switch;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    const v1, 0x7f131117

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const v1, 0x7f131116

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 73
    .line 74
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const v2, 0x7f1300a6

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onPanelModeChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateBackgroundColors()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getCircleColor(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 28
    .line 29
    .line 30
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 41
    .line 42
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const v2, 0x7f0605bb

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Lcom/android/systemui/plugins/qs/QSIconView;->onPanelModeChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mQSTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 12
    .line 13
    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x5b

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "locInScreen=("

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aget v2, v2, v3

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    aget v2, v2, v3

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ")"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, ", iconView="

    .line 62
    .line 63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v2, ", tileState="

    .line 85
    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p0, "]"

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method

.method public final updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final updateBackgroundColors()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f060515

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorActive:I

    .line 11
    .line 12
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const v1, 0x7f060514

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorDisabled:I

    .line 22
    .line 23
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const v1, 0x7f060513

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorInactive:I

    .line 33
    .line 34
    return-void
.end method

.method public final updateRippleSize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    div-int/lit8 v1, v1, 0x2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    const v3, 0x3edc28f6    # 0.43f

    .line 25
    .line 26
    .line 27
    mul-float/2addr v2, v3

    .line 28
    float-to-int v2, v2

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 30
    .line 31
    sub-int v3, v0, v2

    .line 32
    .line 33
    sub-int v4, v1, v2

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    add-int/2addr v1, v2

    .line 37
    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
