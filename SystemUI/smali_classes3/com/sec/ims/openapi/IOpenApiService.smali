.class public interface abstract Lcom/sec/ims/openapi/IOpenApiService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/IOpenApiService$Stub;,
        Lcom/sec/ims/openapi/IOpenApiService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.openapi.IOpenApiService"


# virtual methods
.method public abstract registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
.end method

.method public abstract sendSip(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
.end method

.method public abstract setFeatureTags([Ljava/lang/String;)V
.end method

.method public abstract setupMediaPath([Ljava/lang/String;)V
.end method

.method public abstract unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
.end method

.method public abstract unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
.end method
