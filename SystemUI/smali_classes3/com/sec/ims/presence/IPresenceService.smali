.class public interface abstract Lcom/sec/ims/presence/IPresenceService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/IPresenceService$Stub;,
        Lcom/sec/ims/presence/IPresenceService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.presence.IPresenceService"


# virtual methods
.method public abstract getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;
.end method

.method public abstract getPresenceInfo(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
.end method

.method public abstract getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;
.end method
