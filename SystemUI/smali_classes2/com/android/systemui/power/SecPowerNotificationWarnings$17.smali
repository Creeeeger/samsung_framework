.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$17;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

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
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 2
    .line 3
    iget-boolean p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    const-string p1, "SecPowerUI.Notification"

    .line 8
    .line 9
    const-string v0, "mWaterProtectionAlertDialog onClick"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v1, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 30
    .line 31
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
