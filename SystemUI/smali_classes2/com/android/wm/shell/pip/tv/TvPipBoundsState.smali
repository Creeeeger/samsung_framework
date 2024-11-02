.class public final Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
.super Lcom/android/wm/shell/pip/PipBoundsState;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultGravity:I

.field public mDesiredTvExpandedAspectRatio:F

.field public mIsRtl:Z

.field public final mIsTvExpandedPipSupported:Z

.field public mIsTvPipExpanded:Z

.field public mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

.field public mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

.field public mPreviousCollapsedGravity:I

.field public mTvExpandedSize:Landroid/util/Size;

.field public mTvFixedPipOrientation:I

.field public mTvPipGravity:I

.field public mTvPipManuallyCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipBoundsState;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    .line 2
    .line 3
    .line 4
    sget-object p2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 16
    .line 17
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "android.software.expanded_picture_in_picture"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setDesiredTvExpandedAspectRatio(FZ)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    .line 6
    if-nez p2, :cond_5

    .line 7
    .line 8
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    cmpl-float v4, p1, v3

    .line 14
    .line 15
    if-lez v4, :cond_1

    .line 16
    .line 17
    if-eq p2, v0, :cond_3

    .line 18
    .line 19
    :cond_1
    cmpg-float v0, p1, v3

    .line 20
    .line 21
    if-gtz v0, :cond_2

    .line 22
    .line 23
    if-eq p2, v1, :cond_3

    .line 24
    .line 25
    :cond_2
    cmpl-float p2, p1, v2

    .line 26
    .line 27
    if-nez p2, :cond_4

    .line 28
    .line 29
    :cond_3
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 30
    .line 31
    :cond_4
    return-void

    .line 32
    :cond_5
    :goto_0
    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 34
    .line 35
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 36
    .line 37
    iput v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 38
    .line 39
    iput v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 40
    .line 41
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 42
    .line 43
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 44
    .line 45
    cmpl-float p2, p1, v2

    .line 46
    .line 47
    if-eqz p2, :cond_7

    .line 48
    .line 49
    cmpl-float p1, p1, v3

    .line 50
    .line 51
    if-lez p1, :cond_6

    .line 52
    .line 53
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_6
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 57
    .line 58
    :cond_7
    :goto_1
    return-void
.end method

.method public final updateDefaultGravity()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/4 v0, 0x3

    .line 13
    const/4 v2, 0x5

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move v3, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v3, v2

    .line 19
    :goto_1
    or-int/lit8 v3, v3, 0x50

    .line 20
    .line 21
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsRtl:Z

    .line 24
    .line 25
    if-eq v3, v1, :cond_3

    .line 26
    .line 27
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 28
    .line 29
    and-int/lit8 v4, v3, 0x7

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0x70

    .line 32
    .line 33
    and-int/lit8 v5, v4, 0x5

    .line 34
    .line 35
    if-ne v5, v2, :cond_2

    .line 36
    .line 37
    or-int/2addr v0, v3

    .line 38
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    and-int/lit8 v2, v4, 0x3

    .line 42
    .line 43
    if-ne v2, v0, :cond_3

    .line 44
    .line 45
    or-int/lit8 v0, v3, 0x5

    .line 46
    .line 47
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 48
    .line 49
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsRtl:Z

    .line 50
    .line 51
    return-void
.end method
