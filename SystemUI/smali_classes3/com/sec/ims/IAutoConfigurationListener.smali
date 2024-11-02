.class public interface abstract Lcom/sec/ims/IAutoConfigurationListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IAutoConfigurationListener$Stub;,
        Lcom/sec/ims/IAutoConfigurationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.IAutoConfigurationListener"


# virtual methods
.method public abstract onAutoConfigurationCompleted(Z)V
.end method

.method public abstract onIidTokenNeeded()V
.end method

.method public abstract onMsisdnNumberNeeded()V
.end method

.method public abstract onVerificationCodeNeeded()V
.end method
