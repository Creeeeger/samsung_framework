.class public final Lcom/android/systemui/navigationbar/store/NavBarStateManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public final eventTypeFactory:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

.field public final interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

.field public layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

.field public final logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

.field public navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

.field public final navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Landroid/graphics/Point;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p8

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    move-object/from16 v2, p3

    .line 2
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v2, p4

    .line 3
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    move-object/from16 v2, p5

    .line 4
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    move-object/from16 v2, p6

    .line 5
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    move-object/from16 v2, p7

    .line 6
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 7
    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    move-object v2, v15

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v32, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0x7fffffe

    const/16 v31, 0x0

    invoke-direct/range {v2 .. v31}, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;-><init>(Landroid/graphics/Point;ZZLcom/samsung/systemui/splugins/navigationbar/LayoutProvider;IIIZIZZIZZZZZZZIZZZZZILjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v32

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 8
    new-instance v2, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 9
    sget-object v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->Companion:Lcom/android/systemui/navigationbar/store/EventTypeFactory$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-object v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->INSTANCE:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    if-nez v2, :cond_0

    .line 11
    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory;-><init>(Landroid/content/Context;)V

    .line 12
    sput-object v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->INSTANCE:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    .line 13
    :cond_0
    iput-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->eventTypeFactory:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->onNavigationBarCreated()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Landroid/graphics/Point;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public final canPlaceKeyboardButton(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method

.method public final canShowButtonInLargeCoverIme()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isMultiModalAvailableInLargeCover()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isMultiModalAvailableInLargeCover()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :goto_1
    return p0
.end method

.method public final canShowFloatingGameTools(Z)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGameMode(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v4, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 19
    .line 20
    const-string v5, "game_double_swipe_enable"

    .line 21
    .line 22
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    move v4, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v4, v0

    .line 35
    :goto_0
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 40
    .line 41
    const-string v2, "game_show_floating_icon"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    move v1, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v1, v0

    .line 56
    :goto_1
    if-nez v1, :cond_2

    .line 57
    .line 58
    move v0, v3

    .line 59
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v0, "canShowFloatingGameTools"

    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :cond_3
    return v0
.end method

.method public final canShowKeyboardButtonForRotation(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 8
    .line 9
    iget v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->lastTaskUserId:I

    .line 10
    .line 11
    const-string/jumbo v2, "show_keyboard_button"

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v3

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canPlaceKeyboardButton(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move v0, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v0, v3

    .line 48
    :cond_2
    :goto_1
    if-nez v0, :cond_7

    .line 49
    .line 50
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isSetMultimodalButton()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canPlaceKeyboardButton(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    :cond_3
    move v0, v1

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v0, v3

    .line 77
    :goto_2
    if-nez v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isGestureMode()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canPlaceKeyboardButton(I)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_5
    move v0, v3

    .line 101
    goto :goto_4

    .line 102
    :cond_6
    :goto_3
    move v0, v1

    .line 103
    :goto_4
    if-eqz v0, :cond_8

    .line 104
    .line 105
    :cond_7
    move v3, v1

    .line 106
    :cond_8
    const-string v0, "canShowKeyboardButtonForRotation("

    .line 107
    .line 108
    const-string v1, ")"

    .line 109
    .line 110
    invoke-static {v0, p1, v1}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    return p0
.end method

.method public final getButtonWidth(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "getButtonWidth(land: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ")"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getDefaultLayout()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    xor-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-interface {v0, v2, v1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getLayout(ZI)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "getDefaultLayout"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final getGestureWidth(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "getGestureWidth(land: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ")"

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final getSpaceWidth(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;ZZ)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "getSpaceWidth(land: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ")"

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0
.end method

.method public final isBlockingGestureOnGame()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->canShowFloatingGameTools(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isIMEShowing(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "isBlockingGestureOnGame"

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final isBottomGestureMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "isBottomGestureMode"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    return v0
.end method

.method public final isCoverDisplayNavBarEnabled()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isLargeCoverScreenSyncEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isCoverLauncherNavBarEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 29
    .line 30
    const-class v3, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v2

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v1, v2

    .line 48
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string/jumbo v1, "supportCoverScreenNavBar"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isCoverLauncherNavBarEnabled()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move v1, v2

    .line 73
    :cond_4
    :goto_2
    return v1
.end method

.method public final isCoverLauncherNavBarEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 9
    .line 10
    const-class v2, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 31
    .line 32
    const-string/jumbo v3, "show_navigation_for_subscreen"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    move v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v1

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    move v0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v0, v1

    .line 63
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    :goto_2
    const-string v3, "isCoverLauncherNavBarEnabled"

    .line 70
    .line 71
    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    move p0, v1

    .line 82
    :goto_3
    if-eqz p0, :cond_4

    .line 83
    .line 84
    move v1, v2

    .line 85
    :cond_4
    return v1
.end method

.method public final isGameMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "com.samsung.android.game.gametools"

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->requestClass:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "isGameMode"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :cond_1
    return v0
.end method

.method public final isGestureHintEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isGestureMode()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isBottomGestureMode(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isSideAndBottomGestureMode(Z)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :cond_1
    return v0
.end method

.method public final isIMEShowing(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "isIMEShowing"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_1
    return v1
.end method

.method public final isLargeCoverScreenSyncEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 19
    .line 20
    const-string v2, "large_cover_screen_navigation"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v1

    .line 35
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v2, "isLargeCoverScreenSyncEnabled"

    .line 40
    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    move v1, v3

    .line 54
    :cond_1
    return v1
.end method

.method public final isLargeCoverTaskEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 2
    .line 3
    const-class v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isMultiModalAvailableInLargeCover()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "NavBarStateManager"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "multiModalForLargeCover = false (not in cover display)"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_1
    const-string v0, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    .line 32
    .line 33
    const-string v3, "cover_voice_icon"

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const/4 v10, 0x1

    .line 40
    const/4 v11, 0x0

    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    .line 56
    .line 57
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    move v0, v2

    .line 59
    if-eqz v11, :cond_4

    .line 60
    .line 61
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    const-string v4, "NAME"

    .line 68
    .line 69
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, -0x1

    .line 74
    if-eq v4, v5, :cond_2

    .line 75
    .line 76
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    .line 82
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-lez v5, :cond_3

    .line 87
    .line 88
    move v5, v10

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move v5, v2

    .line 91
    :goto_1
    if-eqz v5, :cond_2

    .line 92
    .line 93
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_2

    .line 98
    .line 99
    const-string v4, "VALUE"

    .line 100
    .line 101
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v3

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    if-eqz v11, :cond_5

    .line 113
    .line 114
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_5

    .line 120
    :catch_1
    move-exception v3

    .line 121
    move v0, v2

    .line 122
    :goto_3
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v5, "Failed to retrieve cover_voice_icon. "

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    .line 142
    if-eqz v11, :cond_5

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 146
    .line 147
    if-ne v0, v10, :cond_6

    .line 148
    .line 149
    move v2, v10

    .line 150
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 157
    .line 158
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 159
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string/jumbo v3, "multiModalForLargeCover : "

    .line 163
    .line 164
    .line 165
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 179
    .line 180
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->multiModalForLargeCover:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    return p0

    .line 190
    :goto_5
    if-eqz v11, :cond_7

    .line 191
    .line 192
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 193
    .line 194
    .line 195
    :cond_7
    throw p0
.end method

.method public final isNavBarButtonForcedVisible()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 2
    .line 3
    const-class v0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->buttonForcedVisible:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final isNavBarHidden()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavBarHiddenByKnox()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    .line 15
    .line 16
    check-cast v0, Lcom/android/systemui/util/DesktopManagerImpl;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManagerImpl;->isStandalone()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 30
    .line 31
    const-class v0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-ne p0, v1, :cond_0

    .line 46
    .line 47
    move p0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p0, v2

    .line 50
    :goto_0
    if-eqz p0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move p0, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    move p0, v1

    .line 56
    :goto_2
    if-eqz p0, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move v1, v2

    .line 60
    :cond_4
    :goto_3
    return v1
.end method

.method public final isNavBarHiddenByKnox()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 2
    .line 3
    const-class v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 20
    .line 21
    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "isNavBarHiddenByKnox"

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final isNavigationBarUseThemeDefault()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 12
    .line 13
    const-string/jumbo v1, "navigationbar_use_theme_default"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "isNavigationBarUseThemeDefault"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final isOpaqueNavigationBar()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavigationBarUseThemeDefault()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isSideAndBottomGestureMode(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "isSideAndBottomGestureMode"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    return v0
.end method

.method public final isTaskBarEnabled(Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_TASKBAR:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, v1, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 15
    .line 16
    const-string/jumbo v5, "task_bar"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v5}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    move v2, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v3

    .line 32
    :goto_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    xor-int/2addr v5, v4

    .line 37
    iget-object v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 38
    .line 39
    const-class v7, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 40
    .line 41
    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 46
    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    iget-boolean v8, v8, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Z

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v8, v3

    .line 53
    :goto_1
    iget-object v9, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 54
    .line 55
    iget-boolean v9, v9, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEasyModeOn()Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    xor-int/2addr v10, v4

    .line 62
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    xor-int/2addr v1, v4

    .line 67
    sget-object v11, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 68
    .line 69
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    invoke-interface {v11}, Landroid/app/IActivityTaskManager;->getLockTaskModeState()I

    .line 77
    .line 78
    .line 79
    move-result v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    if-ne v11, v4, :cond_2

    .line 81
    .line 82
    move v11, v4

    .line 83
    goto :goto_2

    .line 84
    :catch_0
    :cond_2
    move v11, v3

    .line 85
    :goto_2
    xor-int/2addr v11, v4

    .line 86
    invoke-virtual {v6, v7}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    check-cast v7, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;

    .line 91
    .line 92
    if-eqz v7, :cond_3

    .line 93
    .line 94
    iget-boolean v7, v7, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    .line 95
    .line 96
    if-ne v7, v4, :cond_3

    .line 97
    .line 98
    move v7, v4

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v7, v3

    .line 101
    :goto_3
    iget-object v12, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 102
    .line 103
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object v13

    .line 107
    const-string/jumbo v14, "user_setup_complete"

    .line 108
    .line 109
    .line 110
    const/4 v15, -0x2

    .line 111
    invoke-static {v13, v14, v3, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 112
    .line 113
    .line 114
    move-result v13

    .line 115
    if-ne v13, v4, :cond_4

    .line 116
    .line 117
    move v13, v4

    .line 118
    goto :goto_4

    .line 119
    :cond_4
    move v13, v3

    .line 120
    :goto_4
    sget-boolean v14, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    .line 121
    .line 122
    if-eqz v14, :cond_6

    .line 123
    .line 124
    const-class v14, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    .line 125
    .line 126
    invoke-virtual {v6, v14}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    .line 131
    .line 132
    if-eqz v6, :cond_5

    .line 133
    .line 134
    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->isEnabled()Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-ne v6, v4, :cond_5

    .line 139
    .line 140
    move v6, v4

    .line 141
    goto :goto_5

    .line 142
    :cond_5
    move v6, v3

    .line 143
    :goto_5
    if-eqz v6, :cond_6

    .line 144
    .line 145
    move v3, v4

    .line 146
    :cond_6
    iget-object v6, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 147
    .line 148
    iput-boolean v13, v6, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 149
    .line 150
    if-eqz p1, :cond_14

    .line 151
    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    const-string v6, "a"

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_7
    const-string v6, "A"

    .line 158
    .line 159
    :goto_6
    if-eqz v5, :cond_8

    .line 160
    .line 161
    const-string v14, "b"

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :cond_8
    const-string v14, "B"

    .line 165
    .line 166
    :goto_7
    invoke-virtual {v6, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-eqz v8, :cond_9

    .line 171
    .line 172
    const-string v14, "c"

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_9
    const-string v14, "C"

    .line 176
    .line 177
    :goto_8
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 182
    .line 183
    .line 184
    move-result-object v14

    .line 185
    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 186
    .line 187
    .line 188
    move-result-object v14

    .line 189
    iget v14, v14, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 190
    .line 191
    if-nez v14, :cond_a

    .line 192
    .line 193
    move v14, v4

    .line 194
    goto :goto_9

    .line 195
    :cond_a
    const/4 v14, 0x0

    .line 196
    :goto_9
    if-eqz v14, :cond_b

    .line 197
    .line 198
    const-string v14, "d"

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_b
    const-string v14, "D"

    .line 202
    .line 203
    :goto_a
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    if-eqz v14, :cond_c

    .line 212
    .line 213
    const-string v14, "e"

    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_c
    const-string v14, "E"

    .line 217
    .line 218
    :goto_b
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    if-eqz v9, :cond_d

    .line 223
    .line 224
    const-string v14, "f"

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_d
    const-string v14, "F"

    .line 228
    .line 229
    :goto_c
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    if-eqz v10, :cond_e

    .line 234
    .line 235
    const-string v14, "g"

    .line 236
    .line 237
    goto :goto_d

    .line 238
    :cond_e
    const-string v14, "G"

    .line 239
    .line 240
    :goto_d
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    if-eqz v1, :cond_f

    .line 245
    .line 246
    const-string v14, "h"

    .line 247
    .line 248
    goto :goto_e

    .line 249
    :cond_f
    const-string v14, "H"

    .line 250
    .line 251
    :goto_e
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    if-eqz v11, :cond_10

    .line 256
    .line 257
    const-string v14, "i"

    .line 258
    .line 259
    goto :goto_f

    .line 260
    :cond_10
    const-string v14, "I"

    .line 261
    .line 262
    :goto_f
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    if-eqz v7, :cond_11

    .line 267
    .line 268
    const-string v14, "j"

    .line 269
    .line 270
    goto :goto_10

    .line 271
    :cond_11
    const-string v14, "J"

    .line 272
    .line 273
    :goto_10
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    if-eqz v13, :cond_12

    .line 278
    .line 279
    const-string v14, "k"

    .line 280
    .line 281
    goto :goto_11

    .line 282
    :cond_12
    const-string v14, "K"

    .line 283
    .line 284
    :goto_11
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    if-eqz v3, :cond_13

    .line 289
    .line 290
    const-string v14, "l"

    .line 291
    .line 292
    goto :goto_12

    .line 293
    :cond_13
    const-string v14, "L"

    .line 294
    .line 295
    :goto_12
    invoke-static {v6, v14}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    goto :goto_13

    .line 300
    :cond_14
    const-string v6, ""

    .line 301
    .line 302
    :goto_13
    if-eqz v2, :cond_17

    .line 303
    .line 304
    if-eqz v5, :cond_17

    .line 305
    .line 306
    if-eqz v8, :cond_17

    .line 307
    .line 308
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 317
    .line 318
    if-nez v2, :cond_15

    .line 319
    .line 320
    move v2, v4

    .line 321
    goto :goto_14

    .line 322
    :cond_15
    const/4 v2, 0x0

    .line 323
    :goto_14
    if-nez v2, :cond_16

    .line 324
    .line 325
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_17

    .line 330
    .line 331
    :cond_16
    if-eqz v9, :cond_17

    .line 332
    .line 333
    if-eqz v10, :cond_17

    .line 334
    .line 335
    if-eqz v1, :cond_17

    .line 336
    .line 337
    if-eqz v11, :cond_17

    .line 338
    .line 339
    if-eqz v7, :cond_17

    .line 340
    .line 341
    if-nez v13, :cond_19

    .line 342
    .line 343
    :cond_17
    if-eqz v3, :cond_18

    .line 344
    .line 345
    if-eqz v8, :cond_18

    .line 346
    .line 347
    goto :goto_15

    .line 348
    :cond_18
    const/4 v4, 0x0

    .line 349
    :cond_19
    :goto_15
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const-string/jumbo v2, "sem_task_bar_available"

    .line 354
    .line 355
    .line 356
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    .line 358
    .line 359
    if-eqz p1, :cond_1a

    .line 360
    .line 361
    const-string v1, "isTaskbarEnabled("

    .line 362
    .line 363
    const-string v2, ")"

    .line 364
    .line 365
    invoke-static {v1, v6, v2}, Landroidx/core/graphics/PathParser$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 380
    .line 381
    .line 382
    move-result v4

    .line 383
    :cond_1a
    return v4
.end method

.method public final logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "NavBarStates("

    .line 8
    .line 9
    const-string v2, ") "

    .line 10
    .line 11
    const-string v3, ": "

    .line 12
    .line 13
    invoke-static {v1, v0, v2, p2, v3}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget p2, p0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    .line 31
    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final onNavigationBarCreated()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_COVER_DISPLAY:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    if-ne v1, v4, :cond_0

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v3

    .line 20
    :goto_0
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportCoverScreen:Z

    .line 21
    .line 22
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    if-ne v1, v4, :cond_1

    .line 27
    .line 28
    move v1, v4

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v1, v3

    .line 31
    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->eventTypeFactory:Lcom/android/systemui/navigationbar/store/EventTypeFactory;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->context:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory;->updatableEvents:Ljava/util/List;

    .line 42
    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-direct {v6, v7}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;-><init>(Landroid/content/res/Configuration;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    .line 62
    .line 63
    const v7, 0x11101bf

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_2

    .line 77
    .line 78
    move v7, v4

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move v7, v3

    .line 81
    :goto_2
    const v8, 0x7f050022

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    if-eqz v8, :cond_3

    .line 89
    .line 90
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_3

    .line 95
    .line 96
    move v3, v4

    .line 97
    :cond_3
    const v4, 0x11101c2

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    const v8, 0x10e00d9

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-direct {v6, v7, v3, v4, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;-><init>(ZZZI)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-direct {v2, v1}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    .line 140
    .line 141
    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 142
    .line 143
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 148
    .line 149
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;-><init>(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->updateStateFromEvent(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->updateLayoutProvider()V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final shouldShowSUWStyle()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->userSetupCompleted:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 16
    .line 17
    const-class v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 24
    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v0, v3

    .line 36
    :goto_0
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->isNavBarButtonForcedVisible()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v3

    .line 46
    :cond_3
    :goto_1
    return v2
.end method

.method public final supportLargeCoverScreenNavBar()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportLargeCoverScreen:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->interactorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 9
    .line 10
    const-class v2, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string/jumbo v1, "supportLargeCoverScreenNavBar"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final updateLayoutProvider()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->allowLogging:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->lastDepth:I

    .line 8
    .line 9
    const-string/jumbo v2, "updateLayoutProvider()"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 24
    .line 25
    invoke-interface {v1, p0, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iput-object p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 30
    .line 31
    return-void
.end method

.method public final updateStateFromEvent(Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 2
    .line 3
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    .line 10
    .line 11
    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;->newConfig:Landroid/content/res/Configuration;

    .line 12
    .line 13
    iget-object p1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 20
    .line 21
    iget p1, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 22
    .line 23
    and-int/lit8 p1, p1, 0x20

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    move p1, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p1, v3

    .line 30
    :goto_0
    iput-boolean p1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->darkMode:Z

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Point;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 61
    .line 62
    iget v1, p0, Landroid/graphics/Point;->x:I

    .line 63
    .line 64
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 71
    .line 72
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 73
    .line 74
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eq p0, v1, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move v2, v3

    .line 82
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 83
    .line 84
    iput-object p1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displaySize:Landroid/graphics/Point;

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    .line 93
    .line 94
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->canMove:Z

    .line 95
    .line 96
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->canMove:Z

    .line 97
    .line 98
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    .line 99
    .line 100
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->supportPhoneLayoutProvider:Z

    .line 101
    .line 102
    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->imeDownButtonForAllRotation:Z

    .line 103
    .line 104
    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->imeDownButtonForAllRotation:Z

    .line 105
    .line 106
    iget v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->navigationMode:I

    .line 107
    .line 108
    iput v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->navigationMode:I

    .line 109
    .line 110
    iput-boolean v3, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->displayChanged:Z

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;->supportPhoneLayoutProvider:Z

    .line 119
    .line 120
    invoke-interface {v1, v2, p1}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 125
    .line 126
    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy$Companion;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 132
    .line 133
    if-nez p1, :cond_3

    .line 134
    .line 135
    new-instance p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 136
    .line 137
    invoke-direct {p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;-><init>()V

    .line 138
    .line 139
    .line 140
    sput-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarProxy;

    .line 141
    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->updateLayoutProvider()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_4
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    .line 148
    .line 149
    if-eqz v1, :cond_5

    .line 150
    .line 151
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;

    .line 152
    .line 153
    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationChanged;->rotation:I

    .line 154
    .line 155
    iput p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 156
    .line 157
    goto/16 :goto_3

    .line 158
    .line 159
    :cond_5
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    .line 160
    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;

    .line 164
    .line 165
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnDeviceProvisionedChanged;->provisioned:Z

    .line 166
    .line 167
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->deviceProvisioned:Z

    .line 168
    .line 169
    goto/16 :goto_3

    .line 170
    .line 171
    :cond_6
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    .line 175
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    .line 176
    .line 177
    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;->iconHint:I

    .line 178
    .line 179
    iput p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->iconHint:I

    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_7
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    .line 184
    .line 185
    if-eqz v1, :cond_8

    .line 186
    .line 187
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    .line 188
    .line 189
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;->disabled:Z

    .line 190
    .line 191
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->gestureDisabledByPolicy:Z

    .line 192
    .line 193
    goto/16 :goto_3

    .line 194
    .line 195
    :cond_8
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    .line 196
    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    .line 200
    .line 201
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;->showing:Z

    .line 202
    .line 203
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->sPayShowing:Z

    .line 204
    .line 205
    goto/16 :goto_3

    .line 206
    .line 207
    :cond_9
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    .line 208
    .line 209
    if-eqz v1, :cond_a

    .line 210
    .line 211
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    .line 212
    .line 213
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;->recentVisible:Z

    .line 214
    .line 215
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->recentVisible:Z

    .line 216
    .line 217
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;->homeVisible:Z

    .line 218
    .line 219
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->homeVisible:Z

    .line 220
    .line 221
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;->backVisible:Z

    .line 222
    .line 223
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->backVisible:Z

    .line 224
    .line 225
    goto/16 :goto_3

    .line 226
    .line 227
    :cond_a
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;

    .line 228
    .line 229
    if-eqz v1, :cond_b

    .line 230
    .line 231
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;

    .line 232
    .line 233
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;->intentStatus:Z

    .line 234
    .line 235
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->hardKeyIntentPolicy:Z

    .line 236
    .line 237
    goto/16 :goto_3

    .line 238
    .line 239
    :cond_b
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    .line 240
    .line 241
    if-eqz v1, :cond_c

    .line 242
    .line 243
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    .line 244
    .line 245
    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;->transitionMode:I

    .line 246
    .line 247
    iput p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->transitionMode:I

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_c
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    .line 251
    .line 252
    if-eqz v1, :cond_d

    .line 253
    .line 254
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    .line 255
    .line 256
    iget-boolean p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;->registered:Z

    .line 257
    .line 258
    iput-boolean p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->regionSamplingEnabled:Z

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_d
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;

    .line 262
    .line 263
    if-eqz v1, :cond_e

    .line 264
    .line 265
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;

    .line 266
    .line 267
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLayoutContainerChanged;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 268
    .line 269
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->updateLayoutProvider()V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_e
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    .line 276
    .line 277
    if-eqz v1, :cond_f

    .line 278
    .line 279
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    .line 280
    .line 281
    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;->disable1:I

    .line 282
    .line 283
    iput p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable1:I

    .line 284
    .line 285
    iget p0, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;->disable2:I

    .line 286
    .line 287
    iput p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->disable2:I

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_f
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    .line 291
    .line 292
    if-eqz v1, :cond_12

    .line 293
    .line 294
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    .line 295
    .line 296
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;->layoutParamsProvider:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 297
    .line 298
    if-nez p1, :cond_11

    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->context:Landroid/content/Context;

    .line 305
    .line 306
    if-eqz p1, :cond_10

    .line 307
    .line 308
    new-instance p1, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;

    .line 309
    .line 310
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/navigationbar/layout/NavBarCoverLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    .line 311
    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_10
    new-instance p1, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;

    .line 315
    .line 316
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/navigationbar/layout/NavBarLayoutParams;-><init>(Landroid/content/Context;Lcom/android/systemui/navigationbar/store/NavBarStateManager;)V

    .line 317
    .line 318
    .line 319
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->navBarLayoutParams:Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_12
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;

    .line 326
    .line 327
    if-eqz v1, :cond_13

    .line 328
    .line 329
    check-cast p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;

    .line 330
    .line 331
    iget p1, p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;->rotation:I

    .line 332
    .line 333
    iput p1, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 334
    .line 335
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->layoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->supportLargeCoverScreenNavBar()Z

    .line 338
    .line 339
    .line 340
    move-result p0

    .line 341
    invoke-interface {p1, p0, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(ZZ)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    iput-object p0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    .line 346
    .line 347
    :cond_13
    :goto_3
    return-void
.end method

.method public final updateUseThemeDefault()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled$1()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 31
    .line 32
    const-string/jumbo v0, "navigationbar_use_theme_default"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
