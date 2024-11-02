.class public Lcom/android/systemui/qs/buttons/QSSettingsButton;
.super Landroid/widget/RelativeLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qs/buttons/QSButtonsContainer$CloseTooltipWindow;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mSettingsButton:Landroid/widget/ImageButton;

.field public mSettingsButtonBadge:Landroid/view/View;

.field public mSettingsContainer:Landroid/view/View;

.field public final mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

.field public final mToolTipString:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

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
    iput-object p2, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    .line 21
    .line 22
    const p1, 0x7f13115b

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mToolTipString:I

    .line 26
    .line 27
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 36
    .line 37
    const-class p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final closeTooltip()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

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
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->updateTouchTargetArea()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onFinishInflate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a0a0f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageButton;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 14
    .line 15
    const v0, 0x7f0a0a11

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsContainer:Landroid/view/View;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 31
    .line 32
    sget-object v1, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const v3, 0x7f0812d8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const v4, 0x7f0711a8

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const v5, 0x7f070b54

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    const v1, 0x3e4ccccd    # 0.2f

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3, v1, v4}, Lcom/android/systemui/util/ShadowDelegateUtil;->createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton;->updateTouchTargetArea()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsContainer:Landroid/view/View;

    .line 86
    .line 87
    const v1, 0x7f0a0a10

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButtonBadge:Landroid/view/View;

    .line 95
    .line 96
    new-instance v0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;-><init>(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lcom/android/systemui/util/TouchDelegateUtil;->INSTANCE:Lcom/android/systemui/util/TouchDelegateUtil;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsContainer:Landroid/view/View;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Lcom/android/systemui/util/TouchDelegateUtil;->expandTouchAreaAsParent(Landroid/view/View;Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mSettingsButton:Landroid/widget/ImageButton;

    .line 119
    .line 120
    new-instance v1, Lcom/android/systemui/qs/buttons/QSSettingsButton$2;

    .line 121
    .line 122
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/buttons/QSSettingsButton$2;-><init>(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public final updateTouchTargetArea()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
