.class public interface abstract Lcom/samsung/android/knox/cmfa/ICmfaService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/cmfa/ICmfaService$Stub;,
        Lcom/samsung/android/knox/cmfa/ICmfaService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.cmfa.ICmfaService"


# virtual methods
.method public abstract check(Lcom/samsung/android/knox/cmfa/IResultListener;)I
.end method

.method public abstract disable()I
.end method

.method public abstract enable(Ljava/lang/String;Z)I
.end method

.method public abstract getFactorsToSetup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/cmfa/AuthFactorType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValidActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/cmfa/AuthActionType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract notifyTestFactorScoreChange(Ljava/lang/String;JZ)I
.end method

.method public abstract registerListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I
.end method

.method public abstract start(Lcom/samsung/android/knox/cmfa/IResultListener;)I
.end method

.method public abstract stop(Lcom/samsung/android/knox/cmfa/IResultListener;)I
.end method

.method public abstract unregisterListener(Lcom/samsung/android/knox/cmfa/IEventListener;)I
.end method
