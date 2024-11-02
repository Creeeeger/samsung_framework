.class public final Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field public final synthetic val$connStartTime:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->val$connStartTime:J

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->val$connStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "onServiceConnected : Service connected. Elapsed = "

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "ms"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "[ScrCap]_RemoteScrollCaptureInterface"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 35
    .line 36
    sget v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub;->$r8$clinit:I

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v0, "com.samsung.android.app.scrollcapture.lib.IScrollCaptureService"

    .line 43
    .line 44
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    instance-of v1, v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    move-object p2, v0

    .line 55
    check-cast p2, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;

    .line 59
    .line 60
    invoke-direct {v0, p2}, Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 61
    .line 62
    .line 63
    move-object p2, v0

    .line 64
    :goto_0
    iput-object p2, p1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mConnectionListener:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    .line 69
    .line 70
    if-eqz p0, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->onConnectionResult(Z)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "[ScrCap]_RemoteScrollCaptureInterface"

    .line 2
    .line 3
    const-string/jumbo v0, "onServiceDisconnected : Service disconnected"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$1;->this$0:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->mService:Lcom/samsung/android/app/scrollcapture/lib/IScrollCaptureService;

    .line 13
    .line 14
    return-void
.end method
