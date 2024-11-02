.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/NavBarStore;


# instance fields
.field public final bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public handleEventLoggingEnabled:Z

.field public final hintAnimatorFactory:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;

.field public final interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

.field public final layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

.field public final logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

.field public loggingDepth:I

.field public final mainContext:Landroid/content/Context;

.field public final navBarProxy:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

.field public final navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

.field public final navDependencies:Ljava/util/HashMap;

.field public final navStateManager:Ljava/util/HashMap;

.field public packs:Ljava/util/List;

.field public final pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

.field public taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/util/SettingsHelper;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;Lcom/android/systemui/model/SysUiState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mainContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->hintAnimatorFactory:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 23
    .line 24
    new-instance p2, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance p2, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    .line 37
    .line 38
    new-instance p2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    .line 44
    .line 45
    new-instance p2, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 46
    .line 47
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 51
    .line 52
    sget-object p3, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object p3, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 58
    .line 59
    if-nez p3, :cond_0

    .line 60
    .line 61
    new-instance p3, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 62
    .line 63
    invoke-direct {p3}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object p3, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 67
    .line 68
    :cond_0
    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarProxy:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->initDisplayDependenciesIfNeeded(ILandroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 78
    .line 79
    sput-boolean p0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_ENABLED:Z

    .line 80
    .line 81
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 82
    .line 83
    sput-boolean p0, Lcom/android/systemui/navigationbar/BasicRuneWrapper;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 84
    .line 85
    const-class p0, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 86
    .line 87
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcom/samsung/systemui/splugins/SPluginManager;

    .line 92
    .line 93
    iget-object p1, p2, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginListener:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager$pluginListener$1;

    .line 94
    .line 95
    const-class p2, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 96
    .line 97
    const/4 p3, 0x0

    .line 98
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    .line 2
    .line 3
    iget v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "apply("

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, ") "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarIconAndHints;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 49
    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_16

    .line 60
    .line 61
    :cond_1
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReevaluateNavBar;

    .line 62
    .line 63
    const-class v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_16

    .line 77
    .line 78
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarOpaqueColor;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 83
    .line 84
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 89
    .line 90
    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 91
    .line 92
    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    check-cast p2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 102
    .line 103
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_16

    .line 113
    .line 114
    :cond_3
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ReinflateNavBar;

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 119
    .line 120
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavBarLayout()V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_16

    .line 130
    .line 131
    :cond_4
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarIconMarquee;

    .line 132
    .line 133
    iget-object v4, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 134
    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object p1, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 138
    .line 139
    const-class p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 140
    .line 141
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 146
    .line 147
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 148
    .line 149
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 150
    .line 151
    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->marqueeNavigationBarIcon(II)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_16

    .line 155
    .line 156
    :cond_5
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$InvalidateRemoteView;

    .line 157
    .line 158
    if-eqz v0, :cond_6

    .line 159
    .line 160
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 161
    .line 162
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRemoteViewContainer()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_16

    .line 172
    .line 173
    :cond_6
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;

    .line 174
    .line 175
    const/4 v5, 0x1

    .line 176
    const/4 v6, 0x4

    .line 177
    const-class v7, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 178
    .line 179
    if-eqz v0, :cond_c

    .line 180
    .line 181
    iget p1, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 182
    .line 183
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;

    .line 184
    .line 185
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 190
    .line 191
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 192
    .line 193
    iget-object v2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->leftRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 194
    .line 195
    iget-object v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->rightRemoteViewContainer:Landroid/widget/LinearLayout;

    .line 196
    .line 197
    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    .line 198
    .line 199
    .line 200
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->contextualButtonVisible:Z

    .line 201
    .line 202
    if-eqz p2, :cond_5b

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 209
    .line 210
    invoke-virtual {p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 215
    .line 216
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 217
    .line 218
    if-nez p2, :cond_8

    .line 219
    .line 220
    iget-object p1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 221
    .line 222
    if-nez p1, :cond_7

    .line 223
    .line 224
    goto/16 :goto_16

    .line 225
    .line 226
    :cond_7
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_16

    .line 230
    .line 231
    :cond_8
    if-ne p1, v5, :cond_a

    .line 232
    .line 233
    iget-object p1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    .line 234
    .line 235
    if-nez p1, :cond_9

    .line 236
    .line 237
    goto/16 :goto_16

    .line 238
    .line 239
    :cond_9
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_16

    .line 243
    .line 244
    :cond_a
    iget-object p1, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    .line 245
    .line 246
    if-nez p1, :cond_b

    .line 247
    .line 248
    goto/16 :goto_16

    .line 249
    .line 250
    :cond_b
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_16

    .line 254
    .line 255
    :cond_c
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;

    .line 256
    .line 257
    const/4 v8, 0x0

    .line 258
    if-eqz v0, :cond_f

    .line 259
    .line 260
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 265
    .line 266
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;

    .line 267
    .line 268
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 269
    .line 270
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewDarkIntensity:F

    .line 271
    .line 272
    iget v0, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    .line 273
    .line 274
    cmpg-float v0, v0, p2

    .line 275
    .line 276
    if-nez v0, :cond_d

    .line 277
    .line 278
    goto :goto_0

    .line 279
    :cond_d
    move v5, v8

    .line 280
    :goto_0
    if-nez v5, :cond_5b

    .line 281
    .line 282
    iput p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->darkIntensity:F

    .line 283
    .line 284
    iget-object p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 285
    .line 286
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_e

    .line 295
    .line 296
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 301
    .line 302
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyTint(Landroid/view/View;)V

    .line 305
    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_e
    iget-object p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 309
    .line 310
    invoke-virtual {p2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_5b

    .line 319
    .line 320
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 325
    .line 326
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyTint(Landroid/view/View;)V

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_f
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;

    .line 333
    .line 334
    if-eqz v0, :cond_18

    .line 335
    .line 336
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 341
    .line 342
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;

    .line 343
    .line 344
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewShortcut;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 345
    .line 346
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 347
    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    iget-object v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    .line 352
    .line 353
    iget v2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    .line 354
    .line 355
    iget-object v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    .line 356
    .line 357
    if-eqz v3, :cond_17

    .line 358
    .line 359
    new-instance v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 360
    .line 361
    iget-object v6, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->context:Landroid/content/Context;

    .line 362
    .line 363
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    .line 364
    .line 365
    invoke-direct {v4, v6, v0, v3, p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getNavBarStore()Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 373
    .line 374
    invoke-virtual {p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 375
    .line 376
    .line 377
    move-result-object p2

    .line 378
    iget-object v0, v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->removeRemoteView(ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    if-eqz v0, :cond_10

    .line 384
    .line 385
    const-string v3, "honeyboard"

    .line 386
    .line 387
    invoke-static {v0, v3, v8}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-ne v0, v5, :cond_10

    .line 392
    .line 393
    move v0, v5

    .line 394
    goto :goto_3

    .line 395
    :cond_10
    move v0, v8

    .line 396
    :goto_3
    if-eqz v0, :cond_14

    .line 397
    .line 398
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    .line 399
    .line 400
    if-eqz v0, :cond_13

    .line 401
    .line 402
    if-ne v1, v5, :cond_13

    .line 403
    .line 404
    iget-object v0, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 405
    .line 406
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-nez v0, :cond_13

    .line 411
    .line 412
    iget-object v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 413
    .line 414
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 415
    .line 416
    if-nez v0, :cond_11

    .line 417
    .line 418
    invoke-virtual {p2, v8}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode(Z)Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-eqz v0, :cond_12

    .line 423
    .line 424
    :cond_11
    iget-object v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 425
    .line 426
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 427
    .line 428
    if-eqz v0, :cond_13

    .line 429
    .line 430
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 431
    .line 432
    .line 433
    move-result p2

    .line 434
    if-nez p2, :cond_13

    .line 435
    .line 436
    :cond_12
    move v8, v5

    .line 437
    :cond_13
    iput-boolean v5, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->showInGestureMode:Z

    .line 438
    .line 439
    iput v8, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->adaptivePosition:I

    .line 440
    .line 441
    move v2, v8

    .line 442
    :cond_14
    if-eqz v2, :cond_16

    .line 443
    .line 444
    if-eq v2, v5, :cond_15

    .line 445
    .line 446
    goto :goto_4

    .line 447
    :cond_15
    iget-object p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    .line 448
    .line 449
    invoke-virtual {p2, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_16
    iget-object p2, p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 454
    .line 455
    invoke-virtual {p2, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    :goto_4
    iget-object p2, v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->view:Landroid/view/View;

    .line 459
    .line 460
    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyTint(Landroid/view/View;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_16

    .line 464
    .line 465
    :cond_17
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->removeRemoteView(ILjava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_16

    .line 469
    .line 470
    :cond_18
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarNormalStyle;

    .line 471
    .line 472
    const v7, 0x7f0a072a

    .line 473
    .line 474
    .line 475
    const/16 v9, 0x8

    .line 476
    .line 477
    const-class v10, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 478
    .line 479
    if-eqz v0, :cond_19

    .line 480
    .line 481
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 482
    .line 483
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object p1

    .line 487
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 488
    .line 489
    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 494
    .line 495
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 496
    .line 497
    .line 498
    move-result p2

    .line 499
    if-eqz p2, :cond_5b

    .line 500
    .line 501
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 502
    .line 503
    .line 504
    move-result-object p2

    .line 505
    invoke-virtual {p2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0, v10, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 516
    .line 517
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_16

    .line 521
    .line 522
    :cond_19
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarSUWStyle;

    .line 523
    .line 524
    if-eqz v0, :cond_1a

    .line 525
    .line 526
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 531
    .line 532
    .line 533
    move-result p2

    .line 534
    if-eqz p2, :cond_5b

    .line 535
    .line 536
    const-class p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 537
    .line 538
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object p2

    .line 542
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 543
    .line 544
    invoke-virtual {p2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object p2

    .line 548
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    .line 549
    .line 550
    invoke-virtual {p2, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0, v10, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 561
    .line 562
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_16

    .line 566
    .line 567
    :cond_1a
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDisabled;

    .line 568
    .line 569
    const/4 v7, 0x0

    .line 570
    if-eqz v0, :cond_1e

    .line 571
    .line 572
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDisabled;

    .line 577
    .line 578
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDisabled;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 579
    .line 580
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->disableSUWBack:Z

    .line 581
    .line 582
    iget v0, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->hints:I

    .line 583
    .line 584
    and-int/2addr v0, v5

    .line 585
    if-eqz v0, :cond_1b

    .line 586
    .line 587
    goto :goto_5

    .line 588
    :cond_1b
    move v5, v8

    .line 589
    :goto_5
    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 590
    .line 591
    if-nez p1, :cond_1c

    .line 592
    .line 593
    goto :goto_6

    .line 594
    :cond_1c
    move-object v7, p1

    .line 595
    :goto_6
    if-nez p2, :cond_1d

    .line 596
    .line 597
    if-nez v5, :cond_1d

    .line 598
    .line 599
    move v6, v8

    .line 600
    :cond_1d
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_16

    .line 604
    .line 605
    :cond_1e
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;

    .line 606
    .line 607
    if-eqz v0, :cond_25

    .line 608
    .line 609
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;

    .line 614
    .line 615
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWDarkIntensity;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 616
    .line 617
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->darkIntensity:F

    .line 618
    .line 619
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    const v1, 0x7f060435

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    const v2, 0x7f060434

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v2, p2, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    check-cast v0, Ljava/lang/Integer;

    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtn:Landroid/widget/ImageView;

    .line 664
    .line 665
    if-nez v1, :cond_1f

    .line 666
    .line 667
    move-object v1, v7

    .line 668
    :cond_1f
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 669
    .line 670
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 671
    .line 672
    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 676
    .line 677
    .line 678
    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtn:Landroid/widget/ImageView;

    .line 679
    .line 680
    if-nez v1, :cond_20

    .line 681
    .line 682
    move-object v1, v7

    .line 683
    :cond_20
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 684
    .line 685
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 686
    .line 687
    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 691
    .line 692
    .line 693
    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yBtn:Landroid/widget/ImageView;

    .line 694
    .line 695
    if-nez v1, :cond_21

    .line 696
    .line 697
    move-object v1, v7

    .line 698
    :cond_21
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    .line 699
    .line 700
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 701
    .line 702
    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 706
    .line 707
    .line 708
    iget-object v0, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 709
    .line 710
    if-nez v0, :cond_22

    .line 711
    .line 712
    move-object v0, v7

    .line 713
    :cond_22
    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 714
    .line 715
    .line 716
    iget-object v0, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->backAltRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 717
    .line 718
    if-nez v0, :cond_23

    .line 719
    .line 720
    move-object v0, v7

    .line 721
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 722
    .line 723
    .line 724
    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 725
    .line 726
    if-nez p1, :cond_24

    .line 727
    .line 728
    goto :goto_7

    .line 729
    :cond_24
    move-object v7, p1

    .line 730
    :goto_7
    invoke-virtual {v7, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_16

    .line 734
    .line 735
    :cond_25
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWIconHints;

    .line 736
    .line 737
    if-eqz v0, :cond_2b

    .line 738
    .line 739
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWIconHints;

    .line 744
    .line 745
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWIconHints;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 746
    .line 747
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarIconHints:I

    .line 748
    .line 749
    iput p2, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->hints:I

    .line 750
    .line 751
    and-int/2addr p2, v5

    .line 752
    if-eqz p2, :cond_26

    .line 753
    .line 754
    goto :goto_8

    .line 755
    :cond_26
    move v5, v8

    .line 756
    :goto_8
    iget-object p2, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->imeBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 757
    .line 758
    if-nez p2, :cond_27

    .line 759
    .line 760
    move-object p2, v7

    .line 761
    :cond_27
    if-eqz v5, :cond_28

    .line 762
    .line 763
    move v0, v8

    .line 764
    goto :goto_9

    .line 765
    :cond_28
    move v0, v6

    .line 766
    :goto_9
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 767
    .line 768
    .line 769
    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->prevBtnLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 770
    .line 771
    if-nez p1, :cond_29

    .line 772
    .line 773
    goto :goto_a

    .line 774
    :cond_29
    move-object v7, p1

    .line 775
    :goto_a
    if-eqz v5, :cond_2a

    .line 776
    .line 777
    goto :goto_b

    .line 778
    :cond_2a
    move v6, v8

    .line 779
    :goto_b
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_16

    .line 783
    .line 784
    :cond_2b
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWA11yIcon;

    .line 785
    .line 786
    if-eqz v0, :cond_2f

    .line 787
    .line 788
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 789
    .line 790
    .line 791
    move-result-object p1

    .line 792
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWA11yIcon;

    .line 793
    .line 794
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSUWA11yIcon;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 795
    .line 796
    iget-boolean v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yClickable:Z

    .line 797
    .line 798
    iget-object v1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 799
    .line 800
    if-nez v1, :cond_2c

    .line 801
    .line 802
    move-object v1, v7

    .line 803
    :cond_2c
    if-eqz v0, :cond_2d

    .line 804
    .line 805
    move v6, v8

    .line 806
    :cond_2d
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 807
    .line 808
    .line 809
    iget-object p1, p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->a11yLayout:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$NavigationBarSetupWizardButton;

    .line 810
    .line 811
    if-nez p1, :cond_2e

    .line 812
    .line 813
    goto :goto_c

    .line 814
    :cond_2e
    move-object v7, p1

    .line 815
    :goto_c
    iget-boolean p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->a11yLongClickable:Z

    .line 816
    .line 817
    invoke-virtual {v7, p1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 818
    .line 819
    .line 820
    goto/16 :goto_16

    .line 821
    .line 822
    :cond_2f
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;

    .line 823
    .line 824
    iget-object v6, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 825
    .line 826
    if-eqz v0, :cond_31

    .line 827
    .line 828
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;

    .line 829
    .line 830
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarGoneStateFlag;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 831
    .line 832
    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    .line 833
    .line 834
    if-ne p1, v9, :cond_30

    .line 835
    .line 836
    goto :goto_d

    .line 837
    :cond_30
    move v5, v8

    .line 838
    :goto_d
    const-wide p1, 0x800000000L

    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    invoke-virtual {v6, p1, p2, v5}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v6, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 847
    .line 848
    .line 849
    goto/16 :goto_16

    .line 850
    .line 851
    :cond_31
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;

    .line 852
    .line 853
    if-eqz v0, :cond_33

    .line 854
    .line 855
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;

    .line 856
    .line 857
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 858
    .line 859
    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->navBarVisibility:I

    .line 860
    .line 861
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    .line 862
    .line 863
    if-eqz p2, :cond_32

    .line 864
    .line 865
    iget p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 866
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    const-string v3, "Visibility : "

    .line 870
    .line 871
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 882
    .line 883
    .line 884
    :cond_32
    const-class p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 885
    .line 886
    invoke-virtual {p0, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object p2

    .line 890
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 891
    .line 892
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 893
    .line 894
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v0

    .line 898
    check-cast v0, Landroid/os/Handler;

    .line 899
    .line 900
    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;

    .line 901
    .line 902
    invoke-direct {v1, p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 906
    .line 907
    .line 908
    goto/16 :goto_16

    .line 909
    .line 910
    :cond_33
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;

    .line 911
    .line 912
    const-class v9, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 913
    .line 914
    if-eqz v0, :cond_36

    .line 915
    .line 916
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;

    .line 917
    .line 918
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 919
    .line 920
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->edgeBackGestureDisabled:Z

    .line 921
    .line 922
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    .line 923
    .line 924
    if-eqz p2, :cond_34

    .line 925
    .line 926
    iget p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 927
    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    .line 929
    .line 930
    const-string v3, "disabled : "

    .line 931
    .line 932
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 936
    .line 937
    .line 938
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {v2, p2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 943
    .line 944
    .line 945
    :cond_34
    if-nez v1, :cond_35

    .line 946
    .line 947
    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object p2

    .line 951
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 952
    .line 953
    if-eqz p2, :cond_35

    .line 954
    .line 955
    iget-object p2, p2, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 956
    .line 957
    if-eqz p2, :cond_35

    .line 958
    .line 959
    iput-boolean p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    .line 960
    .line 961
    :cond_35
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 962
    .line 963
    if-eqz p2, :cond_5b

    .line 964
    .line 965
    invoke-virtual {p0, v9, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object p2

    .line 969
    check-cast p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 970
    .line 971
    if-eqz p2, :cond_5b

    .line 972
    .line 973
    iget-object p2, p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 974
    .line 975
    if-eqz p2, :cond_5b

    .line 976
    .line 977
    iput-boolean p1, p2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledByPolicy:Z

    .line 978
    .line 979
    goto/16 :goto_16

    .line 980
    .line 981
    :cond_36
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetGestureHintViewGroup;

    .line 982
    .line 983
    const-class v11, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 984
    .line 985
    if-eqz v0, :cond_37

    .line 986
    .line 987
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 988
    .line 989
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 994
    .line 995
    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object p2

    .line 999
    check-cast p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 1000
    .line 1001
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p1

    .line 1009
    iput-object v0, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->homeHandle:Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 1010
    .line 1011
    iput-object p1, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->gestureHintGroup:Lcom/android/systemui/navigationbar/gestural/GestureHintGroup;

    .line 1012
    .line 1013
    goto/16 :goto_16

    .line 1014
    .line 1015
    :cond_37
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateGestureHintVisibility;

    .line 1016
    .line 1017
    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 1018
    .line 1019
    if-eqz v0, :cond_39

    .line 1020
    .line 1021
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureHintEnabled()Z

    .line 1022
    .line 1023
    .line 1024
    move-result p2

    .line 1025
    if-eqz p2, :cond_38

    .line 1026
    .line 1027
    iget-object p2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 1028
    .line 1029
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 1030
    .line 1031
    if-nez p2, :cond_38

    .line 1032
    .line 1033
    goto :goto_e

    .line 1034
    :cond_38
    move v5, v8

    .line 1035
    :goto_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1036
    .line 1037
    .line 1038
    move-result-object p2

    .line 1039
    const-string v0, "canShowGestureHint"

    .line 1040
    .line 1041
    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1048
    .line 1049
    .line 1050
    move-result p2

    .line 1051
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 1052
    .line 1053
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1054
    .line 1055
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1060
    .line 1061
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 1062
    .line 1063
    and-int/2addr v1, p2

    .line 1064
    iget-boolean v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 1065
    .line 1066
    and-int/2addr v2, p2

    .line 1067
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 1068
    .line 1069
    and-int/2addr p1, p2

    .line 1070
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    .line 1071
    .line 1072
    .line 1073
    goto/16 :goto_16

    .line 1074
    .line 1075
    :cond_39
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ResetHintVI;

    .line 1076
    .line 1077
    if-eqz v0, :cond_3a

    .line 1078
    .line 1079
    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object p1

    .line 1083
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 1084
    .line 1085
    iget-object p2, p1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->handler:Landroid/os/Handler;

    .line 1086
    .line 1087
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;

    .line 1088
    .line 1089
    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$reset$1;-><init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1093
    .line 1094
    .line 1095
    goto/16 :goto_16

    .line 1096
    .line 1097
    :cond_3a
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$StartHintVI;

    .line 1098
    .line 1099
    if-eqz v0, :cond_3b

    .line 1100
    .line 1101
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$StartHintVI;

    .line 1102
    .line 1103
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$StartHintVI;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1104
    .line 1105
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    .line 1106
    .line 1107
    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1108
    .line 1109
    .line 1110
    move-result-object p2

    .line 1111
    check-cast p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 1112
    .line 1113
    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    .line 1114
    .line 1115
    iget-boolean v0, v4, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 1116
    .line 1117
    iput p1, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    .line 1118
    .line 1119
    iput-boolean v0, p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->isCanMove:Z

    .line 1120
    .line 1121
    goto/16 :goto_16

    .line 1122
    .line 1123
    :cond_3b
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$MoveHintVI;

    .line 1124
    .line 1125
    if-eqz v0, :cond_3c

    .line 1126
    .line 1127
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$MoveHintVI;

    .line 1128
    .line 1129
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$MoveHintVI;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1130
    .line 1131
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->gestureHintVIInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;

    .line 1132
    .line 1133
    invoke-virtual {p0, v11, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object p2

    .line 1137
    move-object v1, p2

    .line 1138
    check-cast v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 1139
    .line 1140
    iget p2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->hintID:I

    .line 1141
    .line 1142
    iget v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceX:I

    .line 1143
    .line 1144
    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->distanceY:I

    .line 1145
    .line 1146
    iget-wide v4, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;->duration:J

    .line 1147
    .line 1148
    iput p2, v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->currentHintId:I

    .line 1149
    .line 1150
    iget-object p1, v1, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->handler:Landroid/os/Handler;

    .line 1151
    .line 1152
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;

    .line 1153
    .line 1154
    move-object v0, p2

    .line 1155
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$onActionMove$1;-><init>(Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;IIJ)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1159
    .line 1160
    .line 1161
    goto/16 :goto_16

    .line 1162
    .line 1163
    :cond_3c
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    .line 1164
    .line 1165
    if-eqz v0, :cond_3f

    .line 1166
    .line 1167
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    .line 1168
    .line 1169
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1170
    .line 1171
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    .line 1172
    .line 1173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1174
    .line 1175
    .line 1176
    move-result-object p1

    .line 1177
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1178
    .line 1179
    .line 1180
    move-result p2

    .line 1181
    if-eqz p2, :cond_3e

    .line 1182
    .line 1183
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object p2

    .line 1187
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;

    .line 1188
    .line 1189
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    .line 1190
    .line 1191
    if-eqz v0, :cond_3d

    .line 1192
    .line 1193
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 1194
    .line 1195
    iget-wide v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->flag:J

    .line 1196
    .line 1197
    const-string/jumbo v5, "set "

    .line 1198
    .line 1199
    .line 1200
    const-string v7, " : "

    .line 1201
    .line 1202
    invoke-static {v5, v3, v4, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v3

    .line 1206
    iget-boolean v4, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->value:Z

    .line 1207
    .line 1208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v3

    .line 1215
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    :cond_3d
    iget-wide v3, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->flag:J

    .line 1219
    .line 1220
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;->value:Z

    .line 1221
    .line 1222
    invoke-virtual {v6, v3, v4, p2}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 1223
    .line 1224
    .line 1225
    goto :goto_f

    .line 1226
    :cond_3e
    invoke-virtual {v6, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    .line 1227
    .line 1228
    .line 1229
    goto/16 :goto_16

    .line 1230
    .line 1231
    :cond_3f
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateOneHandModeInfo;

    .line 1232
    .line 1233
    if-eqz v0, :cond_40

    .line 1234
    .line 1235
    sget-object p1, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    .line 1236
    .line 1237
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateOneHandModeInfo;

    .line 1238
    .line 1239
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateOneHandModeInfo;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1240
    .line 1241
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 1242
    .line 1243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1244
    .line 1245
    .line 1246
    sput-object p2, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    .line 1247
    .line 1248
    goto/16 :goto_16

    .line 1249
    .line 1250
    :cond_40
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRegionSamplingRect;

    .line 1251
    .line 1252
    if-eqz v0, :cond_41

    .line 1253
    .line 1254
    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p1

    .line 1258
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 1259
    .line 1260
    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 1261
    .line 1262
    invoke-virtual {p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingRect()V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_16

    .line 1266
    .line 1267
    :cond_41
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RecalculateGestureInsetScale;

    .line 1268
    .line 1269
    if-eqz v0, :cond_4a

    .line 1270
    .line 1271
    sget-object p1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->INSTANCE:Lcom/android/systemui/navigationbar/util/NavigationModeUtil;

    .line 1272
    .line 1273
    const-class v0, Landroid/content/Context;

    .line 1274
    .line 1275
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    check-cast v0, Landroid/content/Context;

    .line 1280
    .line 1281
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RecalculateGestureInsetScale;

    .line 1282
    .line 1283
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RecalculateGestureInsetScale;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1284
    .line 1285
    iget-boolean p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->folded:Z

    .line 1286
    .line 1287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1288
    .line 1289
    .line 1290
    :try_start_0
    sget-object p1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    .line 1291
    .line 1292
    array-length p1, p1

    .line 1293
    if-nez p1, :cond_42

    .line 1294
    .line 1295
    move p1, v5

    .line 1296
    goto :goto_10

    .line 1297
    :cond_42
    move p1, v8

    .line 1298
    :goto_10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1299
    .line 1300
    if-eqz p1, :cond_44

    .line 1301
    .line 1302
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1303
    .line 1304
    .line 1305
    move-result-object p1

    .line 1306
    const v2, 0x10700a1

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 1310
    .line 1311
    .line 1312
    move-result-object p1

    .line 1313
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 1314
    .line 1315
    .line 1316
    move-result v2

    .line 1317
    new-array v3, v2, [F

    .line 1318
    .line 1319
    move v4, v8

    .line 1320
    :goto_11
    if-ge v4, v2, :cond_43

    .line 1321
    .line 1322
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1323
    .line 1324
    .line 1325
    move-result v6

    .line 1326
    aput v6, v3, v4

    .line 1327
    .line 1328
    add-int/lit8 v4, v4, 0x1

    .line 1329
    .line 1330
    goto :goto_11

    .line 1331
    :cond_43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1332
    .line 1333
    .line 1334
    sput-object v3, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    .line 1335
    .line 1336
    :cond_44
    sget-object p1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    .line 1337
    .line 1338
    array-length p1, p1

    .line 1339
    if-nez p1, :cond_45

    .line 1340
    .line 1341
    move p1, v5

    .line 1342
    goto :goto_12

    .line 1343
    :cond_45
    move p1, v8

    .line 1344
    :goto_12
    if-eqz p1, :cond_47

    .line 1345
    .line 1346
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1347
    .line 1348
    .line 1349
    move-result-object p1

    .line 1350
    const v2, 0x10700aa

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 1354
    .line 1355
    .line 1356
    move-result-object p1

    .line 1357
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 1358
    .line 1359
    .line 1360
    move-result v2

    .line 1361
    new-array v3, v2, [F

    .line 1362
    .line 1363
    :goto_13
    if-ge v8, v2, :cond_46

    .line 1364
    .line 1365
    invoke-virtual {p1, v8, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 1366
    .line 1367
    .line 1368
    move-result v4

    .line 1369
    aput v4, v3, v8

    .line 1370
    .line 1371
    add-int/lit8 v8, v8, 0x1

    .line 1372
    .line 1373
    goto :goto_13

    .line 1374
    :cond_46
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1375
    .line 1376
    .line 1377
    sput-object v3, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    .line 1379
    :cond_47
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 1380
    .line 1381
    iget-object p1, p1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 1382
    .line 1383
    if-eqz p2, :cond_48

    .line 1384
    .line 1385
    :try_start_1
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 1386
    .line 1387
    if-eqz p2, :cond_49

    .line 1388
    .line 1389
    const-string/jumbo p2, "navigation_bar_back_gesture_sensitivity_sub"

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 1393
    .line 1394
    .line 1395
    move-result-object p1

    .line 1396
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 1397
    .line 1398
    .line 1399
    move-result v5

    .line 1400
    goto :goto_14

    .line 1401
    :cond_48
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    .line 1402
    .line 1403
    if-eqz p2, :cond_49

    .line 1404
    .line 1405
    const-string/jumbo p2, "navigation_bar_back_gesture_sensitivity"

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {p1, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 1409
    .line 1410
    .line 1411
    move-result-object p1

    .line 1412
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 1413
    .line 1414
    .line 1415
    move-result v5

    .line 1416
    :cond_49
    :goto_14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1417
    .line 1418
    .line 1419
    move-result-object p1

    .line 1420
    const-string p2, "back_gesture_inset_scale_left"

    .line 1421
    .line 1422
    sget-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    .line 1423
    .line 1424
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1425
    .line 1426
    .line 1427
    aget v1, v1, v5

    .line 1428
    .line 1429
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1433
    .line 1434
    .line 1435
    move-result-object p1

    .line 1436
    const-string p2, "back_gesture_inset_scale_right"

    .line 1437
    .line 1438
    sget-object v1, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->sideInsetScaleArray:[F

    .line 1439
    .line 1440
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1441
    .line 1442
    .line 1443
    aget v1, v1, v5

    .line 1444
    .line 1445
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1449
    .line 1450
    .line 1451
    move-result-object p1

    .line 1452
    const-string p2, "bottom_gesture_inset_scale"

    .line 1453
    .line 1454
    sget-object v0, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->bottomInsetScaleArray:[F

    .line 1455
    .line 1456
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1457
    .line 1458
    .line 1459
    aget v0, v0, v5

    .line 1460
    .line 1461
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1462
    .line 1463
    .line 1464
    goto/16 :goto_16

    .line 1465
    .line 1466
    :cond_4a
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ShowA11ySwipeUpTipPopup;

    .line 1467
    .line 1468
    if-eqz v0, :cond_4b

    .line 1469
    .line 1470
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1471
    .line 1472
    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object p1

    .line 1476
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1477
    .line 1478
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->showA11ySwipeUpTipPopup()V

    .line 1479
    .line 1480
    .line 1481
    goto/16 :goto_16

    .line 1482
    .line 1483
    :cond_4b
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavigationIcon;

    .line 1484
    .line 1485
    if-eqz v0, :cond_4c

    .line 1486
    .line 1487
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object p1

    .line 1491
    check-cast p1, Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1492
    .line 1493
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 1494
    .line 1495
    .line 1496
    goto/16 :goto_16

    .line 1497
    .line 1498
    :cond_4c
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarIconsAndHints;

    .line 1499
    .line 1500
    if-eqz v0, :cond_4d

    .line 1501
    .line 1502
    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object p1

    .line 1506
    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1507
    .line 1508
    if-eqz p1, :cond_5b

    .line 1509
    .line 1510
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->updateTaskbarButtonIconsAndHints()V

    .line 1511
    .line 1512
    .line 1513
    goto/16 :goto_16

    .line 1514
    .line 1515
    :cond_4d
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    .line 1516
    .line 1517
    if-eqz v0, :cond_4e

    .line 1518
    .line 1519
    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    move-result-object p1

    .line 1523
    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1524
    .line 1525
    if-eqz p1, :cond_5b

    .line 1526
    .line 1527
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    .line 1528
    .line 1529
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1530
    .line 1531
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarNavBarEvents:Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    .line 1532
    .line 1533
    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/TaskbarDelegate;->handleNavigationBarEvent(Lcom/android/systemui/shared/navigationbar/NavBarEvents;)V

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_16

    .line 1537
    .line 1538
    :cond_4e
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarLayoutParams;

    .line 1539
    .line 1540
    if-eqz v0, :cond_4f

    .line 1541
    .line 1542
    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object p1

    .line 1546
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 1547
    .line 1548
    if-eqz p1, :cond_5b

    .line 1549
    .line 1550
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    .line 1551
    .line 1552
    .line 1553
    goto/16 :goto_16

    .line 1554
    .line 1555
    :cond_4f
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateA11YStatus;

    .line 1556
    .line 1557
    if-eqz v0, :cond_50

    .line 1558
    .line 1559
    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1560
    .line 1561
    .line 1562
    move-result-object p1

    .line 1563
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 1564
    .line 1565
    if-eqz p1, :cond_5b

    .line 1566
    .line 1567
    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    .line 1568
    .line 1569
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarHelper;->updateA11yState()V

    .line 1570
    .line 1571
    .line 1572
    goto/16 :goto_16

    .line 1573
    .line 1574
    :cond_50
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint;

    .line 1575
    .line 1576
    if-eqz v0, :cond_51

    .line 1577
    .line 1578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1579
    .line 1580
    .line 1581
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1582
    .line 1583
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1584
    .line 1585
    .line 1586
    move-result-object p1

    .line 1587
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1588
    .line 1589
    invoke-virtual {p1, v8, v8, v8}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    .line 1590
    .line 1591
    .line 1592
    goto/16 :goto_16

    .line 1593
    .line 1594
    :cond_51
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskbarStatus;

    .line 1595
    .line 1596
    if-eqz v0, :cond_57

    .line 1597
    .line 1598
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskbarStatus;

    .line 1599
    .line 1600
    iget-object p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskbarStatus;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1601
    .line 1602
    iget-boolean p2, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    .line 1603
    .line 1604
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    .line 1605
    .line 1606
    if-eqz p2, :cond_53

    .line 1607
    .line 1608
    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1609
    .line 1610
    if-eqz p2, :cond_52

    .line 1611
    .line 1612
    iget-object v7, p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    .line 1613
    .line 1614
    :cond_52
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1615
    .line 1616
    .line 1617
    iget-object p2, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 1618
    .line 1619
    if-eqz p2, :cond_55

    .line 1620
    .line 1621
    invoke-interface {p2, v7}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    .line 1622
    .line 1623
    .line 1624
    goto :goto_15

    .line 1625
    :cond_53
    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->taskbarDelegate:Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1626
    .line 1627
    if-eqz p2, :cond_54

    .line 1628
    .line 1629
    iget-object v7, p2, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mPluginTaskBar:Lcom/android/systemui/navigationbar/plugin/SamsungPluginTaskBar;

    .line 1630
    .line 1631
    :cond_54
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1632
    .line 1633
    .line 1634
    iget-object p2, v0, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    .line 1635
    .line 1636
    if-eqz p2, :cond_55

    .line 1637
    .line 1638
    invoke-interface {p2, v7}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onDetachedFromWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    .line 1639
    .line 1640
    .line 1641
    :cond_55
    :goto_15
    invoke-virtual {p0, v10, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object p2

    .line 1645
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 1646
    .line 1647
    if-eqz p2, :cond_5b

    .line 1648
    .line 1649
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_POLICY_VISIBILITY:Z

    .line 1650
    .line 1651
    if-eqz v0, :cond_5b

    .line 1652
    .line 1653
    invoke-virtual {p0, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    if-eqz v0, :cond_5b

    .line 1662
    .line 1663
    iget-object v0, p2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 1664
    .line 1665
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1666
    .line 1667
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 1668
    .line 1669
    .line 1670
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->taskbarEnabled:Z

    .line 1671
    .line 1672
    xor-int/2addr p1, v5

    .line 1673
    iget-object v0, p2, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 1674
    .line 1675
    if-eqz p1, :cond_56

    .line 1676
    .line 1677
    iget-object p1, p2, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    .line 1678
    .line 1679
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 1680
    .line 1681
    .line 1682
    goto :goto_16

    .line 1683
    :cond_56
    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 1684
    .line 1685
    .line 1686
    goto :goto_16

    .line 1687
    :cond_57
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateIndicatorSpringParams;

    .line 1688
    .line 1689
    if-eqz v0, :cond_59

    .line 1690
    .line 1691
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateIndicatorSpringParams;

    .line 1692
    .line 1693
    invoke-virtual {p1, v8}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isTaskBarEnabled(Z)Z

    .line 1694
    .line 1695
    .line 1696
    move-result p1

    .line 1697
    iget-object p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateIndicatorSpringParams;->action:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    .line 1698
    .line 1699
    if-eqz p1, :cond_58

    .line 1700
    .line 1701
    invoke-virtual {p0, v9, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1702
    .line 1703
    .line 1704
    move-result-object p1

    .line 1705
    check-cast p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    .line 1706
    .line 1707
    iget v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    .line 1708
    .line 1709
    iget-object p1, p1, Lcom/android/systemui/navigationbar/TaskbarDelegate;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 1710
    .line 1711
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNewBackAffordanceEnabled:Z

    .line 1712
    .line 1713
    if-eqz v1, :cond_5b

    .line 1714
    .line 1715
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 1716
    .line 1717
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    .line 1718
    .line 1719
    invoke-interface {p1, v0, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->updateActiveIndicatorSpringParams(FF)V

    .line 1720
    .line 1721
    .line 1722
    goto :goto_16

    .line 1723
    :cond_58
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1724
    .line 1725
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1726
    .line 1727
    .line 1728
    move-result-object p1

    .line 1729
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1730
    .line 1731
    iget v0, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->stiffness:F

    .line 1732
    .line 1733
    iget p2, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->dampingRatio:F

    .line 1734
    .line 1735
    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateActiveIndicatorSpringParams(FF)V

    .line 1736
    .line 1737
    .line 1738
    goto :goto_16

    .line 1739
    :cond_59
    instance-of p1, p2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateDefaultNavigationBarStatus;

    .line 1740
    .line 1741
    if-eqz p1, :cond_5b

    .line 1742
    .line 1743
    invoke-virtual {p0, v10, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object p1

    .line 1747
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    .line 1748
    .line 1749
    if-eqz p1, :cond_5a

    .line 1750
    .line 1751
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    .line 1752
    .line 1753
    .line 1754
    :cond_5a
    const-class p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1755
    .line 1756
    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 1757
    .line 1758
    .line 1759
    move-result-object p1

    .line 1760
    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 1761
    .line 1762
    if-eqz p1, :cond_5b

    .line 1763
    .line 1764
    iget-object p1, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 1765
    .line 1766
    if-eqz p1, :cond_5b

    .line 1767
    .line 1768
    const-wide/16 v0, 0x0

    .line 1769
    .line 1770
    iput-wide v0, p1, Lcom/android/systemui/shared/rotation/RotationButtonController;->mLastUnknownRotationProposedTick:J

    .line 1771
    .line 1772
    :catch_0
    :cond_5b
    :goto_16
    return-object p0
.end method

.method public final getModule(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 40
    .line 41
    return-object p0
.end method

.method public final getProvider(II)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 16
    .line 17
    const-class p1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    return-object p0
.end method

.method public final getSUWNavigationBarView(I)Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 8
    .line 9
    const p1, 0x7f0a072b

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    .line 17
    .line 18
    return-object p0
.end method

.method public final handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 8
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 9
    instance-of v5, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 10
    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;

    const-class v9, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v10, v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v0, v9, v10, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 11
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-class v9, Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarCreated;->navigationBar:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, v9, v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 12
    :cond_0
    instance-of v5, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    iget-object v9, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarProxy:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    if-eqz v5, :cond_2

    .line 13
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    .line 14
    iget-boolean v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    .line 15
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v10

    xor-int/2addr v10, v7

    and-int/2addr v5, v10

    .line 16
    iget-object v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mainContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x2

    iget v12, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->navigationMode:I

    if-eq v12, v11, :cond_1

    move v11, v7

    goto :goto_0

    :cond_1
    move v11, v6

    :goto_0
    and-int/2addr v10, v11

    or-int/2addr v5, v10

    .line 17
    iput-boolean v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    .line 18
    iget-boolean v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    .line 19
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v10

    xor-int/2addr v10, v7

    and-int/2addr v5, v10

    .line 20
    iput-boolean v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    .line 21
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_2

    .line 22
    :cond_2
    instance-of v5, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    iget-object v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->pluginBarInteractionManager:Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;

    iget-object v11, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v12, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const-class v13, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    if-eqz v5, :cond_8

    .line 23
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    iget-object v14, v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;->navigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v5, v14, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 24
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v5, v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;->navbarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0, v12, v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 25
    const-class v2, Landroid/content/Context;

    .line 26
    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->hintAnimatorFactory:Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    new-instance v9, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator$Factory;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {v9, v2, v5}, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    .line 29
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 30
    invoke-virtual {v0, v13, v9, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 31
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v13, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 32
    iget-object v5, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 33
    invoke-virtual {v5, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v5

    iput v5, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationMode:I

    .line 34
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_DESKTOP:Z

    if-eqz v2, :cond_4

    .line 35
    const-class v2, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    invoke-virtual {v11, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;

    if-eqz v2, :cond_4

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$2;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$2;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 36
    iget-object v9, v2, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    const-class v12, Lcom/android/systemui/util/DesktopManager;

    if-eqz v9, :cond_3

    .line 37
    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/util/DesktopManager;

    check-cast v13, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 38
    iget-object v13, v13, Lcom/android/systemui/util/DesktopManagerImpl;->mCallbacks:Ljava/util/List;

    .line 39
    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    :cond_3
    new-instance v9, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    invoke-direct {v9, v5}, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;-><init>(Ljava/util/function/Consumer;)V

    iput-object v9, v2, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    .line 41
    invoke-static {v12}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/util/DesktopManager;

    if-eqz v9, :cond_4

    .line 42
    iget-object v2, v2, Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/LegacyDesktopModeInteractor$addCallback$2;

    check-cast v9, Lcom/android/systemui/util/DesktopManagerImpl;

    invoke-virtual {v9, v2}, Lcom/android/systemui/util/DesktopManagerImpl;->registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V

    .line 43
    invoke-virtual {v9}, Lcom/android/systemui/util/DesktopManagerImpl;->getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$2;->accept(Ljava/lang/Object;)V

    .line 44
    :cond_4
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    if-eqz v2, :cond_7

    .line 45
    const-class v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-virtual {v11, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    if-eqz v2, :cond_7

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$3;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    .line 46
    iget-object v9, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

    if-eqz v9, :cond_5

    .line 47
    iget-object v11, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v11, v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    :cond_5
    new-instance v9, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

    invoke-direct {v9, v2, v5}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;Ljava/util/function/Consumer;)V

    .line 49
    iget-object v15, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 50
    iget-object v11, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->intentFilter:Landroid/content/IntentFilter;

    iget-object v12, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->bgHandler:Landroid/os/Handler;

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v20, 0x30

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    .line 51
    invoke-static/range {v15 .. v20}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;I)V

    .line 52
    iput-object v9, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

    .line 53
    iget-object v9, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;

    iget-object v11, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v9, :cond_6

    .line 54
    invoke-virtual {v11, v9}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 55
    :cond_6
    new-instance v9, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;

    invoke-direct {v9, v5, v2}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;)V

    iput-object v9, v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->callback:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;

    const-string/jumbo v12, "new_dex"

    .line 56
    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    filled-new-array {v12}, [Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 57
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$3;->accept(Ljava/lang/Object;)V

    .line 58
    :cond_7
    invoke-virtual {v14}, Lcom/android/systemui/navigationbar/NavigationBarView;->getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;

    move-result-object v2

    .line 59
    iget-object v5, v10, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v5, :cond_d

    .line 60
    invoke-interface {v5, v2}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onAttachedToWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    goto/16 :goto_2

    .line 61
    :cond_8
    instance-of v5, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;

    if-eqz v5, :cond_a

    .line 62
    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/NavigationBarView;->getPluginBar()Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;

    move-result-object v2

    .line 63
    iget-object v5, v10, Lcom/android/systemui/navigationbar/plugin/PluginBarInteractionManager;->pluginNavigationBar:Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;

    if-eqz v5, :cond_9

    .line 64
    invoke-interface {v5, v2}, Lcom/samsung/systemui/splugins/navigationbar/PluginNavigationBar;->onDetachedFromWindow(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;)V

    .line 65
    :cond_9
    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v2, v8, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 66
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v12, v8, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 67
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v13, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    .line 68
    iget-object v5, v2, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;->navigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 69
    invoke-virtual {v5, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 70
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v13, v8, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 71
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 72
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavBarHiddenByKnox()Z

    move-result v2

    if-nez v2, :cond_d

    .line 74
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->sysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const-wide v9, 0x800000000L

    invoke-virtual {v2, v9, v10, v6}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    .line 75
    iget v5, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v2, v5}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto :goto_2

    .line 76
    :cond_a
    instance-of v5, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

    if-eqz v5, :cond_b

    .line 77
    move-object v5, v1

    check-cast v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

    const-class v9, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v5, v5, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v9, v5, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 78
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 79
    const-class v5, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v11, v5}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v5}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result v5

    .line 80
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 81
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    goto :goto_2

    .line 82
    :cond_b
    instance-of v2, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;

    if-eqz v2, :cond_c

    .line 83
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;

    .line 84
    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;->rotationLocked:Z

    iput-boolean v2, v9, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLocked:Z

    .line 85
    iget-object v5, v9, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->rotationLockCallback:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/function/Consumer;

    .line 86
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_c
    instance-of v2, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    if-eqz v2, :cond_d

    .line 88
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    .line 89
    iget v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;->transitionMode:I

    iput v2, v9, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->navbarTransitionMode:I

    .line 90
    :cond_d
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$allBands$1;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$allBands$1;

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 91
    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;

    move-object/from16 v9, p1

    invoke-direct {v5, v0, v9, v1, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 92
    sget-object v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$handleEvent$filteredBands$2;

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 93
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 94
    iget-boolean v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    .line 95
    iget v10, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget v11, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 96
    iget-object v12, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iput v10, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    .line 97
    iget-boolean v13, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->loggingStarted:Z

    if-nez v13, :cond_e

    move v13, v6

    goto/16 :goto_e

    .line 98
    :cond_e
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    if-eqz v13, :cond_f

    move v13, v7

    goto :goto_3

    :cond_f
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    :goto_3
    if-eqz v13, :cond_10

    move v13, v7

    goto :goto_4

    .line 99
    :cond_10
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    :goto_4
    if-eqz v13, :cond_11

    move v13, v7

    goto :goto_5

    :cond_11
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    :goto_5
    if-eqz v13, :cond_12

    move v13, v7

    goto :goto_6

    :cond_12
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconMarquee;

    :goto_6
    if-eqz v13, :cond_13

    move v13, v7

    goto :goto_7

    .line 100
    :cond_13
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    :goto_7
    if-eqz v13, :cond_14

    move v13, v7

    goto :goto_8

    :cond_14
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    :goto_8
    if-eqz v13, :cond_15

    move v13, v7

    goto :goto_9

    :cond_15
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    :goto_9
    if-eqz v13, :cond_16

    move v13, v7

    goto :goto_a

    .line 101
    :cond_16
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    :goto_a
    if-eqz v13, :cond_17

    move v13, v7

    goto :goto_b

    :cond_17
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;

    :goto_b
    if-eqz v13, :cond_18

    move v13, v7

    goto :goto_c

    :cond_18
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;

    :goto_c
    if-eqz v13, :cond_19

    move v13, v7

    goto :goto_d

    .line 102
    :cond_19
    instance-of v13, v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    :goto_d
    xor-int/2addr v13, v7

    .line 103
    iput-boolean v13, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    :goto_e
    const-string v14, "handleEvent("

    if-eqz v13, :cond_1b

    .line 104
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v6

    :goto_f
    if-ge v15, v10, :cond_1a

    const-string v8, "--"

    .line 105
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    goto :goto_f

    .line 106
    :cond_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " [Module] "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v10, "Store"

    invoke-virtual {v9, v10, v8}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    goto :goto_10

    :cond_1b
    move v8, v6

    .line 110
    :goto_10
    iput-boolean v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    .line 111
    iget v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 112
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v8

    .line 113
    iget-object v9, v8, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    invoke-static {v9}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->copy$default(Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;)Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    move-result-object v9

    .line 114
    new-instance v10, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget v11, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v10, v1, v8, v9, v11}, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;-><init>(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;Lcom/android/systemui/navigationbar/store/NavBarStateManager;Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;I)V

    .line 115
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 116
    iget-boolean v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v15, :cond_1d

    .line 117
    iget v15, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 118
    iget-object v6, v13, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    if-eqz v6, :cond_1c

    .line 119
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_12

    :cond_1c
    const/4 v6, 0x0

    :goto_12
    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 p1, v9

    const-string v9, "[Band]"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v15, v6}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    goto :goto_13

    :cond_1d
    move-object/from16 p1, v9

    .line 120
    :goto_13
    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 121
    iget-object v6, v13, Lcom/android/systemui/navigationbar/bandaid/Band;->patchAction:Ljava/util/function/Function;

    if-eqz v6, :cond_1e

    .line 122
    invoke-interface {v6, v10}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_14

    :cond_1e
    const/4 v6, 0x0

    .line 123
    :goto_14
    instance-of v7, v6, Lkotlin/Unit;

    if-nez v7, :cond_20

    if-nez v6, :cond_1f

    const/4 v11, 0x0

    goto :goto_15

    :cond_1f
    move-object v11, v6

    .line 124
    :cond_20
    :goto_15
    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    move-object/from16 v9, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_11

    .line 125
    :cond_21
    invoke-virtual {v8, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->updateStateFromEvent(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/bandaid/Band;

    .line 127
    iget-object v6, v2, Lcom/android/systemui/navigationbar/bandaid/Band;->afterAction:Ljava/util/function/Consumer;

    if-eqz v6, :cond_22

    .line 128
    iget-boolean v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v6, :cond_24

    .line 129
    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    iget-object v7, v2, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    goto :goto_17

    :cond_23
    const/4 v7, 0x0

    :goto_17
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Band] (afterAction) "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v6, v7}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 130
    :cond_24
    iget v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    .line 131
    iget-object v2, v2, Lcom/android/systemui/navigationbar/bandaid/Band;->afterAction:Ljava/util/function/Consumer;

    invoke-interface {v2, v10}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 132
    iget v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    goto :goto_16

    .line 133
    :cond_25
    iget v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->loggingDepth:I

    if-eqz v11, :cond_27

    .line 134
    instance-of v2, v11, Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-nez v2, :cond_27

    .line 135
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v2, :cond_26

    .line 136
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") retValue= "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 138
    :cond_26
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    .line 140
    iput v0, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    goto :goto_18

    .line 141
    :cond_27
    instance-of v2, v3, Lkotlin/Unit;

    if-nez v2, :cond_29

    .line 142
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    if-eqz v2, :cond_28

    .line 143
    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") ret defaultValue= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {v12, v1, v2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 145
    :cond_28
    iput-boolean v5, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEventLoggingEnabled:Z

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    .line 147
    iput v0, v12, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    :cond_29
    move-object v11, v3

    :goto_18
    return-object v11
.end method

.method public final handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V
    .locals 2

    .line 2
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 3
    :cond_2
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    instance-of v0, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    instance-of v1, p2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    :goto_4
    if-eqz v1, :cond_5

    .line 4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    :cond_6
    return-void
.end method

.method public final handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initDisplayDependenciesIfNeeded(ILandroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move/from16 v12, p1

    .line 4
    .line 5
    iget-object v0, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 6
    .line 7
    invoke-virtual {v0, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object v13

    .line 11
    if-eqz v13, :cond_4

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-class v0, Landroid/content/Context;

    .line 38
    .line 39
    move-object/from16 v1, p2

    .line 40
    .line 41
    invoke-virtual {v11, v0, v1, v12}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object/from16 v1, p2

    .line 46
    .line 47
    :goto_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v14, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    new-instance v10, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 64
    .line 65
    iget-object v3, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 66
    .line 67
    iget-object v4, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 68
    .line 69
    iget-object v5, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 70
    .line 71
    iget-object v6, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 72
    .line 73
    iget-object v7, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    const/16 v9, 0x80

    .line 77
    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    move-object v0, v10

    .line 81
    move-object/from16 v1, p2

    .line 82
    .line 83
    move-object/from16 v2, p0

    .line 84
    .line 85
    move-object/from16 v17, v13

    .line 86
    .line 87
    move-object v13, v10

    .line 88
    move-object/from16 v10, v16

    .line 89
    .line 90
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move-object/from16 v17, v13

    .line 98
    .line 99
    if-nez v12, :cond_2

    .line 100
    .line 101
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->onNavigationBarCreated()V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 117
    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 121
    .line 122
    iput-object v11, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 123
    .line 124
    const-class v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 125
    .line 126
    invoke-virtual {v11, v1, v0, v12}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    .line 127
    .line 128
    .line 129
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    .line 130
    .line 131
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 132
    .line 133
    .line 134
    move-object/from16 v1, v17

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 137
    .line 138
    .line 139
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    .line 151
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 152
    .line 153
    iput-object v0, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 154
    .line 155
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    const/4 v0, 0x0

    .line 159
    :goto_2
    if-nez v0, :cond_5

    .line 160
    .line 161
    const-string v0, "Failed to add display dependencies because display "

    .line 162
    .line 163
    const-string v1, " returns null."

    .line 164
    .line 165
    invoke-static {v0, v12, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v1, v11, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 170
    .line 171
    iget-boolean v2, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    .line 172
    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    iget v2, v1, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    .line 176
    .line 177
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    return-void
.end method

.method public final putModule(Ljava/lang/reflect/Type;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navDependencies:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarModuleDependency;->modules:Ljava/util/HashMap;

    .line 42
    .line 43
    check-cast p1, Ljava/lang/Class;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final setProvider(IILjava/lang/Object;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    .line 11
    .line 12
    check-cast p3, Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 13
    .line 14
    invoke-direct {p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;-><init>(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;

    .line 22
    .line 23
    check-cast p3, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 24
    .line 25
    invoke-direct {p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;-><init>(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-eqz p3, :cond_3

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->provider:Ljava/util/Map;

    .line 37
    .line 38
    const-class p2, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 39
    .line 40
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addColorCallback(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_0
    return-void
.end method
