.class public final Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setLcdOn(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setLcdOn(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setLcdOn(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier$2;->this$0:Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateNotifier;->mModel:Lcom/android/systemui/shade/SecPanelExpansionStateModel;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setLcdOn(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
