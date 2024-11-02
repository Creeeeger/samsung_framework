.class public final Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "com.android.systemui.sensorprivacy.SensorPolicyAction"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->runnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->registered:Z

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->runnable:Ljava/lang/Runnable;

    .line 29
    .line 30
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->intentReceiver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->displayLifecycleObserver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method
