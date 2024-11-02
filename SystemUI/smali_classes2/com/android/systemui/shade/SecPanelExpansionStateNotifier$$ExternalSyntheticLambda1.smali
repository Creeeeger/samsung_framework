.class public final synthetic Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

.field public final synthetic f$1:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final synthetic f$2:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final synthetic f$3:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onBootAnimationFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$1;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$1;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setStatusBarState(I)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda3;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$$ExternalSyntheticLambda1;->f$3:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
