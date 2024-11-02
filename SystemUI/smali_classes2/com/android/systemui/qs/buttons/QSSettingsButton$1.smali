.class public final Lcom/android/systemui/qs/buttons/QSSettingsButton$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/buttons/QSSettingsButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 16
    .line 17
    new-instance p1, Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/android/systemui/doze/AODUi$$ExternalSyntheticLambda0;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSettingsButton;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string p1, "QSSettingsButton"

    .line 32
    .line 33
    const-string v0, "Click settings button."

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSettingsButton;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 39
    .line 40
    new-instance p1, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v0, "android.settings.SETTINGS"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    invoke-interface {p0, p1, v0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lcom/android/systemui/util/SystemUIAnalytics;->sCurrentScreenID:Ljava/lang/String;

    .line 52
    .line 53
    const-string p1, "QPPE1003"

    .line 54
    .line 55
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
