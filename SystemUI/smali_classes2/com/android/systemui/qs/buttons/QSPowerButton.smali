.class public Lcom/android/systemui/qs/buttons/QSPowerButton;
.super Landroid/widget/FrameLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPowerButton:Landroid/widget/ImageButton;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public final mToolTipString:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 21
    .line 22
    const p1, 0x7f13115a

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mToolTipString:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final closeTooltip()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->hideToolTip()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSPowerButton;->updateTouchTargetArea()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a07fe

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageButton;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    .line 20
    .line 21
    sget-object v1, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const v3, 0x7f0812d6

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f0711a8

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const v5, 0x7f070b54

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const v1, 0x3e4ccccd    # 0.2f

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/util/ShadowDelegateUtil;->createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSPowerButton;->updateTouchTargetArea()V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/android/systemui/qs/buttons/QSPowerButton$1;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSPowerButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lcom/android/systemui/util/TouchDelegateUtil;->INSTANCE:Lcom/android/systemui/util/TouchDelegateUtil;

    .line 85
    .line 86
    const v1, 0x7f0a0800

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2}, Lcom/android/systemui/util/TouchDelegateUtil;->expandTouchAreaAsParent(Landroid/view/View;Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mPowerButton:Landroid/widget/ImageButton;

    .line 102
    .line 103
    new-instance v1, Lcom/android/systemui/qs/buttons/QSPowerButton$2;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSPowerButton$2;-><init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final updateTouchTargetArea()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getButtonsWidth(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f070e70

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
