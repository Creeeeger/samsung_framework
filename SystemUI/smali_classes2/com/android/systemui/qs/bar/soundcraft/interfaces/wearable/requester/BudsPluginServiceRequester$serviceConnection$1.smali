.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "SoundCraft.wearable.BudsPluginServiceRequester"

    .line 5
    .line 6
    const-string v0, "onBindingDied"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    .line 15
    .line 16
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "SoundCraft.wearable.BudsPluginServiceRequester"

    .line 2
    .line 3
    const-string v0, "onServiceConnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    .line 9
    .line 10
    new-instance v0, Landroid/os/Messenger;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->execute()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    .line 23
    .line 24
    :try_start_0
    sget p2, Lkotlin/Result;->$r8$clinit:I

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    sget p1, Lkotlin/Result;->$r8$clinit:I

    .line 36
    .line 37
    new-instance p1, Lkotlin/Result$Failure;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "SoundCraft.wearable.BudsPluginServiceRequester"

    .line 2
    .line 3
    const-string v0, "onServiceDisconnected"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;->this$0:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    .line 12
    .line 13
    return-void
.end method
