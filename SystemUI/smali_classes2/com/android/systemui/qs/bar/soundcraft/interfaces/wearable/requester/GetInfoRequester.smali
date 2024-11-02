.class public final Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;
.super Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function1;

.field public final receiver:Landroid/os/Messenger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;->callback:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Messenger;

    .line 7
    .line 8
    new-instance p2, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester$receiver$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;->receiver:Landroid/os/Messenger;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "execute : budsPluginPackageName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "SoundCraft.wearable.GetInfoRequester"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    .line 16
    .line 17
    const-string/jumbo v0, "requestGetBudsInfo"

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->messenger:Landroid/os/Messenger;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/GetInfoRequester;->receiver:Landroid/os/Messenger;

    .line 28
    .line 29
    const/16 v1, 0x3e9

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v2, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    sget v0, Lkotlin/Result;->$r8$clinit:I

    .line 44
    .line 45
    new-instance v0, Lkotlin/Result$Failure;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-void
.end method
