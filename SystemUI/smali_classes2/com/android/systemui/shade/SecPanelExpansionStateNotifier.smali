.class public final Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

.field public mStatusBarManager:Landroid/app/SemStatusBarManager;

.field public final mTicketGroup:Ljava/util/HashMap;

.field public final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/BootAnimationFinishedCache;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mTicketGroup:Ljava/util/HashMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;-><init>(Ljava/util/function/Consumer;Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 32
    .line 33
    const-class p1, Lcom/android/systemui/UiOffloadThread;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/android/systemui/UiOffloadThread;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 42
    .line 43
    new-instance p1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;

    .line 44
    .line 45
    invoke-direct {p1, p0, p3, p2, p4}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    .line 46
    .line 47
    .line 48
    check-cast p5, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    .line 49
    .line 50
    invoke-virtual {p5, p1}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final registerTicket(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "registerTicket() name:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SecPanelExpansionStateNotifier"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mTicketGroup:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$SecPanelExpansionStateTicket;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void
.end method
