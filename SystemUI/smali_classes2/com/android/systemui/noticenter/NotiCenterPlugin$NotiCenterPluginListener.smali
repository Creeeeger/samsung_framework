.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# instance fields
.field public final notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 2
    .line 3
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "onPluginConnected : "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sput-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    .line 36
    .line 37
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    .line 38
    .line 39
    invoke-interface {p1, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Landroid/content/ComponentName;

    .line 43
    .line 44
    const-string p2, "com.samsung.systemui.notilus"

    .line 45
    .line 46
    const-string v0, "com.samsung.systemui.notilus.service.NotificationListener"

    .line 47
    .line 48
    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    invoke-virtual {p2, p1, p0, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 2
    .line 3
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "onPluginDisconnected : "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    sput-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    sput-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    .line 37
    .line 38
    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    .line 39
    .line 40
    invoke-virtual {p1, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onChangedVisibilityOnKeyguard(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onNotiStarPanelShowOnKeyguard(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;->onNoclearUpdate(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
