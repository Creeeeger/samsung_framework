.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangedVisibilityOnKeyguard(Z)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onNoclearAppListUpdate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string p0, "NoclearAppList"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toCollection(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->noclearAppList:Ljava/util/HashSet;

    .line 39
    .line 40
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    .line 45
    .line 46
    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearAppListUpdate$1;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearAppListUpdate$1;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final onNoclearUpdate(Z)V
    .locals 0

    .line 1
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sput-boolean p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->noclearEnabled:Z

    .line 7
    .line 8
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onNoclearUpdate$1;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onNotiCenterPanelUpdate(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onNotiStarPanelShowOnKeyguard(Z)V
    .locals 0

    .line 1
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchNotiStarState(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
