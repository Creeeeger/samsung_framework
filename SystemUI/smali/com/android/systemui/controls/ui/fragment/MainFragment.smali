.class public final Lcom/android/systemui/controls/ui/fragment/MainFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public final controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public listView:Landroidx/recyclerview/widget/RecyclerView;

.field public final listingController:Lcom/android/systemui/controls/management/ControlsListingController;

.field public mContext:Landroid/content/Context;

.field public mView:Landroid/view/View;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/MainFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/ui/CustomControlsUiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "MainFragment"

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
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-boolean p1, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    const v0, 0x7f0f0001

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 5
    .line 6
    .line 7
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const p2, 0x7f0a060f

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    new-instance p2, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeObserver;-><init>(Landroidx/appcompat/view/menu/SeslMenuItem;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 30
    .line 31
    check-cast p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    const-string p3, "MainFragment"

    .line 2
    .line 3
    const-string/jumbo v0, "onCreateView"

    .line 4
    .line 5
    .line 6
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const p3, 0x7f0d00fb

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mView:Landroid/view/View;

    .line 18
    .line 19
    const p2, 0x7f0a0609

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const v0, 0x7f0b0037

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mView:Landroid/view/View;

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    move-object p1, p2

    .line 54
    :cond_0
    const p3, 0x7f0a00b7

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const v0, 0x7f07023e

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const v1, 0x7f0701ee

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sub-int/2addr p3, v0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .line 97
    if-eqz v1, :cond_1

    .line 98
    .line 99
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    move-object v0, p2

    .line 103
    :goto_0
    if-eqz v0, :cond_2

    .line 104
    .line 105
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 106
    .line 107
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 108
    .line 109
    invoke-virtual {v0, p3, v1, p3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 113
    .line 114
    .line 115
    :cond_2
    const/4 p3, 0x1

    .line 116
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listView:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    iget-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 122
    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    .line 127
    .line 128
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 129
    .line 130
    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 131
    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 135
    .line 136
    sget-object p3, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    .line 137
    .line 138
    invoke-virtual {p1, p3}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mView:Landroid/view/View;

    .line 142
    .line 143
    if-nez p0, :cond_5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    move-object p2, p0

    .line 147
    :goto_1
    return-object p2
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 10
    .line 11
    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 23
    .line 24
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onOptionsItemSelected item = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "MainFragment"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const v0, 0x7f0a060f

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 36
    .line 37
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;

    .line 38
    .line 39
    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v1, p0

    .line 55
    :goto_0
    const-class p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 56
    .line 57
    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 58
    .line 59
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_2
    const v0, 0x7f0a032b

    .line 65
    .line 66
    .line 67
    if-ne p1, v0, :cond_9

    .line 68
    .line 69
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 74
    .line 75
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuDevicesToShow;

    .line 76
    .line 77
    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    .line 78
    .line 79
    invoke-direct {v0, v2}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuDevicesToShow;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 86
    .line 87
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlAdapter:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    iget-object v0, v0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->models:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v3, v2

    .line 111
    check-cast v3, Lcom/android/systemui/controls/management/model/MainModel;

    .line 112
    .line 113
    instance-of v3, v3, Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 114
    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move-object v2, v1

    .line 119
    :goto_1
    check-cast v2, Lcom/android/systemui/controls/management/model/MainModel;

    .line 120
    .line 121
    if-eqz v2, :cond_7

    .line 122
    .line 123
    check-cast v2, Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 124
    .line 125
    iget-object v0, v2, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    new-instance v2, Landroid/content/Intent;

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    if-nez v3, :cond_6

    .line 134
    .line 135
    move-object v3, v1

    .line 136
    :cond_6
    const-class v4, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 137
    .line 138
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->listingController:Lcom/android/systemui/controls/management/ControlsListingController;

    .line 142
    .line 143
    check-cast v3, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    const-string v4, "extra_app_label"

    .line 150
    .line 151
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    const-string v3, "android.intent.extra.COMPONENT_NAME"

    .line 155
    .line 156
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 157
    .line 158
    .line 159
    const-class v0, Lcom/android/systemui/controls/ui/CustomControlsActivity;

    .line 160
    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v3, "extra_from_activity"

    .line 170
    .line 171
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 175
    .line 176
    :cond_7
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 177
    .line 178
    if-eqz p1, :cond_c

    .line 179
    .line 180
    check-cast p1, Landroid/content/Intent;

    .line 181
    .line 182
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 183
    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    sget-object p0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 187
    .line 188
    iget-object p0, v0, Landroidx/fragment/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v1, "Fragment "

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string p0, " not attached to Activity"

    .line 207
    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    throw p1

    .line 219
    :cond_9
    const v0, 0x7f0a0a0e

    .line 220
    .line 221
    .line 222
    if-ne p1, v0, :cond_d

    .line 223
    .line 224
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 225
    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 229
    .line 230
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;

    .line 231
    .line 232
    sget-object v2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$MainScreen;

    .line 233
    .line 234
    invoke-direct {v0, v2}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 238
    .line 239
    .line 240
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 241
    .line 242
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    if-nez p0, :cond_b

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_b
    move-object v1, p0

    .line 248
    :goto_2
    const-class p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;

    .line 249
    .line 250
    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 251
    .line 252
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .line 254
    .line 255
    :cond_c
    :goto_3
    const/4 p0, 0x1

    .line 256
    return p0

    .line 257
    :cond_d
    const/4 p0, 0x0

    .line 258
    return p0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 2
    .line 3
    check-cast v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onPrepareOptionsMenu selectedItem = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "MainFragment"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 32
    .line 33
    check-cast v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;

    .line 39
    .line 40
    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 44
    .line 45
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/MainFragment;->controlsUiController:Lcom/android/systemui/controls/ui/CustomControlsUiController;

    .line 56
    .line 57
    check-cast p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 60
    .line 61
    instance-of p0, p0, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 62
    .line 63
    xor-int/lit8 p0, p0, 0x1

    .line 64
    .line 65
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 66
    .line 67
    .line 68
    return-void
.end method
