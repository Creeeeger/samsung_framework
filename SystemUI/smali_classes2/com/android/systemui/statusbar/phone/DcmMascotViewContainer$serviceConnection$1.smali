.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p1, "onServiceConnected"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 16
    .line 17
    sget v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->$r8$clinit:I

    .line 18
    .line 19
    const-string v0, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    .line 20
    .line 21
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    instance-of v1, v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;

    .line 35
    .line 36
    invoke-direct {v0, p2}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    check-cast p1, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "onServiceConnected exception "

    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 2
    .line 3
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "onServiceDisconnected"

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
