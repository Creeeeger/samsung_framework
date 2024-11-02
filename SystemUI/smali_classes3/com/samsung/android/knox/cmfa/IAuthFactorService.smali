.class public interface abstract Lcom/samsung/android/knox/cmfa/IAuthFactorService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/IAuthFactorService$Stub;,
        Lcom/samsung/android/knox/cmfa/IAuthFactorService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.cmfa.IAuthFactorService"


# virtual methods
.method public abstract getTrustScore()J
.end method

.method public abstract getType()Lcom/samsung/android/knox/cmfa/AuthFactorType;
.end method

.method public abstract init(Lcom/samsung/android/knox/cmfa/IResultListener;)I
.end method

.method public abstract isStarted()Z
.end method

.method public abstract start(Ljava/util/Map;Lcom/samsung/android/knox/cmfa/IAuthFactorListener;)I
.end method

.method public abstract stop()I
.end method
