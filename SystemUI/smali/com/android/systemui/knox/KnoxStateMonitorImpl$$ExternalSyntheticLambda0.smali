.class public final synthetic Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->initKnoxClass()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.sec.knox.keyguard.show"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mBroadCastReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;

    .line 35
    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 40
    .line 41
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "com.samsung.ucs.ucsservice.stateblocked"

    .line 45
    .line 46
    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUCMReceiver:Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;

    .line 52
    .line 53
    const-string v6, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x2

    .line 57
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
