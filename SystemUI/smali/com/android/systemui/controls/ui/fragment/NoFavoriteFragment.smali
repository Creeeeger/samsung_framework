.class public final Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

.field public final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

.field public final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

.field public mContext:Landroid/content/Context;

.field public mView:Landroid/view/View;

.field public final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "NoFavoriteFragment"

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
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

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
    .locals 2

    .line 1
    const-string v0, "NoFavoriteFragment"

    .line 2
    .line 3
    const-string/jumbo v1, "onCreateOptionsMenu"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0f0001

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    const p2, 0x7f0a032b

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    .line 19
    .line 20
    .line 21
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const p2, 0x7f0a060f

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroidx/appcompat/view/menu/SeslMenuItem;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    new-instance p2, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeObserver;-><init>(Landroidx/appcompat/view/menu/SeslMenuItem;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 44
    .line 45
    check-cast p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    .line 48
    .line 49
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "NoFavoriteFragment"

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
    const p3, 0x7f0d00fd

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
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mView:Landroid/view/View;

    .line 18
    .line 19
    const p2, 0x7f0a0610

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/Button;

    .line 27
    .line 28
    new-instance p2, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;

    .line 29
    .line 30
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;-><init>(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;Landroid/widget/Button;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    sget-object p2, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 37
    .line 38
    const p3, 0x7f070256

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p1, p3}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    .line 42
    .line 43
    .line 44
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 49
    .line 50
    sget-object p2, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendScreenView(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mView:Landroid/view/View;

    .line 56
    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    :cond_1
    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    const-string v0, "NoFavoriteFragment"

    .line 2
    .line 3
    const-string/jumbo v1, "onDestroy"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 18
    .line 19
    check-cast v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeObserver:Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 31
    .line 32
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a060f

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v0, :cond_2

    .line 11
    .line 12
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 17
    .line 18
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;

    .line 19
    .line 20
    sget-object v3, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    .line 21
    .line 22
    invoke-direct {v0, v3}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuManageApp;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, p0

    .line 36
    :goto_0
    const-class p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 37
    .line 38
    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 39
    .line 40
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const v0, 0x7f0a0a0e

    .line 45
    .line 46
    .line 47
    if-ne p1, v0, :cond_5

    .line 48
    .line 49
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 54
    .line 55
    new-instance v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;

    .line 56
    .line 57
    sget-object v3, Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Screen$NoDeviceSelected;

    .line 58
    .line 59
    invoke-direct {v0, v3}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMenuSetting;-><init>(Lcom/android/systemui/controls/ui/util/SALogger$Screen;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move-object v1, p0

    .line 73
    :goto_1
    const-class p0, Lcom/android/systemui/controls/ui/ControlsSettingActivity;

    .line 74
    .line 75
    check-cast p1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;

    .line 76
    .line 77
    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarterImpl;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/4 v2, 0x0

    .line 82
    :goto_2
    return v2
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 6
    .line 7
    check-cast p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
