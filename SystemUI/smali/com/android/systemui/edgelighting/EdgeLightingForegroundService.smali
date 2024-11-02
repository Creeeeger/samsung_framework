.class public Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;
.super Landroid/app/Service;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public CHANNEL_TAG:Ljava/lang/String;

.field public mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "EdgeLightingForegroundService"

    .line 5
    .line 6
    const-string/jumbo v1, "stopForeground service"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    const-string/jumbo v0, "notification"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    .line 10
    const-string v1, "edge_lighting_chnnel_id"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const v2, 0x7f1304fc

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->CHANNEL_TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Landroid/app/NotificationChannel;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->CHANNEL_TAG:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v2, v1, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "Edge lighting"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "group_key_lighting"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v2, 0x7f080783

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 63
    .line 64
    .line 65
    const-string v1, "EdgeLightingForegroundService"

    .line 66
    .line 67
    const-string/jumbo v2, "startForeground service"

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x1000

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 83
    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 93
    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    .line 95
    .line 96
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;->mScreenStateReceiver:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;

    .line 107
    .line 108
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    return p0
.end method
