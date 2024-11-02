.class public final Lcom/android/systemui/qs/bar/BudsBar$initialize$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/BudsBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/BudsBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar$initialize$2;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BudsBar$initialize$2;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/bar/BudsBar;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 4
    .line 5
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar$initialize$2;->this$0:Lcom/android/systemui/qs/bar/BudsBar;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BudsBar;->soundCraftAdapter:Ldagger/Lazy;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object p0, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 41
    .line 42
    const-string p1, "QPPE1031"

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
