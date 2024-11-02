.class public final Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final displayLifecycleObserver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;

.field public final intentReceiver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;

.field public registered:Z

.field public runnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->bgHandler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->displayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 9
    .line 10
    new-instance p1, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;-><init>(Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->displayLifecycleObserver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;

    .line 16
    .line 17
    new-instance p1, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;-><init>(Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->intentReceiver:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$intentReceiver$1;

    .line 23
    .line 24
    return-void
.end method
