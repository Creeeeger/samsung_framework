.class public interface abstract Lcom/sec/ims/volte2/IImsVideoListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsVideoListener$Stub;,
        Lcom/sec/ims/volte2/IImsVideoListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsVideoListener"


# virtual methods
.method public abstract onCallDownGraded(I)V
.end method

.method public abstract onCameraEvent(IZ)V
.end method

.method public abstract onCameraFirstFrameReady(I)V
.end method

.method public abstract onCameraStopEvent(IZ)V
.end method

.method public abstract onCameraSwitchFailure(II)V
.end method

.method public abstract onCameraSwitchSuccess(II)V
.end method

.method public abstract onCaptureFailure(IZ)V
.end method

.method public abstract onCaptureSuccess(IZLjava/lang/String;)V
.end method

.method public abstract onNoFarFrame(I)V
.end method

.method public abstract onRecordEvent(IZZ)V
.end method

.method public abstract onVideoAttemped(I)V
.end method

.method public abstract onVideoAvailable(I)V
.end method

.method public abstract onVideoHeld(I)V
.end method

.method public abstract onVideoResumed(I)V
.end method
