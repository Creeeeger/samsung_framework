.class public final Lcom/android/systemui/qs/SecQSDetail$2$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/SecQSDetail$2;

.field public final synthetic val$state:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetail$2;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$2$3;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSDetail$2$3;->val$state:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail$2$3;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQSDetail$2$3;->val$state:Z

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mScanState:Z

    .line 8
    .line 9
    if-ne v1, p0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iput-boolean p0, v0, Lcom/android/systemui/qs/SecQSDetail;->mScanState:Z

    .line 13
    .line 14
    if-eqz p0, :cond_5

    .line 15
    .line 16
    iget-object p0, v0, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailTileSpec:Ljava/lang/String;

    .line 23
    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    :cond_1
    const-string p0, ""

    .line 27
    .line 28
    :cond_2
    const-string v1, "Wifi"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    const-string v1, "Bluetooth"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    move p0, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 49
    :goto_1
    if-eqz p0, :cond_5

    .line 50
    .line 51
    iget-object p0, v0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    iget-object p0, v0, Lcom/android/systemui/qs/SecQSDetail;->mQsDetailHeaderProgress:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :goto_2
    return-void
.end method
