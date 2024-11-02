.class public interface abstract Lcom/sec/ims/ss/IUtService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/IUtService$Stub;,
        Lcom/sec/ims/ss/IUtService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.ss.IUtService"


# virtual methods
.method public abstract deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
.end method

.method public abstract isUtEnabled(I)Z
.end method

.method public abstract queryCLIP(I)I
.end method

.method public abstract queryCLIR(I)I
.end method

.method public abstract queryCOLP(I)I
.end method

.method public abstract queryCOLR(I)I
.end method

.method public abstract queryCallBarring(III)I
.end method

.method public abstract queryCallForward(IILjava/lang/String;)I
.end method

.method public abstract queryCallWaiting(I)I
.end method

.method public abstract registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
.end method

.method public abstract updateCLIP(IZ)I
.end method

.method public abstract updateCLIR(II)I
.end method

.method public abstract updateCOLP(IZ)I
.end method

.method public abstract updateCOLR(II)I
.end method

.method public abstract updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract updateCallForward(IIILjava/lang/String;II)I
.end method

.method public abstract updateCallWaiting(IZI)I
.end method
