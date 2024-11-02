.class public final Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1$onFolderStateChanged$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1$onFolderStateChanged$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1$onFolderStateChanged$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->registered:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->runnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->intentReceiver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->displayLifecycleObserver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
