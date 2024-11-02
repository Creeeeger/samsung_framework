.class public final Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor$displayReadyRunnable$1;->this$0:Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/CoverDisplayWidgetInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 25
    .line 26
    const-string/jumbo v1, "show_navigation_for_subscreen"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    move p0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move p0, v3

    .line 42
    :goto_0
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    move v3, v2

    .line 55
    :cond_1
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->onDisplayReady(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_1
    return-void
.end method
