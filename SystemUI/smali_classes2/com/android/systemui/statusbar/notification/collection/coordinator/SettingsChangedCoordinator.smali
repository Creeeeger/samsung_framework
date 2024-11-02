.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final mSettingsCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;

.field public final notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;->notifLiveDataStoreImpl:Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;->mSettingsCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 1
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    const-string/jumbo v0, "show_notification_snooze"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    filled-new-array {v1}, [Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator;->mSettingsCallback:Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;

    .line 21
    .line 22
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SettingsChangedCoordinator$mSettingsCallback$1;->onChanged(Landroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
