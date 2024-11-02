.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$2$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

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
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupTileEditButtons$2$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->isCurrentTopEdit:Z

    .line 7
    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditTilesActivity;

    .line 11
    .line 12
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->CHILD_ACTIVITY_REQUEST_CODE:I

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "QPPE1008"

    .line 31
    .line 32
    const-string v0, "location"

    .line 33
    .line 34
    const-string v1, "last button"

    .line 35
    .line 36
    const-string v2, "QUICK_PANEL_BUTTON"

    .line 37
    .line 38
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
