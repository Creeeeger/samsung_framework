.class public Lcom/sec/ims/volte2/IVideoServiceEventListener$Default;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/sec/ims/volte2/IVideoServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVideoServiceEventListener;
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

.method public changeCameraCapabilities(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public getSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onCameraState(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onChangeCallDataUsage(IJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public onChangePeerDimension(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onEmojiState(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRecordState(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoOrientChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoQualityChanged(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onVideoState(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 1
    return-void
.end method

.method public receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVideoPause(IZ)V
    .locals 0

    .line 1
    return-void
.end method
