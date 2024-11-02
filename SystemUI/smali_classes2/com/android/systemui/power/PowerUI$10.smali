.class public final Lcom/android/systemui/power/PowerUI$10;
.super Landroid/telephony/PhoneStateListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "mPhoneStateListener onCallStateChanged(): state= "

    .line 2
    .line 3
    const-string v0, " mIsShutdownTaskDelayed = "

    .line 4
    .line 5
    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    .line 12
    .line 13
    const-string v1, "PowerUI"

    .line 14
    .line 15
    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 19
    .line 20
    iput p1, p2, Lcom/android/systemui/power/PowerUI;->mCallState:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-boolean v1, p2, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iput-boolean v0, p2, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    .line 30
    .line 31
    iget v1, p2, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-ne v2, v1, :cond_0

    .line 35
    .line 36
    iget-object p2, p2, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "runOverheatShutdownTask - Delay time = 10000"

    .line 42
    .line 43
    .line 44
    const-string v2, "SecPowerUI.Notification"

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v1, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 50
    .line 51
    const/16 v2, 0x2710

    .line 52
    .line 53
    int-to-long v2, v2

    .line 54
    iget-object p2, p2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    .line 55
    .line 56
    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWillOverheatShutdownWarning()V

    .line 64
    .line 65
    .line 66
    :cond_0
    if-nez p1, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$10;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    .line 81
    .line 82
    :goto_0
    return-void
.end method
