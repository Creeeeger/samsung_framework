.class Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;
.super Landroid/media/IVolumeController$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VC"
.end annotation


# instance fields
.field public final mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    .line 3
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    const-string p0, "[DSU]VolumeController "

    .line 2
    .line 3
    const-string v0, "dismiss volume panel"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public displayCsdWarning(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public displayVolumeLimiterToast()V
    .locals 0

    .line 1
    return-void
.end method

.method public masterMuteChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setA11yMode(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setA11yMode"

    .line 2
    .line 3
    .line 4
    const-string v1, "[DSU]VolumeController "

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x64

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x65

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public volumeChanged(II)V
    .locals 2

    .line 1
    const-string v0, "[DSU]VolumeController "

    .line 2
    .line 3
    const-string v1, "Volume changed in VC"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$VC;->mWorker:Lcom/samsung/android/desktopsystemui/sharedlib/system/VolumeController$W;

    .line 15
    .line 16
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
