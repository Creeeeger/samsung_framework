.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;,
        Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;
    }
.end annotation


# static fields
.field private static final NO_VOLUME_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "[DSU]VolumeController "

.field public static final VOLUME_CHANGED:I = 0x1

.field public static final VOLUME_STAR_CHANGED:I = 0x2

.field public static final VOLUME_STAR_ENABLED:Ljava/lang/String; = "volume_star_enabled"

.field private static final mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVolumeController:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "audio"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/AudioManager;

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mVolumeController:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mCallbacks:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public notifyVisible(Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "visible "

    .line 2
    .line 3
    .line 4
    const-string v1, "[DSU]VolumeController "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mVolumeController:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;

    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$IVolumeControllerCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolumeController()V
    .locals 2

    .line 1
    const-string v0, "[DSU]VolumeController "

    .line 2
    .line 3
    :try_start_0
    const-string v1, "Volume controller set"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mAudioManager:Landroid/media/AudioManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;->mVolumeController:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string v1, "Unable to set the volume controller"

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
