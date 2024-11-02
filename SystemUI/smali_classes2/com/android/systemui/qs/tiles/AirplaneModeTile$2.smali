.class public final Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

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
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_SUBSCREEN:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getInstance(I)Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0, v0}, Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;->registerReceiver(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->getInstance(I)Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0, v0}, Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;->unRegisterReceiver(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
