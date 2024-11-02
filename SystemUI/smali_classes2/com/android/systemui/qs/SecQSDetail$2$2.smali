.class public final Lcom/android/systemui/qs/SecQSDetail$2$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/SecQSDetail$2;

.field public final synthetic val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSDetail$2;Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$2$2;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetail$2$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail$2$2;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail$2$2;->this$1:Lcom/android/systemui/qs/SecQSDetail$2;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSDetail$2;->this$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$2$2;->val$detail:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/SecQSDetail;->handleShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
