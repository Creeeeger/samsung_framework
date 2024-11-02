.class public final Lcom/android/systemui/controls/management/adapter/PanelHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final callback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;

.field public final panelLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/PanelHolder;->callback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;

    .line 6
    .line 7
    const p2, 0x7f0a02be

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/PanelHolder;->panelLayout:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainPanelModel;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;->panelActivity:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/PanelHolder;->callback:Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPanelUpdatedCallback;

    .line 14
    .line 15
    check-cast v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/systemui/controls/management/model/MainPanelModel;->pendingIntent:Landroid/app/PendingIntent;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/PanelHolder;->panelLayout:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    invoke-direct {v1, v0, p1, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPanelCallback$1$onPanelUpdated$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;Landroid/view/ViewGroup;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method
