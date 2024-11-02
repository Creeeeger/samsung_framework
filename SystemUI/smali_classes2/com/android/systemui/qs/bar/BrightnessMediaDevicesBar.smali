.class public final Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

.field public mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/systemui/util/ConfigurationState;

    .line 5
    .line 6
    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 7
    .line 8
    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 9
    .line 10
    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 11
    .line 12
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 24
    .line 25
    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->BRIGHTNESS:Lcom/android/systemui/qs/bar/BarType;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 33
    .line 34
    check-cast p1, Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 37
    .line 38
    sget-object p1, Lcom/android/systemui/qs/bar/BarType;->MEDIA_DEVICES:Lcom/android/systemui/qs/bar/BarType;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/bar/BarFactory;->createBarItem(Lcom/android/systemui/qs/bar/BarType;)Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-boolean v0, p1, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 45
    .line 46
    check-cast p1, Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->destroy()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->destroy()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final getBarHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->getBarHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->getBarHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->haveEnoughSpace()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    return v0
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d02ee

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final haveEnoughSpace()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, -0x64

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, p0}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/ConfigurationState;->getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v0, 0x1

    .line 31
    if-eq p0, v0, :cond_1

    .line 32
    .line 33
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :cond_1
    return v0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0d02ee

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 16
    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->inflateViews(Landroid/view/ViewGroup;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 27
    .line 28
    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 34
    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 41
    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->inflateViews(Landroid/view/ViewGroup;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, v0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 52
    .line 53
    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 59
    .line 60
    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->updateHeightMargins()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isMediaQuickControlBarAvailable(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget v2, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mOrientation:I

    .line 27
    .line 28
    if-eq v2, v0, :cond_2

    .line 29
    .line 30
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mOrientation:I

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->updateHeightMargins()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final onUiModeChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BrightnessBar;->onUiModeChanged()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mMediaDevicesBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->onUiModeChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setPosition(F)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const v0, 0x3dcccccd    # 0.1f

    .line 8
    .line 9
    .line 10
    cmpg-float v0, p1, v0

    .line 11
    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BrightnessBar;->setPosition(F)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->updateHeightMargins()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->haveEnoughSpace()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 15
    .line 16
    check-cast v0, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    .line 20
    .line 21
    move v0, v2

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 23
    .line 24
    check-cast v1, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 33
    .line 34
    check-cast v1, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48
    .line 49
    const/4 v4, -0x1

    .line 50
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 62
    .line 63
    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    .line 67
    .line 68
    move v0, v2

    .line 69
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 70
    .line 71
    check-cast v3, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ge v0, v3, :cond_3

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 80
    .line 81
    check-cast v3, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .line 93
    const/high16 v5, 0x3f800000    # 1.0f

    .line 94
    .line 95
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    .line 97
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 98
    .line 99
    if-ne v0, v1, :cond_2

    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessMediaDevicesBar;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 102
    .line 103
    iget-boolean v5, v5, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 104
    .line 105
    if-eqz v5, :cond_2

    .line 106
    .line 107
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    const v6, 0x7f07008f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    return-void
.end method
