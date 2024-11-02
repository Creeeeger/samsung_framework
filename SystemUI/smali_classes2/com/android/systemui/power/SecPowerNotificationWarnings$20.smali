.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings$20;
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
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

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
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 20
    .line 21
    iget-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
