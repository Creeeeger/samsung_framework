.class public final Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;


# direct methods
.method public constructor <init>(Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;->bgHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v0, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1$onFolderStateChanged$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil$displayLifecycleObserver$1$onFolderStateChanged$1;-><init>(Lcom/android/systemui/sensorprivacy/SubscreenSensorUseUtil;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0xc8

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
