.class public Lcom/android/systemui/statusbar/policy/NetspeedView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;
    }
.end annotation


# instance fields
.field public mContentMarginEnd:I

.field public mContentUpdated:Z

.field public mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

.field public final mContext:Landroid/content/Context;

.field public mInStatusBar:Z

.field public mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public mNeedGrayIcon:Z

.field public mScreenOrientation:I

.field public final mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    .line 11
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    .line 12
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 13
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p2, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    .line 18
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 20
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    .line 5
    .line 6
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    .line 13
    .line 14
    .line 15
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 16
    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mScreenOrientation:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    .line 1
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mNeedGrayIcon:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p3, p1

    .line 15
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0733

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 14
    .line 15
    sget-boolean p0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 5
    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mInStatusBar:Z

    .line 9
    .line 10
    if-eqz p1, :cond_5

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->getDisplayCutoutAreaToExclude()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    const/4 p2, 0x0

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance p3, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 32
    .line 33
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 34
    .line 35
    .line 36
    iget p4, p3, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    if-gez p4, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    iget p4, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 42
    .line 43
    invoke-virtual {p3, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 44
    .line 45
    .line 46
    iget p4, p3, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    iget p5, p1, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    sub-int/2addr p4, p5

    .line 51
    if-ltz p4, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    add-int/2addr p3, p1

    .line 62
    if-lt p4, p3, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move p2, p4

    .line 66
    :cond_4
    :goto_1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 67
    .line 68
    if-eq p2, p1, :cond_5

    .line 69
    .line 70
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/high16 v1, 0x40000000    # 2.0f

    .line 13
    .line 14
    if-eq p1, v1, :cond_3

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->add(Ljava/lang/Integer;)Z

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    .line 39
    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->getStableWidth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-le v1, p1, :cond_1

    .line 47
    .line 48
    move p1, v1

    .line 49
    :cond_1
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentMarginEnd:I

    .line 54
    .line 55
    add-int/2addr p1, v1

    .line 56
    :cond_2
    if-eq v0, p1, :cond_3

    .line 57
    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final scaleView(F)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f071257

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const v0, 0x7f071256

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    mul-float/2addr v0, p1

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const v1, 0x7f0709ac

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    mul-float/2addr v0, p1

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingStart()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    float-to-int v0, v0

    .line 60
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mStableWidthHelper:Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$StableWidthHelper;->reset()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentView:Lcom/android/systemui/statusbar/phone/SwitchableDoubleShadowTextView;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView;->mContentUpdated:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
