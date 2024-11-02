.class public final Lcom/android/systemui/controls/ui/CustomControlsActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final blurFacade:Lcom/android/systemui/controls/ui/util/BlurFacade;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

.field public parent:Landroid/view/ViewGroup;

.field public final uiController:Lcom/android/systemui/controls/ui/ControlsUiController;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/ControlsUiController;Lcom/android/systemui/controls/ui/CustomControlsUiController;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;Lcom/android/systemui/controls/ui/util/BlurFacade;Lcom/android/systemui/controls/ui/util/AUIFacade;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4, p2, p3, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    .line 13
    .line 14
    iput-object p9, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->blurFacade:Lcom/android/systemui/controls/ui/util/BlurFacade;

    .line 15
    .line 16
    iput-object p10, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 17
    .line 18
    const-string p1, "CustomControlsActivity"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    const-string/jumbo v0, "onBackPressed"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onCreate"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsFragmentFactory:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    .line 14
    .line 15
    iput-object v2, v1, Landroidx/fragment/app/FragmentManager;->mFragmentFactory:Landroidx/fragment/app/FragmentFactory;

    .line 16
    .line 17
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "lockscreen_show_controls"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v1, v3

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-string v1, "canAccessLockScreenDevice"

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSecureLocked()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    const p1, 0x7f0d001e

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 60
    .line 61
    .line 62
    const p1, 0x7f0a0bf4

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->ensureMenu()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p1, Landroidx/appcompat/widget/Toolbar;->mMenuView:Landroidx/appcompat/widget/ActionMenuView;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mPresenter:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 83
    .line 84
    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mUseTextItemMode:Z

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowButton:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->mInnerView:Landroid/view/View;

    .line 94
    .line 95
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 103
    :goto_2
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const v1, 0x7f0600cf

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 117
    .line 118
    .line 119
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 126
    .line 127
    .line 128
    :cond_5
    const p1, 0x7f0a009f

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsActivity$onCreate$2$1;

    .line 141
    .line 142
    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/CustomControlsActivity$onCreate$2$1;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 146
    .line 147
    .line 148
    const p1, 0x7f0a00d3

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 156
    .line 157
    invoke-virtual {p1, v3, v3, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 158
    .line 159
    .line 160
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 165
    .line 166
    check-cast p0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->initialize()V

    .line 169
    .line 170
    .line 171
    :cond_6
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    const-string/jumbo v0, "onDestroy"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUI:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->finalize()V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 21
    .line 22
    check-cast v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v1, "CustomControlsUiControllerImpl"

    .line 28
    .line 29
    const-string v2, "clear"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hide(Landroid/view/ViewGroup;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;->onDestroy()V

    .line 46
    .line 47
    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noAppFragment:Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->onDestroy()V

    .line 56
    .line 57
    .line 58
    :cond_3
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->noFavoriteFragment:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 61
    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/fragment/MainFragment;->onDestroy()V

    .line 65
    .line 66
    .line 67
    :cond_4
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    iput-boolean v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    .line 71
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->componentModel:Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 78
    .line 79
    iput-object v3, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    .line 80
    .line 81
    sget-object v3, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object v3, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT:Landroid/content/ComponentName;

    .line 87
    .line 88
    iput-object v3, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    .line 89
    .line 90
    iput-boolean v2, v4, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    .line 91
    .line 92
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->models:Ljava/util/List;

    .line 93
    .line 94
    check-cast v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 97
    .line 98
    .line 99
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 100
    .line 101
    if-eqz v2, :cond_5

    .line 102
    .line 103
    sget-object v3, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->controlViewHolders:Ljava/util/Map;

    .line 104
    .line 105
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 108
    .line 109
    .line 110
    iget-object v2, v2, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->customControlActionCoordinator:Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;

    .line 111
    .line 112
    check-cast v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 113
    .line 114
    iput-object v1, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    .line 115
    .line 116
    :cond_5
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 117
    .line 118
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->Companion:Lcom/android/systemui/controls/ui/RenderInfo$Companion;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->iconMap:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 126
    .line 127
    .line 128
    sget-object v2, Lcom/android/systemui/controls/ui/RenderInfo;->appIconMap:Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 131
    .line 132
    .line 133
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    .line 134
    .line 135
    if-eqz v2, :cond_7

    .line 136
    .line 137
    sget-object v2, Lcom/android/systemui/controls/ui/CustomRenderInfo;->Companion:Lcom/android/systemui/controls/ui/CustomRenderInfo$Companion;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_MAIN_ACTION_ICON:Z

    .line 143
    .line 144
    if-eqz v2, :cond_6

    .line 145
    .line 146
    sget-object v2, Lcom/android/systemui/controls/ui/CustomRenderInfo;->actionIconMap:Landroid/util/SparseArray;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 149
    .line 150
    .line 151
    :cond_6
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_CUSTOM_STATUS:Z

    .line 152
    .line 153
    if-eqz v2, :cond_7

    .line 154
    .line 155
    sget-object v2, Lcom/android/systemui/controls/ui/CustomRenderInfo;->statusIconDrawableMap:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 158
    .line 159
    .line 160
    :cond_7
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 161
    .line 162
    if-eqz v2, :cond_b

    .line 163
    .line 164
    new-instance v2, Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;

    .line 165
    .line 166
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 167
    .line 168
    if-eqz v3, :cond_8

    .line 169
    .line 170
    const v4, 0x7f0a0417

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    goto :goto_0

    .line 178
    :cond_8
    move-object v3, v1

    .line 179
    :goto_0
    instance-of v4, v3, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    .line 180
    .line 181
    if-eqz v4, :cond_9

    .line 182
    .line 183
    sget-object v3, Lcom/android/systemui/controls/ui/util/SALogger$Screen$IntroNoAppsToShow;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$IntroNoAppsToShow;

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_9
    instance-of v3, v3, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 187
    .line 188
    if-eqz v3, :cond_a

    .line 189
    .line 190
    sget-object v3, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_a
    sget-object v3, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    .line 194
    .line 195
    :goto_1
    invoke-direct {v2, v3}, Lcom/android/systemui/controls/ui/util/SALogger$Event$QuitDevices;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 196
    .line 197
    .line 198
    iget-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 201
    .line 202
    .line 203
    :cond_b
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    .line 204
    .line 205
    if-eqz v2, :cond_c

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    .line 208
    .line 209
    .line 210
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->verificationStructureInfos:Ljava/util/List;

    .line 211
    .line 212
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 213
    .line 214
    .line 215
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 216
    .line 217
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->allComponentInfo:Ljava/util/List;

    .line 218
    .line 219
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customControlsController:Ldagger/Lazy;

    .line 220
    .line 221
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 226
    .line 227
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 228
    .line 229
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->customBindingController:Lcom/android/systemui/controls/controller/CustomControlsBindingController;

    .line 230
    .line 231
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 232
    .line 233
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    .line 234
    .line 235
    if-eqz v2, :cond_d

    .line 236
    .line 237
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;->loadedControls:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 240
    .line 241
    .line 242
    :cond_d
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 243
    .line 244
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 245
    .line 246
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 247
    .line 248
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 249
    .line 250
    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->Companion:Lcom/android/systemui/controls/ui/SelectedItem$Companion;

    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    sget-object v2, Lcom/android/systemui/controls/ui/SelectedItem;->EMPTY_SELECTION_COMPONENT:Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 256
    .line 257
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 258
    .line 259
    iput-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 260
    .line 261
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    .line 262
    .line 263
    .line 264
    return-void
.end method

.method public final onHomeKeyPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onHomeKeyPressed()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onRecentAppsKeyPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onRecentAppsKeyPressed()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SMARTTHINGS_UNBIND:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 9
    .line 10
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->unsubscribeAndUnbindIfNecessary()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v1, "onStart"

    .line 4
    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->blurFacade:Lcom/android/systemui/controls/ui/util/BlurFacade;

    .line 19
    .line 20
    check-cast v2, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/android/systemui/blur/QSColorCurve;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v2, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v7, "SolidColorViewTag"

    .line 44
    .line 45
    const v8, 0x7f060484

    .line 46
    .line 47
    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/ViewGroup;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->removeCustomBackgroundView(Landroid/view/ViewGroup;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v3, v7, v2, v6}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->addView(Landroid/view/ViewGroup;Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :cond_0
    iget-object v4, v2, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 69
    .line 70
    check-cast v4, Lcom/android/systemui/controls/util/ControlsRuneWrapperImpl;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_BLUR:Z

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    new-instance v4, Landroid/view/SemBlurInfo$Builder;

    .line 80
    .line 81
    invoke-direct {v4, v6}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    .line 82
    .line 83
    .line 84
    iget v9, v3, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 85
    .line 86
    float-to-int v9, v9

    .line 87
    invoke-virtual {v4, v9}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iget v11, v3, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    .line 92
    .line 93
    iget v12, v3, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 94
    .line 95
    iget v13, v3, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 96
    .line 97
    iget v14, v3, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 98
    .line 99
    iget v15, v3, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 100
    .line 101
    iget v3, v3, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 102
    .line 103
    move/from16 v16, v3

    .line 104
    .line 105
    invoke-virtual/range {v10 .. v16}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    .line 113
    .line 114
    if-nez v4, :cond_2

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget-object v9, v2, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->multiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 121
    .line 122
    invoke-virtual {v9}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    const/4 v10, 0x2

    .line 127
    if-ne v9, v10, :cond_1

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    .line 135
    const/high16 v10, 0x100000

    .line 136
    .line 137
    or-int/2addr v9, v10

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 144
    .line 145
    const v10, -0x100001

    .line 146
    .line 147
    .line 148
    and-int/2addr v9, v10

    .line 149
    :goto_0
    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 150
    .line 151
    :cond_2
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4, v3}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Landroid/view/ViewGroup;

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->removeCustomBackgroundView(Landroid/view/ViewGroup;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 184
    .line 185
    and-int/lit8 v4, v4, 0x20

    .line 186
    .line 187
    if-eqz v4, :cond_3

    .line 188
    .line 189
    move v4, v5

    .line 190
    goto :goto_1

    .line 191
    :cond_3
    move v4, v6

    .line 192
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    const-string v9, "ff5d5d5d"

    .line 197
    .line 198
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-nez v2, :cond_4

    .line 203
    .line 204
    if-nez v4, :cond_4

    .line 205
    .line 206
    move v2, v5

    .line 207
    goto :goto_2

    .line 208
    :cond_4
    move v2, v6

    .line 209
    :goto_2
    if-eqz v2, :cond_9

    .line 210
    .line 211
    invoke-virtual {v0, v8}, Landroid/content/Context;->getColor(I)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-static {v3, v7, v2, v6}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->addView(Landroid/view/ViewGroup;Ljava/lang/String;II)V

    .line 216
    .line 217
    .line 218
    const/16 v2, 0xd

    .line 219
    .line 220
    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    const-string v4, "DimViewTag"

    .line 225
    .line 226
    invoke-static {v3, v4, v2, v5}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->addView(Landroid/view/ViewGroup;Ljava/lang/String;II)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :cond_5
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_CAPTURED_BLUR:Z

    .line 232
    .line 233
    if-eqz v4, :cond_8

    .line 234
    .line 235
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Landroid/view/ViewGroup;

    .line 240
    .line 241
    invoke-virtual {v2, v4}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->removeCustomBackgroundView(Landroid/view/ViewGroup;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;->takeScreenshot$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const-string v4, "BlurFacadeImpl"

    .line 249
    .line 250
    if-eqz v2, :cond_7

    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    check-cast v7, Landroid/view/ViewGroup;

    .line 257
    .line 258
    new-instance v8, Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 259
    .line 260
    invoke-direct {v8}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    .line 261
    .line 262
    .line 263
    const/4 v9, 0x0

    .line 264
    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setProportionalSaturation(F)V

    .line 265
    .line 266
    .line 267
    iget v9, v3, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    .line 268
    .line 269
    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 270
    .line 271
    .line 272
    iget v9, v3, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    .line 273
    .line 274
    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveLevel(F)V

    .line 275
    .line 276
    .line 277
    iget v9, v3, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    .line 278
    .line 279
    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinX(F)V

    .line 280
    .line 281
    .line 282
    iget v9, v3, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    .line 283
    .line 284
    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxX(F)V

    .line 285
    .line 286
    .line 287
    iget v9, v3, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    .line 288
    .line 289
    invoke-virtual {v8, v9}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMinY(F)V

    .line 290
    .line 291
    .line 292
    iget v3, v3, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    .line 293
    .line 294
    invoke-virtual {v8, v3}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setCurveMaxY(F)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8, v2}, Lcom/samsung/android/graphics/SemGfxImageFilter;->applyToBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    const-string v3, "BlurViewTag"

    .line 302
    .line 303
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    if-eqz v8, :cond_6

    .line 308
    .line 309
    const-string v2, "blurView is already done"

    .line 310
    .line 311
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_6
    new-instance v8, Landroid/view/View;

    .line 316
    .line 317
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-direct {v3, v9, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v8, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    .line 334
    .line 335
    :goto_3
    invoke-virtual {v7, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 336
    .line 337
    .line 338
    const-string v2, "apply captured blur for controls "

    .line 339
    .line 340
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_7
    const-string v2, "apply captured blur for controls (capture failed)"

    .line 345
    .line 346
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_8
    const v2, 0x7f0600a8

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 354
    .line 355
    .line 356
    :cond_9
    :goto_4
    invoke-virtual {v1, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 360
    .line 361
    .line 362
    const v1, 0x7f0a0417

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    check-cast v1, Landroid/view/ViewGroup;

    .line 370
    .line 371
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 372
    .line 373
    if-eqz v1, :cond_e

    .line 374
    .line 375
    new-instance v2, Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1$1;

    .line 376
    .line 377
    invoke-direct {v2, v0}, Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsActivity;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->customUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 389
    .line 390
    check-cast v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    const-string v7, "CustomControlsUiControllerImpl"

    .line 396
    .line 397
    const-string/jumbo v8, "show()"

    .line 398
    .line 399
    .line 400
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    const-wide/16 v7, 0x1000

    .line 404
    .line 405
    const-string v9, "CustomControlsUiControllerImpl#show"

    .line 406
    .line 407
    invoke-static {v7, v8, v9}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iput-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->parent:Landroid/view/ViewGroup;

    .line 411
    .line 412
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onDismiss:Ljava/lang/Runnable;

    .line 413
    .line 414
    iput-object v3, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->activityContext:Landroid/content/Context;

    .line 415
    .line 416
    iput-object v4, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 417
    .line 418
    iput-boolean v6, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hidden:Z

    .line 419
    .line 420
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 421
    .line 422
    check-cast v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 423
    .line 424
    iput-object v3, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->activityContext:Landroid/content/Context;

    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->loadComponentInfo()V

    .line 427
    .line 428
    .line 429
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 430
    .line 431
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsController;

    .line 436
    .line 437
    sget-object v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;->INSTANCE:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$1;

    .line 438
    .line 439
    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 440
    .line 441
    iget-boolean v3, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 442
    .line 443
    if-nez v3, :cond_a

    .line 444
    .line 445
    move v5, v6

    .line 446
    goto :goto_5

    .line 447
    :cond_a
    new-instance v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addSeedingFavoritesCallback$1;

    .line 448
    .line 449
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addSeedingFavoritesCallback$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;)V

    .line 450
    .line 451
    .line 452
    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 453
    .line 454
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 455
    .line 456
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 457
    .line 458
    .line 459
    :goto_5
    if-eqz v5, :cond_b

    .line 460
    .line 461
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$2;

    .line 462
    .line 463
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$2;-><init>(Ljava/lang/Object;)V

    .line 464
    .line 465
    .line 466
    new-instance v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;

    .line 467
    .line 468
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lkotlin/jvm/functions/Function2;)V

    .line 469
    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->needToShowNonMainView()Z

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    if-eqz v1, :cond_c

    .line 477
    .line 478
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$3;

    .line 479
    .line 480
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$3;-><init>(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    new-instance v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;

    .line 484
    .line 485
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lkotlin/jvm/functions/Function2;)V

    .line 486
    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_c
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$4;

    .line 490
    .line 491
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$show$4;-><init>(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    new-instance v2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;

    .line 495
    .line 496
    invoke-direct {v2, v0, v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$createCallback$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lkotlin/jvm/functions/Function2;)V

    .line 497
    .line 498
    .line 499
    :goto_6
    iput-object v2, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 500
    .line 501
    iget-object v1, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 502
    .line 503
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 508
    .line 509
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->listingCallback:Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    .line 510
    .line 511
    if-eqz v0, :cond_d

    .line 512
    .line 513
    goto :goto_7

    .line 514
    :cond_d
    const/4 v0, 0x0

    .line 515
    :goto_7
    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 516
    .line 517
    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    :cond_e
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    const-string/jumbo v0, "onStop"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->parent:Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 17
    .line 18
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->hide(Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
