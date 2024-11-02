.class public final Lcom/android/systemui/qs/bar/BrightnessBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/bar/TileHostable;


# static fields
.field public static final EMERGENCY_MODE_URI:Landroid/net/Uri;


# instance fields
.field public mBarBottomMargin:I

.field public mBrightnessBarContainer:Landroid/widget/LinearLayout;

.field public mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field public final mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

.field public mBrightnessDetailIcon:Landroid/widget/ImageView;

.field public mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public final mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

.field public mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field public final mBrightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

.field public final mContext:Landroid/content/Context;

.field public mIsAllowedOnTop:Z

.field public final mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

.field public final mQsPanelControllerLazy:Ldagger/Lazy;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

.field public final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsListener:Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;

.field public mSliderContainer:Landroid/widget/RelativeLayout;

.field public mTileLayout:Landroid/widget/LinearLayout;

.field public final mTiles:Ljava/util/ArrayList;

.field public final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "emergency_mode"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/QSBackupRestoreManager;Ldagger/Lazy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/settings/brightness/BrightnessController$Factory;",
            "Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/qs/QSBackupRestoreManager;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    .line 6
    .line 7
    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v2, Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$2;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 33
    .line 34
    iput-object p4, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    .line 35
    .line 36
    iput-object p5, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 37
    .line 38
    iput-object p6, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 39
    .line 40
    iput-object p7, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 41
    .line 42
    iput-object p8, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQsPanelControllerLazy:Ldagger/Lazy;

    .line 43
    .line 44
    const-class p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 53
    .line 54
    const-string p1, "brightness_on_top"

    .line 55
    .line 56
    filled-new-array {p1}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p5, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p2, Lcom/android/systemui/qs/bar/BrightnessBar;->EMERGENCY_MODE_URI:Landroid/net/Uri;

    .line 64
    .line 65
    filled-new-array {p2}, [Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p6, v1, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x1

    .line 73
    invoke-virtual {p5, p2, p1}, Lcom/android/systemui/tuner/TunerService;->getValue(ILjava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    move v0, p2

    .line 80
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 81
    .line 82
    new-instance p1, Lcom/android/systemui/qs/bar/BrightnessBar$1;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/BrightnessBar$1;-><init>(Lcom/android/systemui/qs/bar/BrightnessBar;)V

    .line 85
    .line 86
    .line 87
    const-string p0, "BrightnessOnTop"

    .line 88
    .line 89
    invoke-virtual {p7, p0, p1}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateTileLayoutSizeMargins()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->tilesOnMirror:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mStopListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$3;

    .line 25
    .line 26
    iget-object v3, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput-boolean v2, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mControlValueInitialized:Z

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 39
    .line 40
    check-cast v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 41
    .line 42
    iput-object v0, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQSBackupRestoreManager:Lcom/android/systemui/qs/QSBackupRestoreManager;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/systemui/qs/QSBackupRestoreManager;->mQSBnRMap:Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "BrightnessOnTop"

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsListener:Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->removeAllTiles()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final getBarHeight()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    .line 23
    .line 24
    add-int/2addr v0, p0

    .line 25
    return v0

    .line 26
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const v0, 0x7f0700fc

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const v0, 0x7f0700fa

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    :goto_0
    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 14
    .line 15
    const v0, 0x7f0a01a6

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 27
    .line 28
    const v0, 0x7f0a01b2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 40
    .line 41
    const v0, 0x7f0a0a51

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {p1, v2, v0, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 73
    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 76
    .line 77
    iget-object p1, v5, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 78
    .line 79
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 80
    .line 81
    iput-object p0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mToggleDetailListener:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessControllerFactory:Lcom/android/systemui/settings/brightness/BrightnessController$Factory;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 89
    .line 90
    iget-object v4, p1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    iget-object v6, p1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 93
    .line 94
    iget-object v7, p1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 95
    .line 96
    iget-object v8, p1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    iget-object v9, p1, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->mBackgroundHandler:Landroid/os/Handler;

    .line 99
    .line 100
    move-object v3, v0

    .line 101
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/settings/brightness/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/brightness/ToggleSlider;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 105
    .line 106
    iget-object v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mStartListeningRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 114
    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 120
    .line 121
    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSecBrightnessMirrorControllerProviderLazy:Ldagger/Lazy;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/android/systemui/statusbar/phone/SecBrightnessMirrorControllerProvider;

    .line 131
    .line 132
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorListener:Lcom/android/systemui/qs/bar/BrightnessBar$2;

    .line 139
    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 143
    .line 144
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 148
    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    .line 160
    .line 161
    .line 162
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 163
    .line 164
    if-nez v0, :cond_5

    .line 165
    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    move v4, v2

    .line 178
    :goto_0
    if-ge v4, v3, :cond_5

    .line 179
    .line 180
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 185
    .line 186
    iget-object v5, v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 187
    .line 188
    iget-object v6, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_5
    new-instance v0, Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mQsPanelControllerLazy:Ldagger/Lazy;

    .line 199
    .line 200
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/android/systemui/qs/SecQSPanelController;

    .line 205
    .line 206
    invoke-direct {v0, v1, v3, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetail;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 210
    .line 211
    const v1, 0x7f0a01a8

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Landroid/widget/ImageView;

    .line 219
    .line 220
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 221
    .line 222
    new-instance v1, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;

    .line 223
    .line 224
    invoke-direct {v1, v0}, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 231
    .line 232
    const/4 v0, 0x1

    .line 233
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessDetail()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateHeightMargins()V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 246
    .line 247
    check-cast p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 248
    .line 249
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 250
    .line 251
    iget-boolean v0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 252
    .line 253
    if-eq v0, p0, :cond_6

    .line 254
    .line 255
    iput-boolean p0, p1, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mIsCollapsed:Z

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateSliderResources()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v2}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->setDualSeekBarResources(Z)V

    .line 261
    .line 262
    .line 263
    :cond_6
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateBrightnessMirror()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateHeightMargins()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onKnoxPolicyChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "onTuningChanged() : key = "

    .line 2
    .line 3
    const-string v1, ", newValue = "

    .line 4
    .line 5
    invoke-static {v0, p1, v1, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v0, "brightness_on_top"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 37
    .line 38
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p2, "onTuningChanged() : BRIGHTNESS_ON_TOP = "

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 49
    .line 50
    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final onUiModeChanged()V
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
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const v2, 0x7f080ece

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x101009e

    .line 29
    .line 30
    .line 31
    filled-new-array {v1}, [I

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 43
    .line 44
    const/16 v0, 0x9

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final removeAllTiles()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->tilesOnMirror:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    if-ge v3, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 29
    .line 30
    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 42
    .line 43
    iget-object v4, v4, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 44
    .line 45
    invoke-interface {v4, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mExpanded:Z

    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTiles:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    .line 30
    .line 31
    invoke-interface {v2, p0, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
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
    cmpg-float p1, p1, v0

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateVisibility()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final updateBrightnessDetail()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "BrightnessDetail disabled = "

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v4, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v4, v3

    .line 30
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 34
    .line 35
    if-eqz p0, :cond_5

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const v1, 0x7f0a01a9

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-nez p0, :cond_3

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    if-eqz v0, :cond_4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    move v2, v3

    .line 56
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_5
    :goto_2
    return-void
.end method

.method public final updateBrightnessMirror()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 6
    .line 7
    iput-object v0, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mToggleSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 10
    .line 11
    iput-object v0, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->setMax(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->mMirror:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 29
    .line 30
    iget-object v2, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 31
    .line 32
    check-cast v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mSlider:Lcom/android/systemui/settings/brightness/ToggleSeekBar;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-interface {v0, v2}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setValue(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 44
    .line 45
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 46
    .line 47
    new-instance v2, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessSliderController;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 56
    .line 57
    check-cast v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->mListener:Lcom/android/systemui/settings/brightness/BrightnessSliderController$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->updateSliderHeight()V

    .line 67
    .line 68
    .line 69
    :cond_2
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
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    const/4 v3, -0x1

    .line 20
    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 24
    .line 25
    if-nez v1, :cond_5

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    const v4, 0x7f080f65

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v4, 0x7f070091

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 51
    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const v6, 0x7f0700fc

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const v6, 0x7f0700fa

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    :goto_0
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 78
    .line 79
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 80
    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 92
    .line 93
    const/4 v5, 0x2

    .line 94
    if-ne v1, v5, :cond_2

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const/16 v5, 0x10

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessBarContainer:Landroid/widget/LinearLayout;

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 114
    .line 115
    .line 116
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessBarHeight(Landroid/content/Context;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-nez v4, :cond_4

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    const v3, 0x7f0700fd

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    :cond_4
    :goto_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 151
    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 153
    .line 154
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BrightnessBar;->updateTileLayoutSizeMargins()V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getQuickQSCommonBottomMargin(Landroid/content/Context;)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iput v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBarBottomMargin:I

    .line 166
    .line 167
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 168
    .line 169
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessIconSize(Landroid/content/Context;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessIconSize(Landroid/content/Context;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessIconSize(Landroid/content/Context;)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 187
    .line 188
    const v4, 0x7f0a01a9

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 196
    .line 197
    iget-object v5, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 198
    .line 199
    if-eqz v5, :cond_6

    .line 200
    .line 201
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .line 207
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 208
    .line 209
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 210
    .line 211
    iget-object v6, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    .line 212
    .line 213
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    :cond_6
    if-eqz v3, :cond_7

    .line 217
    .line 218
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 223
    .line 224
    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 225
    .line 226
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 227
    .line 228
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .line 230
    .line 231
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    .line 232
    .line 233
    const v5, 0x7f0a01aa

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    .line 248
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 249
    .line 250
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 251
    .line 252
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .line 254
    .line 255
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->updateSliderHeight()V

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 261
    .line 262
    if-eqz v3, :cond_9

    .line 263
    .line 264
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateIconSize(I)V

    .line 265
    .line 266
    .line 267
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/widget/FrameLayout;

    .line 270
    .line 271
    if-nez p0, :cond_8

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 279
    .line 280
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 285
    .line 286
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 287
    .line 288
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 289
    .line 290
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .line 292
    .line 293
    :cond_9
    :goto_4
    return-void
.end method

.method public final updateTileLayoutSizeMargins()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->isPortrait(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, -0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v3, -0x1

    .line 33
    :goto_1
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutHeight(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const v4, 0x7f070115

    .line 46
    .line 47
    .line 48
    const v5, 0x7f070114

    .line 49
    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :goto_2
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutRightMargin(Landroid/content/Context;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    const v6, 0x7f070110

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const v6, 0x7f07010f

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    :goto_3
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 94
    .line 95
    iget-object v3, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v3, 0x1

    .line 107
    if-le v1, v3, :cond_6

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    mul-int/lit8 v8, v8, 0x2

    .line 145
    .line 146
    sub-int/2addr v7, v8

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    if-eqz v2, :cond_4

    .line 152
    .line 153
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto :goto_4

    .line 158
    :cond_4
    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    :goto_4
    sub-int/2addr v7, v4

    .line 163
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutRightMargin(Landroid/content/Context;)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    sub-int/2addr v7, v4

    .line 168
    invoke-static {v0}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getBrightnessTileLayoutBetweenMargin(Landroid/content/Context;)I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    sub-int/2addr v7, v4

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    const v2, 0x7f070108

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    goto :goto_5

    .line 187
    :cond_5
    const v2, 0x7f070107

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    :goto_5
    sub-int/2addr v7, v0

    .line 195
    const v0, 0x7f07010d

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    mul-int/lit8 v0, v0, 0x2

    .line 203
    .line 204
    sub-int/2addr v7, v0

    .line 205
    const v0, 0x7f07010e

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    mul-int/lit8 v0, v0, 0x2

    .line 213
    .line 214
    sub-int/2addr v7, v0

    .line 215
    const v0, 0x7f070118

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    mul-int/lit8 v0, v0, 0x4

    .line 223
    .line 224
    sub-int/2addr v7, v0

    .line 225
    check-cast v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView;

    .line 226
    .line 227
    iget-object v0, v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 228
    .line 229
    int-to-double v1, v7

    .line 230
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    mul-double/2addr v4, v1

    .line 236
    double-to-int v4, v4

    .line 237
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mTileLayout:Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    check-cast p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;

    .line 247
    .line 248
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    .line 249
    .line 250
    const-wide v3, 0x3fd999999999999aL    # 0.4

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    mul-double/2addr v1, v3

    .line 256
    double-to-int v0, v1

    .line 257
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 258
    .line 259
    .line 260
    :cond_6
    return-void
.end method

.method public final updateVisibility()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomQuickPanelButtons:I

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    and-int/2addr v0, v3

    .line 21
    if-eq v0, v3, :cond_0

    .line 22
    .line 23
    move v0, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move v0, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BrightnessBar;->mIsAllowedOnTop:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v1, v2

    .line 43
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 44
    .line 45
    if-eq v0, v1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    .line 48
    .line 49
    .line 50
    :cond_4
    return-void
.end method
