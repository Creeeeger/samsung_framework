.class public final synthetic Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/SecPanelPolicy;

.field public final synthetic f$1:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/SecPanelPolicy;Lcom/android/systemui/shade/SecPanelTouchProximityHelper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/SecPanelPolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/SecPanelPolicy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/shade/SecPanelTouchProximityHelper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v2, v1, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mIsSupportProximity:I

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-gez v2, :cond_1

    .line 15
    .line 16
    iget-object v2, v1, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string/jumbo v5, "sensor"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/hardware/SensorManager;

    .line 26
    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    move v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v2, v4

    .line 38
    :goto_0
    iput v2, v1, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mIsSupportProximity:I

    .line 39
    .line 40
    :cond_1
    iget v2, v1, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mIsSupportProximity:I

    .line 41
    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v3, v4

    .line 46
    :goto_1
    const-string v2, "init() isSupportProximity:"

    .line 47
    .line 48
    const-string v4, "SecPanelTouchProximityHelper"

    .line 49
    .line 50
    invoke-static {v2, v3, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    new-instance v2, Landroid/content/IntentFilter;

    .line 56
    .line 57
    const-string v3, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 58
    .line 59
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v1, Lcom/android/systemui/shade/SecPanelTouchProximityHelper;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 66
    .line 67
    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSecHideInformationMirroringController:Lcom/android/systemui/shade/SecHideInformationMirroringController;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/android/systemui/shade/SecHideInformationMirroringController;->init()V

    .line 73
    .line 74
    .line 75
    check-cast p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSecPanelDeviceProvisionedListener:Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelDeviceProvisionedListener;->onDeviceProvisionedChanged()V

    .line 83
    .line 84
    .line 85
    iget-object p0, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mSecPanelSmartMirroringManager:Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 101
    .line 102
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
