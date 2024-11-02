.class public interface abstract Lcom/sec/ims/options/ICapabilityService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/ICapabilityService$Stub;,
        Lcom/sec/ims/options/ICapabilityService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.options.ICapabilityService"


# virtual methods
.method public abstract addFakeCapabilityInfo(Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract deRegisterService(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;III)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation
.end method

.method public abstract getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;
.end method

.method public abstract isOwnInfoPublished()Z
.end method

.method public abstract registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;
.end method

.method public abstract registerListenerWithToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;Ljava/lang/String;I)V
.end method

.method public abstract registerService(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUserActivity(ZI)V
.end method

.method public abstract unregisterListener(Ljava/lang/String;I)V
.end method
