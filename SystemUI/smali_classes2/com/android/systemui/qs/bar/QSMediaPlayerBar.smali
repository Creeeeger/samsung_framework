.class public final Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public mBarBottomMargin:I

.field public mBarHeight:I

.field public mCurrentOrientation:I

.field public mExpandedHeight:I

.field public final mMediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public final mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateBarHeight()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 29
    .line 30
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecMediaHost;->removeMediaFrame(Lcom/android/systemui/media/MediaType;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final getBarHeight()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object v1, v1, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, v1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->mediaPlayerData:Lcom/android/systemui/media/SecMediaPlayerData;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/media/SecMediaPlayerData;->getSortedMediaPlayersSize()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_3

    .line 24
    .line 25
    iget v0, v1, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->playerExpansionHeight:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/4 v0, 0x0

    .line 30
    :goto_0
    float-to-int v0, v0

    .line 31
    :goto_1
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarBottomMargin:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    iget v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    .line 35
    .line 36
    if-eq v1, v0, :cond_4

    .line 37
    .line 38
    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    .line 39
    .line 40
    :cond_4
    iget p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarHeight:I

    .line 41
    .line 42
    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d02d5

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0d02d5

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    .line 28
    .line 29
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 30
    .line 31
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarBottomMargin:I

    .line 32
    .line 33
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/systemui/media/SecMediaHost;->mVisibilityListeners:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaPanelVisibilityListener:Lcom/android/systemui/qs/bar/QSMediaPlayerBar$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    sget-object v0, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 54
    .line 55
    const v3, 0x7f0a0658

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/media/SecMediaHost;->addMediaFrame(Landroid/view/View;Lcom/android/systemui/media/MediaType;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerSize(Lcom/android/systemui/media/MediaType;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-lez p1, :cond_0

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    .line 2
    .line 3
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4
    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iput p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mCurrentOrientation:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->updateBarHeight()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    .line 26
    .line 27
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 28
    .line 29
    iget v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarBottomMargin:I

    .line 30
    .line 31
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecMediaHost;->onStateChanged(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setCallback(Lcom/android/systemui/qs/bar/BarController$4;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaBarCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 4
    .line 5
    return-void
.end method

.method public final setListening(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    sget-object v0, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaType;->getSupportExpandable()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    .line 17
    .line 18
    if-ne v1, p1, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mPlayerBarExpandHelper:Lcom/android/systemui/media/MediaPlayerBarExpandHelper;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerBarExpandHelper;->setPlayerBarExpansion()V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaHost;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eq p1, v2, :cond_2

    .line 37
    .line 38
    move p1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move p1, v1

    .line 41
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/media/SecMediaHost;->getMediaPlayerNum(ZLcom/android/systemui/media/MediaType;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-lez v3, :cond_3

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 54
    .line 55
    new-instance v4, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;

    .line 56
    .line 57
    invoke-direct {v4, p1, v2}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;-><init>(ZI)V

    .line 58
    .line 59
    .line 60
    invoke-static {v3, v4}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    .line 61
    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 66
    .line 67
    invoke-virtual {v3, v2, v1, v0}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/media/SecMediaHost;->mLocalListening:Z

    .line 71
    .line 72
    :cond_4
    :goto_1
    return-void
.end method

.method public final setQsFullyExpanded(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mMediaHost:Lcom/android/systemui/media/SecMediaHost;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mMediaPlayerData:Ljava/util/HashMap;

    .line 6
    .line 7
    sget-object v0, Lcom/android/systemui/media/MediaType;->QS:Lcom/android/systemui/media/MediaType;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda13;-><init>(ZI)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/android/systemui/media/SecMediaHost;->iteratePlayers(Lcom/android/systemui/media/SecMediaPlayerData;Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final updateBarHeight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f070ed2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mExpandedHeight:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f070ec5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->mBarBottomMargin:I

    .line 35
    .line 36
    return-void
.end method
