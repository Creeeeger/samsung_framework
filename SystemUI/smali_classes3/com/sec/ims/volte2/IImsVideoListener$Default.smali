.class public Lcom/sec/ims/volte2/IImsVideoListener$Default;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/sec/ims/volte2/IImsVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onCallDownGraded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCameraEvent(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCameraFirstFrameReady(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCameraStopEvent(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCameraSwitchFailure(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCameraSwitchSuccess(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCaptureFailure(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCaptureSuccess(IZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onNoFarFrame(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRecordEvent(IZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoAttemped(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoAvailable(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoHeld(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoResumed(I)V
    .locals 0

    .line 1
    return-void
.end method
