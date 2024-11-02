.class public final Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->localMediaManagerFactory:Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;->context:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iget-object p1, p1, Lcom/android/systemui/media/controls/pipeline/LocalMediaManagerFactory;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/android/settingslib/media/LocalMediaManager;

    .line 24
    .line 25
    invoke-direct {v3, v1, p1, v0, v2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, -0x4e6e32e7

    .line 12
    .line 13
    .line 14
    if-eq v0, v1, :cond_4

    .line 15
    .line 16
    const p2, -0x18ba89be

    .line 17
    .line 18
    .line 19
    if-eq v0, p2, :cond_2

    .line 20
    .line 21
    const p2, 0x1691e02

    .line 22
    .line 23
    .line 24
    if-eq v0, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p2, "com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_START"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string p1, "MediaDeviceManager"

    .line 37
    .line 38
    const-string p2, "ACTION_MEDIA_ROUTER_SCAN_START"

    .line 39
    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string p2, "com.samsung.android.mdx.quickboard.action.ACTION_MEDIA_ROUTER_SCAN_STOP"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string p1, "MediaDeviceManager"

    .line 59
    .line 60
    const-string p2, "ACTION_MEDIA_ROUTER_SCAN_STOP"

    .line 61
    .line 62
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1;->localMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 81
    .line 82
    const/4 v0, -0x1

    .line 83
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/4 p2, 0x3

    .line 88
    if-ne p1, p2, :cond_6

    .line 89
    .line 90
    const-string p1, "MediaDeviceManager"

    .line 91
    .line 92
    const-string p2, "SEM_STREAM_DEVICES_CHANGED_ACTION"

    .line 93
    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 100
    .line 101
    monitor-enter p1

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->entries:Ljava/util/Map;

    .line 103
    .line 104
    sget-object p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    .line 105
    .line 106
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    monitor-exit p1

    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit p1

    .line 117
    throw p0

    .line 118
    :cond_6
    :goto_0
    return-void
.end method
