.class public abstract Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final budsPluginPackageName:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public messenger:Landroid/os/Messenger;

.field public final serviceConnection:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->serviceConnection:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.accessory.hearablemgr.BUDS_CONTROLLER"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->budsPluginPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroid/content/ComponentName;

    .line 14
    .line 15
    const-string v3, "com.samsung.accessory.hearablemgr.core.budscontroller.BudsControllerQuickPanelService"

    .line 16
    .line 17
    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    iget-object v3, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->context:Landroid/content/Context;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester;->serviceConnection:Lcom/android/systemui/qs/bar/soundcraft/interfaces/wearable/requester/BudsPluginServiceRequester$serviceConnection$1;

    .line 27
    .line 28
    invoke-virtual {v3, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "budsPluginPackageName="

    .line 35
    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", isSuccess="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v0, "SoundCraft.wearable.BudsPluginServiceRequester"

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public abstract execute()V
.end method
