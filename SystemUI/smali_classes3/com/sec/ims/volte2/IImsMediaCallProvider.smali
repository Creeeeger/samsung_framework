.class public interface abstract Lcom/sec/ims/volte2/IImsMediaCallProvider;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;,
        Lcom/sec/ims/volte2/IImsMediaCallProvider$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsMediaCallProvider"


# virtual methods
.method public abstract changeCameraCapabilities(III)V
.end method

.method public abstract deinitSurface(Z)V
.end method

.method public abstract getCameraInfo(I)V
.end method

.method public abstract getDefaultCameraId()I
.end method

.method public abstract getMaxZoom()V
.end method

.method public abstract getZoom()V
.end method

.method public abstract registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
.end method

.method public abstract requestCallDataUsage()V
.end method

.method public abstract resetCameraId()V
.end method

.method public abstract sendGeneralEvent(IIILjava/lang/String;)V
.end method

.method public abstract sendLiveVideo(I)V
.end method

.method public abstract sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V
.end method

.method public abstract setCamera(Ljava/lang/String;)V
.end method

.method public abstract setCameraEffect(I)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract setDisplaySurface(ILandroid/view/Surface;)V
.end method

.method public abstract setPreviewSurface(ILandroid/view/Surface;)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract startCamera(Landroid/view/Surface;)V
.end method

.method public abstract startEmoji(Ljava/lang/String;)V
.end method

.method public abstract startRecord(Ljava/lang/String;)V
.end method

.method public abstract startRender(Z)V
.end method

.method public abstract startVideoRenderer(Landroid/view/Surface;)V
.end method

.method public abstract stopCamera()V
.end method

.method public abstract stopEmoji(I)V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract stopVideoRenderer()V
.end method

.method public abstract swipeVideoSurface()V
.end method

.method public abstract switchCamera()V
.end method

.method public abstract unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
.end method
