.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

.field public appName:Ljava/lang/CharSequence;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public cancelLoadRunnable:Ljava/lang/Runnable;

.field public component:Landroid/content/ComponentName;

.field public final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public controlsListLayout:Landroid/widget/LinearLayout;

.field public controlsMap:Ljava/util/Map;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public currentFavorites:Ljava/util/List;

.field public currentOrder:Ljava/util/List;

.field public currentPosition:Landroid/os/Parcelable;

.field public customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

.field public final customController:Lcom/android/systemui/controls/controller/CustomControlsController;

.field public customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

.field public final initialFavoriteIds:Ljava/util/Set;

.field public isAutoRemove:Z

.field public isFromMainActivity:Z

.field public isLoadingFinished:Z

.field public isPagerLoaded:Z

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public listView:Landroidx/recyclerview/widget/RecyclerView;

.field public loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

.field public noItemsLayout:Landroid/widget/LinearLayout;

.field public requestOrder:Ljava/util/List;

.field public retryDialog:Landroidx/appcompat/app/AlertDialog;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5, p2, p9, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 23
    .line 24
    const-string p1, "CustomControlsFavoritingActivity"

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->activity:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 29
    .line 30
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    .line 35
    .line 36
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final changeDataAndShow()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 3
    .line 4
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    :cond_1
    iput-object v2, v0, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    move-object v0, v1

    .line 55
    :cond_4
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    if-nez p0, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    move-object v1, p0

    .line 65
    :goto_0
    const/16 p0, 0x8

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    return-void
.end method

.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final loadControls()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$3;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 21
    .line 22
    check-cast p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->loadForComponent(Landroid/content/ComponentName;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final loadForComponent(Lcom/android/systemui/controls/controller/ControlsController$LoadData;Z)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->allControls:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iput-boolean v4, v3, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->favoritesIds:Ljava/util/List;

    .line 41
    .line 42
    :cond_1
    move-object v5, v1

    .line 43
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    .line 44
    .line 45
    iget-object v8, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    iget-boolean p1, p1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;->errorOnLoad:Z

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    move-object v3, v2

    .line 82
    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    .line 83
    .line 84
    iget-boolean v3, v3, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    .line 85
    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    .line 96
    .line 97
    if-eqz p1, :cond_7

    .line 98
    .line 99
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isAutoRemove:Z

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    new-instance p1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v2, v1

    .line 123
    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    .line 124
    .line 125
    iget-boolean v2, v2, Lcom/android/systemui/controls/ControlStatus;->removed:Z

    .line 126
    .line 127
    if-nez v2, :cond_5

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    move-object v4, p1

    .line 134
    goto :goto_3

    .line 135
    :cond_7
    move-object v4, v0

    .line 136
    :goto_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lcom/android/systemui/controls/ControlStatus;

    .line 151
    .line 152
    sget-object v1, Lcom/android/systemui/controls/ui/util/ControlExtension;->Companion:Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_b

    .line 177
    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    move-object v2, v1

    .line 183
    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    .line 184
    .line 185
    iget-object v2, v2, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-nez v2, :cond_9

    .line 192
    .line 193
    const-string v2, ""

    .line 194
    .line 195
    :cond_9
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-nez v3, :cond_a

    .line 200
    .line 201
    new-instance v3, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_a
    check-cast v3, Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_b
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    .line 216
    .line 217
    new-instance p1, Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 218
    .line 219
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    iget-object v6, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    move-object v2, p1

    .line 227
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V

    .line 228
    .line 229
    .line 230
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 231
    .line 232
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    .line 233
    .line 234
    if-eqz p1, :cond_f

    .line 235
    .line 236
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    xor-int/lit8 p1, p1, 0x1

    .line 243
    .line 244
    if-eqz p1, :cond_c

    .line 245
    .line 246
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 250
    .line 251
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 255
    .line 256
    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 257
    .line 258
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-static {p1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    .line 271
    .line 272
    const/16 v1, 0xa

    .line 273
    .line 274
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .line 280
    .line 281
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_d

    .line 290
    .line 291
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 296
    .line 297
    iget-object v1, v1, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_d
    move-object p1, v0

    .line 304
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 305
    .line 306
    if-nez v0, :cond_e

    .line 307
    .line 308
    const/4 v0, 0x0

    .line 309
    :cond_e
    sget-object v1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$1;->INSTANCE:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$1;

    .line 310
    .line 311
    new-instance v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;

    .line 312
    .line 313
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {v8, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 317
    .line 318
    .line 319
    :cond_f
    if-eqz p2, :cond_10

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->changeDataAndShow()V

    .line 322
    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_10
    new-instance p1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadForComponent$4;

    .line 326
    .line 327
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadForComponent$4;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 328
    .line 329
    .line 330
    invoke-interface {v8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 331
    .line 332
    .line 333
    :goto_8
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_2

    .line 12
    .line 13
    const-string p1, "OrderList"

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-boolean p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->requestOrder:Ljava/util/List;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    :cond_1
    new-instance p3, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$onActivityResult$1$1;

    .line 32
    .line 33
    invoke-direct {p3, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$onActivityResult$1$1;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;

    .line 37
    .line 38
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$refreshStructureOrdering$2;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->executor:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->updateFavorites()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "extra_app_label"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "extra_from_activity"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-class v2, Lcom/android/systemui/controls/ui/CustomControlsActivity;

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v2, v1

    .line 48
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isFromMainActivity:Z

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v4, "onCreate isFromMainActivity = "

    .line 53
    .line 54
    .line 55
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", class = "

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v2, "android.intent.extra.COMPONENT_NAME"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/content/ComponentName;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 91
    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    const-string v0, "current_favorites"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentFavorites:Ljava/util/List;

    .line 101
    .line 102
    const-string/jumbo v0, "structure_position"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentPosition:Landroid/os/Parcelable;

    .line 110
    .line 111
    :cond_1
    const p1, 0x7f0d0093

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 115
    .line 116
    .line 117
    const p1, 0x7f0a0bf4

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const/4 v0, 0x1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    .line 143
    .line 144
    :cond_2
    const p1, 0x7f0a0609

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/widget/FrameLayout;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    const v3, 0x7f0b0037

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 169
    .line 170
    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 171
    .line 172
    .line 173
    const p1, 0x7f0a02b8

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Landroid/widget/LinearLayout;

    .line 181
    .line 182
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 183
    .line 184
    const p1, 0x7f0a0747

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Landroid/widget/LinearLayout;

    .line 192
    .line 193
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 194
    .line 195
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 196
    .line 197
    const/4 v2, 0x0

    .line 198
    if-nez p1, :cond_3

    .line 199
    .line 200
    move-object p1, v2

    .line 201
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 205
    .line 206
    if-nez p1, :cond_4

    .line 207
    .line 208
    move-object p1, v2

    .line 209
    :cond_4
    const/16 v3, 0x8

    .line 210
    .line 211
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    const p1, 0x7f0a0ae8

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Landroid/view/ViewStub;

    .line 222
    .line 223
    const v3, 0x7f0d00af

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 230
    .line 231
    .line 232
    new-instance p1, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;

    .line 233
    .line 234
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$bindViews$layoutCompletedCallback$1;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 235
    .line 236
    .line 237
    iget-object v4, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 238
    .line 239
    iget-object v5, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 240
    .line 241
    iget-object v6, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 242
    .line 243
    iget-object v7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 244
    .line 245
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 246
    .line 247
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentPosition:Landroid/os/Parcelable;

    .line 254
    .line 255
    if-eqz v3, :cond_5

    .line 256
    .line 257
    move-object v9, p1

    .line 258
    goto :goto_1

    .line 259
    :cond_5
    move-object v9, v2

    .line 260
    :goto_1
    new-instance p1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 261
    .line 262
    move-object v3, p1

    .line 263
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;)V

    .line 264
    .line 265
    .line 266
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 267
    .line 268
    const p1, 0x7f0a05ca

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 276
    .line 277
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 278
    .line 279
    if-nez v3, :cond_6

    .line 280
    .line 281
    move-object v3, v2

    .line 282
    :cond_6
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 286
    .line 287
    .line 288
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    check-cast p1, Landroidx/activity/ComponentActivity$NonConfigurationInstances;

    .line 295
    .line 296
    if-eqz p1, :cond_7

    .line 297
    .line 298
    iget-object p1, p1, Landroidx/activity/ComponentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_7
    move-object p1, v2

    .line 302
    :goto_2
    instance-of v3, p1, Lcom/android/systemui/controls/management/SaveWrapper;

    .line 303
    .line 304
    if-eqz v3, :cond_8

    .line 305
    .line 306
    move-object v2, p1

    .line 307
    check-cast v2, Lcom/android/systemui/controls/management/SaveWrapper;

    .line 308
    .line 309
    :cond_8
    if-eqz v2, :cond_a

    .line 310
    .line 311
    iget-object p1, v2, Lcom/android/systemui/controls/management/SaveWrapper;->data:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    .line 312
    .line 313
    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    .line 314
    .line 315
    if-eqz p1, :cond_9

    .line 316
    .line 317
    move v1, v0

    .line 318
    :cond_9
    iput-boolean v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isPagerLoaded:Z

    .line 319
    .line 320
    if-eqz p1, :cond_a

    .line 321
    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadForComponent(Lcom/android/systemui/controls/controller/ControlsController$LoadData;Z)V

    .line 323
    .line 324
    .line 325
    :cond_a
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 326
    .line 327
    if-eqz p1, :cond_b

    .line 328
    .line 329
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 330
    .line 331
    sget-object p1, Lcom/android/systemui/controls/ui/util/SALogger$Screen$ChooseDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$ChooseDevices;

    .line 332
    .line 333
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 334
    .line 335
    .line 336
    :cond_b
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-le v0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/high16 v0, 0x7f0f0000

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return v1
.end method

.method public final onDestroy()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->cancelLoadRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->retryDialog:Landroidx/appcompat/app/AlertDialog;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 20
    .line 21
    if-eqz v0, :cond_9

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 24
    .line 25
    if-eqz v0, :cond_9

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_8

    .line 31
    .line 32
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/2addr v2, v1

    .line 43
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move v3, v1

    .line 52
    move v4, v3

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_7

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ljava/util/List;

    .line 64
    .line 65
    new-instance v6, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    move-object v9, v8

    .line 85
    check-cast v9, Lcom/android/systemui/controls/ControlStatus;

    .line 86
    .line 87
    iget-boolean v9, v9, Lcom/android/systemui/controls/ControlStatus;->favorite:Z

    .line 88
    .line 89
    if-eqz v9, :cond_2

    .line 90
    .line 91
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    add-int/2addr v1, v6

    .line 100
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    add-int/2addr v3, v6

    .line 105
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_6

    .line 119
    .line 120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    move-object v8, v7

    .line 125
    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    .line 126
    .line 127
    iget-object v8, v8, Lcom/android/systemui/controls/ControlStatus;->control:Landroid/service/controls/Control;

    .line 128
    .line 129
    invoke-virtual {v8}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    if-nez v8, :cond_4

    .line 134
    .line 135
    const-string v8, ""

    .line 136
    .line 137
    :cond_4
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    if-nez v9, :cond_5

    .line 142
    .line 143
    new-instance v9, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_5
    check-cast v9, Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    add-int/2addr v4, v5

    .line 166
    goto :goto_0

    .line 167
    :cond_7
    move v7, v1

    .line 168
    move v9, v2

    .line 169
    move v8, v3

    .line 170
    move v10, v4

    .line 171
    goto :goto_3

    .line 172
    :cond_8
    move v7, v1

    .line 173
    move v8, v7

    .line 174
    move v9, v8

    .line 175
    move v10, v9

    .line 176
    :goto_3
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 179
    .line 180
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    move-object v5, v0

    .line 188
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/controls/ui/util/SALogger$Event$LeftChooseDevices;-><init>(Ljava/lang/String;IIII)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-super {p0}, Lcom/android/systemui/controls/BaseActivity;->onDestroy()V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v1, 0x7f0a08b1

    .line 16
    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    new-instance v0, Landroid/content/Intent;

    .line 29
    .line 30
    const-class v1, Lcom/android/systemui/controls/management/ControlsReorderActivity;

    .line 31
    .line 32
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    .line 41
    .line 42
    check-cast p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v1, "extra_structure_lists"

    .line 45
    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 54
    .line 55
    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Event$Reorder;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$Reorder;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    const/16 p1, 0x3e8

    .line 61
    .line 62
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    :cond_3
    :goto_0
    return v2
.end method

.method public final onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isPagerLoaded:Z

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    move-object v1, v0

    .line 24
    move-object v3, v4

    .line 25
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :cond_0
    iput-object v0, v1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isPagerLoaded:Z

    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/android/systemui/controls/management/SaveWrapper;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadData:Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/SaveWrapper;-><init>(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/16 v3, 0xa

    .line 19
    .line 20
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "current_favorites"

    .line 52
    .line 53
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    move-object v0, v1

    .line 61
    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager$1()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_4
    const-string/jumbo v0, "structure_position"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    .line 76
    .line 77
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final updateFavorites()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isLoadingFinished:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->currentOrder:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_10

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/CharSequence;

    .line 35
    .line 36
    iget-object v6, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    .line 37
    .line 38
    if-eqz v6, :cond_1

    .line 39
    .line 40
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Ljava/util/List;

    .line 47
    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    iget-object v7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 51
    .line 52
    if-nez v7, :cond_2

    .line 53
    .line 54
    move-object v7, v2

    .line 55
    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    new-instance v8, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    check-cast v7, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_7

    .line 75
    .line 76
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    move-object v10, v9

    .line 81
    check-cast v10, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 82
    .line 83
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-eqz v11, :cond_4

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-eqz v12, :cond_6

    .line 99
    .line 100
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v12

    .line 104
    check-cast v12, Lcom/android/systemui/controls/ControlStatus;

    .line 105
    .line 106
    invoke-virtual {v12}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    iget-object v13, v10, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_5

    .line 117
    .line 118
    move v10, v4

    .line 119
    goto :goto_3

    .line 120
    :cond_6
    :goto_2
    move v10, v3

    .line 121
    :goto_3
    if-eqz v10, :cond_3

    .line 122
    .line 123
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    new-instance v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 128
    .line 129
    iget-object v7, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 130
    .line 131
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v7, v5, v8}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->controlsMap:Ljava/util/Map;

    .line 142
    .line 143
    if-eqz v1, :cond_10

    .line 144
    .line 145
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_10

    .line 160
    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Ljava/util/Map$Entry;

    .line 166
    .line 167
    iget-object v6, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customModel:Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 168
    .line 169
    if-nez v6, :cond_a

    .line 170
    .line 171
    move-object v6, v2

    .line 172
    :cond_a
    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getFavorites()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    new-instance v7, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    check-cast v6, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eqz v8, :cond_f

    .line 192
    .line 193
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    move-object v9, v8

    .line 198
    check-cast v9, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 199
    .line 200
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    check-cast v10, Ljava/lang/Iterable;

    .line 205
    .line 206
    instance-of v11, v10, Ljava/util/Collection;

    .line 207
    .line 208
    if-eqz v11, :cond_c

    .line 209
    .line 210
    move-object v11, v10

    .line 211
    check-cast v11, Ljava/util/Collection;

    .line 212
    .line 213
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-eqz v11, :cond_c

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_c
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-eqz v11, :cond_e

    .line 229
    .line 230
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    check-cast v11, Lcom/android/systemui/controls/ControlStatus;

    .line 235
    .line 236
    invoke-virtual {v11}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v11

    .line 240
    iget-object v12, v9, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    if-eqz v11, :cond_d

    .line 247
    .line 248
    move v9, v4

    .line 249
    goto :goto_7

    .line 250
    :cond_e
    :goto_6
    move v9, v3

    .line 251
    :goto_7
    if-eqz v9, :cond_b

    .line 252
    .line 253
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    xor-int/2addr v6, v4

    .line 262
    if-eqz v6, :cond_9

    .line 263
    .line 264
    new-instance v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 265
    .line 266
    iget-object v8, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 267
    .line 268
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    check-cast v5, Ljava/lang/CharSequence;

    .line 276
    .line 277
    invoke-direct {v6, v8, v5, v7}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto/16 :goto_4

    .line 284
    .line 285
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .line 286
    .line 287
    const/16 v2, 0xa

    .line 288
    .line 289
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_12

    .line 305
    .line 306
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 311
    .line 312
    iget-object v6, v6, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 313
    .line 314
    new-instance v7, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 317
    .line 318
    .line 319
    move-result v8

    .line 320
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_11

    .line 332
    .line 333
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    check-cast v8, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 338
    .line 339
    iget-object v8, v8, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_11
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->initialFavoriteIds:Ljava/util/Set;

    .line 354
    .line 355
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    xor-int/2addr v1, v4

    .line 364
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    .line 365
    .line 366
    if-nez v1, :cond_13

    .line 367
    .line 368
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 369
    .line 370
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    move-object v5, v2

    .line 374
    check-cast v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 375
    .line 376
    invoke-virtual {v5, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getActiveFlag(Landroid/content/ComponentName;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    if-eqz v1, :cond_14

    .line 381
    .line 382
    :cond_13
    move v3, v4

    .line 383
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eqz v4, :cond_15

    .line 392
    .line 393
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 398
    .line 399
    iget-object v4, v4, Lcom/android/systemui/controls/controller/StructureInfo;->customStructureInfo:Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;

    .line 400
    .line 401
    iput-boolean v3, v4, Lcom/android/systemui/controls/controller/CustomStructureInfoImpl;->active:Z

    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_16

    .line 409
    .line 410
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 411
    .line 412
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isFromMainActivity:Z

    .line 416
    .line 417
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    invoke-static {v0, p0}, Lcom/android/systemui/controls/controller/Favorites;->removeStructures(Landroid/content/ComponentName;Z)Z

    .line 428
    .line 429
    .line 430
    goto :goto_b

    .line 431
    :cond_16
    new-instance v1, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 432
    .line 433
    iget-object v3, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->component:Landroid/content/ComponentName;

    .line 434
    .line 435
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    invoke-direct {v1, v3, v0}, Lcom/android/systemui/controls/controller/ComponentInfo;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 439
    .line 440
    .line 441
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->isFromMainActivity:Z

    .line 442
    .line 443
    check-cast v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 444
    .line 445
    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->replaceFavoritesForComponent(Lcom/android/systemui/controls/controller/ComponentInfo;Z)V

    .line 446
    .line 447
    .line 448
    :goto_b
    return-void
.end method
