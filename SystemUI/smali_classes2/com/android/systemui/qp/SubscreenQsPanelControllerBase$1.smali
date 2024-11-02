.class public final Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    .line 1
    const-string v0, "onFolderStateChanged"

    .line 2
    .line 3
    const-string v1, "SubscreenQsPanelControllerBase"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$1;->this$0:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setListening(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->removeAllTileViews()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    .line 24
    .line 25
    check-cast p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mSubScreenTileHost:Lcom/android/systemui/qs/SecSubScreenQSTileHost;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/qs/SecSubScreenQSTileHost;->mCallbacks:Ljava/util/List;

    .line 38
    .line 39
    check-cast p1, Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qp/SubscreenQsPanelControllerBase$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setTiles()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubscreenQsPanelControllerBase;->setListening(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    check-cast p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->addPagedTileLayout()V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 63
    .line 64
    check-cast p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updateResources()V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method
