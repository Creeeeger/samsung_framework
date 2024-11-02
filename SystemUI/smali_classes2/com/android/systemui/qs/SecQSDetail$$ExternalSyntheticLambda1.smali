.class public final synthetic Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecQSDetail;

.field public final synthetic f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/SecQSDetail;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/SecQSDetail$$ExternalSyntheticLambda1;->f$2:Landroid/content/Intent;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/systemui/qs/SecQSDetail;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/qs/SecQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 26
    .line 27
    .line 28
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSDetail;->mQsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->getTile(Lcom/android/systemui/plugins/qs/DetailAdapter;)Lcom/android/systemui/plugins/qs/QSTile;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/systemui/plugins/qs/SQSTile;

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/SQSTile;->getTileMapKey()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/qs/SecQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 60
    .line 61
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 70
    .line 71
    const-string v0, "QPDE1007"

    .line 72
    .line 73
    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    return-void
.end method
