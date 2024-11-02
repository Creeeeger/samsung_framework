.class public final Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$2;

.field public callback:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$addCallback$5;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public userUnlocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->bgHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 9
    .line 10
    new-instance p2, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->intentFilter:Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-class p3, Landroid/os/UserManager;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/os/UserManager;

    .line 24
    .line 25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->userUnlocked:Z

    .line 34
    .line 35
    const-string p0, "android.intent.action.USER_UNLOCKED"

    .line 36
    .line 37
    invoke-virtual {p2, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_NEW_DEX:Z

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 13
    .line 14
    const-string/jumbo v1, "new_dex"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v3

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->userUnlocked:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v3

    .line 38
    :goto_1
    return v2
.end method
