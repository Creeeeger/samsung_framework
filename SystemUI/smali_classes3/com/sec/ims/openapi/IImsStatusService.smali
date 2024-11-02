.class public interface abstract Lcom/sec/ims/openapi/IImsStatusService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/IImsStatusService$Stub;,
        Lcom/sec/ims/openapi/IImsStatusService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.openapi.IImsStatusService"


# virtual methods
.method public abstract getCallCount()[I
.end method

.method public abstract registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method
