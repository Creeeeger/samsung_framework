.class public final Lcom/android/systemui/qs/SecQSDetail$2$1;
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
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$2$1;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/qs/SecQSDetail$2$1;->val$state:Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail$2$1;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/qs/SecQSDetail$2$1;->val$state:Z

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/SecQSDetail;->handleToggleStateChanged(ZZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
