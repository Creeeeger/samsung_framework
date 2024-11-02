.class public interface abstract Lcom/sec/ims/IRttEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IRttEventListener$Stub;,
        Lcom/sec/ims/IRttEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IRttEventListener"


# virtual methods
.method public abstract onRttEvent(Ljava/lang/String;)V
.end method

.method public abstract onRttEventBySession(ILjava/lang/String;)V
.end method

.method public abstract onSendRttSessionModifyRequest(IZ)V
.end method

.method public abstract onSendRttSessionModifyResponse(IZZ)V
.end method
