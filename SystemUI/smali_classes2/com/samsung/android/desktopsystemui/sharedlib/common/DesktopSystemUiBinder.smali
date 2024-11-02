.class public Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;,
        Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;
    }
.end annotation


# static fields
.field private static final SYSTEMUI_DESKTOP_PACKAGE:Ljava/lang/String; = "com.sec.android.dexsystemui"

.field private static final SYSTEMUI_DESKTOP_SERVICE:Ljava/lang/String; = "com.sec.android.dexsystemui.services.desktopbar.DesktopBarService"

.field private static final TAG:Ljava/lang/String; = "DesktopSystemUIBinder"


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

.field private mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mWallpaperService:Landroid/app/IWallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string/jumbo p1, "wallpaper"

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mWallpaperService:Landroid/app/IWallpaperManager;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    :try_start_0
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->isDesktopMode()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->start()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private isDesktopMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p0, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-ne p0, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method private start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->start(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V

    return-void
.end method


# virtual methods
.method public isDesktopBarConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public notifyPrivacyItemsChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "notifyPrivacyItemsChanged - visible = "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->notifyPrivacyItemsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    .line 6
    .line 7
    const-string v1, "onDismiss() keyguard"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onDismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyguardWallpaperChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    .line 6
    .line 7
    const-string v1, "onKeyguardWallpaperChanged()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onKeyguardWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public onLockout(ZLandroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "onLockout() lockout="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setLockout(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public onShow(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    .line 6
    .line 7
    const-string v1, "onShow() keyguard."

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onShow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    return-void
.end method

.method public onUpdate(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "onUpdate() type="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onUpdate(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAirplaneMode(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setAirplaneMode(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public setBtTetherIcon(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setBtTetherIcon(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    .line 6
    .line 7
    const-string/jumbo v1, "setConnectedDeviceListForGroup"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public setMPTCPIcon(ZIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMPTCPIcon(ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public setMobileIcon(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMobileIcon(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public setOccluded(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setOccluded() occluded="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v1, "DesktopSystemUIBinder"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public setSubs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    const-string v0, "DesktopSystemUIBinder"

    .line 6
    .line 7
    const-string/jumbo v1, "setSubs"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 14
    .line 15
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setSubs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public setWifiIcon(ZII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setWifiIcon(ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method public start(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V
    .locals 5

    const-string v0, "DesktopSystemUIBinder"

    const-string/jumbo v1, "start"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.dexsystemui"

    const-string v3, "com.sec.android.dexsystemui.services.desktopbar.DesktopBarService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    const v3, 0x2000001

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 5
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mIDesktopCallback:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const-string/jumbo v0, "stop"

    .line 2
    .line 3
    .line 4
    const-string v1, "DesktopSystemUIBinder"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-string v0, "mDesktopBar is stopped"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mDesktopBar:Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_1
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "SystemUIDesktop unbindService Exception: "

    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
