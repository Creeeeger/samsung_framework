.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public mIsFolded:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mNotifUpdater:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

.field public final mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mMainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    .line 9
    .line 10
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addNotificationLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifLifetimeExtender;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    .line 12
    .line 13
    const-string v1, "SubscreenQuickReplyCoordinator"

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mNotifUpdater:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$$ExternalSyntheticLambda4;

    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$getFoldStateListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mMainHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;

    .line 35
    .line 36
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$registerSubscreenStateChangeListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->subscreenStateListenerList:Ljava/util/List;

    .line 42
    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator;->mQuickReplyExtender:Lcom/android/systemui/statusbar/notification/collection/coordinator/SubscreenQuickReplyCoordinator$SubscreenQuickReplyExtender;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/SelfTrackingLifetimeExtender;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
