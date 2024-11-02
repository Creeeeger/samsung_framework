.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;
.super Landroid/app/TaskStackListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final callback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->callback:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 13
    .line 14
    const-string v1, "large_cover_screen_navigation"

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
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_2

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget-object p2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    .line 45
    .line 46
    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask$onTaskFocusChanged$1;-><init>(ILcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    return-void
.end method
