.class public final synthetic Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "QPPE2023"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v0, "com.android.systemui.qp.SubscreenBrightnessDetailActivity"

    .line 26
    .line 27
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
