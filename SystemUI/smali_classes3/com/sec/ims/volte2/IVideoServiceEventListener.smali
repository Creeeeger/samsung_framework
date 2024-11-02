.class public interface abstract Lcom/sec/ims/volte2/IVideoServiceEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;,
        Lcom/sec/ims/volte2/IVideoServiceEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IVideoServiceEventListener"


# virtual methods
.method public abstract changeCameraCapabilities(III)V
.end method

.method public abstract getSession()Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract onCameraState(II)V
.end method

.method public abstract onChangeCallDataUsage(IJ)V
.end method

.method public abstract onChangePeerDimension(III)V
.end method

.method public abstract onEmojiState(II)V
.end method

.method public abstract onRecordState(II)V
.end method

.method public abstract onVideoOrientChanged(I)V
.end method

.method public abstract onVideoQualityChanged(II)V
.end method

.method public abstract onVideoState(II)V
.end method

.method public abstract receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract setVideoPause(IZ)V
.end method
