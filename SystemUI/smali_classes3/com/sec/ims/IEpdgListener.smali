.class public interface abstract Lcom/sec/ims/IEpdgListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IEpdgListener$Stub;,
        Lcom/sec/ims/IEpdgListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IEpdgListener"


# virtual methods
.method public abstract onEpdgAvailable(III)V
.end method

.method public abstract onEpdgDeregister(I)V
.end method

.method public abstract onEpdgHandoverEnableChanged(IZ)V
.end method

.method public abstract onEpdgHandoverResult(IIILjava/lang/String;)V
.end method

.method public abstract onEpdgIpsecConnection(ILjava/lang/String;II)V
.end method

.method public abstract onEpdgIpsecDisconnection(ILjava/lang/String;)V
.end method

.method public abstract onEpdgRegister(IZ)V
.end method

.method public abstract onEpdgReleaseCall(I)V
.end method

.method public abstract onEpdgShowPopup(II)V
.end method
