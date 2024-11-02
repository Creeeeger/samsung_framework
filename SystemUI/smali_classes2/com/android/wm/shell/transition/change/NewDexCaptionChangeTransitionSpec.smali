.class public final Lcom/android/wm/shell/transition/change/NewDexCaptionChangeTransitionSpec;
.super Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final createSnapshotAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/wm/shell/transition/change/StandardChangeTransitionSpec;->createSnapshotAnimation()Landroid/view/animation/Animation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mChange:Landroid/window/TransitionInfo$Change;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/change/NewDexCaptionChangeTransitionSpec;->getCornerRadius()F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setRoundedCornerRadius(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v0
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->dipToPixel(ILandroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    int-to-float p0, p0

    .line 10
    return p0
.end method

.method public final getSnapshotAlphaAnimationDuration()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/wm/shell/transition/change/ChangeTransitionSpec;->mDurationScale:F

    .line 2
    .line 3
    const/high16 v0, 0x43960000    # 300.0f

    .line 4
    .line 5
    mul-float/2addr p0, v0

    .line 6
    float-to-long v0, p0

    .line 7
    return-wide v0
.end method
