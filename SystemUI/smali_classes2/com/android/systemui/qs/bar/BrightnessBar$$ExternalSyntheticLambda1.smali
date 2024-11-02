.class public final synthetic Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/brightness/BrightnessDetail;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/settings/brightness/BrightnessDetail$1;

    .line 15
    .line 16
    new-instance v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p0, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 28
    .line 29
    const-string p1, "QPPE1010"

    .line 30
    .line 31
    const-string v0, "QUICK_PANEL_LAYOUT"

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "QPD101"

    .line 37
    .line 38
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
