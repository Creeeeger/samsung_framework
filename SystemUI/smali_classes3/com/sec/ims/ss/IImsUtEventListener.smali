.class public interface abstract Lcom/sec/ims/ss/IImsUtEventListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/IImsUtEventListener$Stub;,
        Lcom/sec/ims/ss/IImsUtEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.ss.IImsUtEventListener"


# virtual methods
.method public abstract onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
.end method

.method public abstract onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
.end method

.method public abstract onUtConfigurationCallWaitingQueried(IZ)V
.end method

.method public abstract onUtConfigurationQueried(ILandroid/os/Bundle;)V
.end method

.method public abstract onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
.end method

.method public abstract onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
.end method

.method public abstract onUtConfigurationUpdated(I)V
.end method
