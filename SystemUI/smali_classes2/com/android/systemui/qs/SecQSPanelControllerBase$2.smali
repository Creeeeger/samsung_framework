.class public final Lcom/android/systemui/qs/SecQSPanelControllerBase$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/plugins/qs/SQSTile$SCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

.field public final synthetic val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSPanelControllerBase;Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHandler:Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onScanStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->scanState:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/qs/SecQSDetail$2$3;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/SecQSDetail$2$3;-><init>(Lcom/android/systemui/qs/SecQSDetail$2;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final onScrollToDetail(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 6
    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/SecQSDetail$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecQSDetail$2;II)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onShowDetail(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onToggleStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 6
    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailCallback:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/android/systemui/qs/SecQSDetail$2$1;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/SecQSDetail$2$1;-><init>(Lcom/android/systemui/qs/SecQSDetail$2;Z)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final onUpdateDetail()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->this$0:Lcom/android/systemui/qs/SecQSPanelControllerBase;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase$2;->val$tileRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    .line 6
    .line 7
    if-eq v1, p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mHandler:Lcom/android/systemui/qs/SecQSPanelControllerBase$H;

    .line 12
    .line 13
    const/16 v2, 0x64

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
