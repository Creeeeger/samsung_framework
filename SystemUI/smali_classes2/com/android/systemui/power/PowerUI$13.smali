.class public final Lcom/android/systemui/power/PowerUI$13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$13;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2e

    .line 8
    .line 9
    if-ne v0, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    const-string v2, "PowerUI"

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq p1, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "SContextListener - Move"

    .line 29
    .line 30
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$13;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 34
    .line 35
    iput-boolean v3, p1, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    iget v3, p1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    if-ne v3, v4, :cond_1

    .line 45
    .line 46
    iget p1, p1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    if-eq p1, v3, :cond_3

    .line 50
    .line 51
    :cond_1
    const-string p1, "Unregister SContextListener - From Listener"

    .line 52
    .line 53
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$13;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 57
    .line 58
    iget-object v2, p1, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/systemui/power/PowerUI;->mSContextListener:Lcom/android/systemui/power/PowerUI$13;

    .line 61
    .line 62
    invoke-virtual {v2, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$13;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRegistered:Z

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string p1, "SContextListener - No Move"

    .line 71
    .line 72
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$13;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method
