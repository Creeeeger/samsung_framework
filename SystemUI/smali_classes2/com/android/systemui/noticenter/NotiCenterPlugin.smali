.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

.field public static final TAG:Ljava/lang/String;

.field public static centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public static clearableNotifications:Z

.field public static final handler:Landroid/os/Handler;

.field public static isNotiCenterConnected:Z

.field public static mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/NotilusCoordinator;

.field public static noclearAppList:Ljava/util/HashSet;

.field public static noclearEnabled:Z

.field public static final notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

.field public static final notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

.field public static packageManager:Landroid/content/pm/PackageManager;

.field public static plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

.field public static showNotilusOnKeyguard:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    .line 7
    .line 8
    const-string v1, "NotiStar"

    .line 9
    .line 10
    sput-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v2, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    .line 25
    .line 26
    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    .line 32
    .line 33
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 34
    .line 35
    .line 36
    const-string v0, "NotiCenterPlugin init"

    .line 37
    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNotiCenterPluginConnected()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p0, " NotiCenterPlugin: "

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->showNotilusOnKeyguard:Z

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "  showNotilusOnKeyguard : "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    .line 26
    .line 27
    const-string v0, " isNotiCenterConnected : "

    .line 28
    .line 29
    invoke-static {v0, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->getVersion()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    sget v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    .line 43
    .line 44
    if-lt p0, v0, :cond_1

    .line 45
    .line 46
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
