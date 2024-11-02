.class public final Lcom/android/systemui/qs/bar/PagedTileLayoutBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public mOrientation:I

.field public mPageIndicator:Landroid/view/View;

.field public mTileLayoutContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/util/ConfigurationState;

    .line 5
    .line 6
    sget-object v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 7
    .line 8
    sget-object v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->SCREEN_HEIGHT_DP:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 9
    .line 10
    sget-object v3, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->DISPLAY_DEVICE_TYPE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 11
    .line 12
    filled-new-array {v1, v2, v3}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final getBarHeight()I
    .locals 1

    .line 1
    const v0, 0x7f070a94

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->getDimensionPixelSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0364

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getDimensionPixelSize(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
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
    const v1, 0x7f0d0364

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
    const v0, 0x7f0a0bd1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mTileLayoutContainer:Landroid/view/View;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 27
    .line 28
    const v0, 0x7f0a07c5

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mPageIndicator:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->updateHeightMargins()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mTileLayoutContainer:Landroid/view/View;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const v1, 0x7f080f65

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->showBar(Z)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
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
    iget-object v1, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

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
    iget v2, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mOrientation:I

    .line 27
    .line 28
    if-eq v2, v0, :cond_2

    .line 29
    .line 30
    :cond_1
    iput v0, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mOrientation:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->updateHeightMargins()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final setUnderneathQqs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsUnderneathQqs:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->updateHeightMargins()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showBar(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "mBarRootView is null... "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 4

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
    const v0, 0x7f070091

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->getDimensionPixelSize(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, -0x2

    .line 17
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f070a9a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const v1, 0x7f070a97

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const v2, 0x7f070a95

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mTileLayoutContainer:Landroid/view/View;

    .line 49
    .line 50
    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mPageIndicator:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    const v1, 0x7f070a96

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->getDimensionPixelSize(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/bar/PagedTileLayoutBar;->mPageIndicator:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
