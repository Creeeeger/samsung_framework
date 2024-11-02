.class public interface abstract Lcom/samsung/android/knox/ddar/IDualDARPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;,
        Lcom/samsung/android/knox/ddar/IDualDARPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ddar.IDualDARPolicy"


# virtual methods
.method public abstract clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract clearResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract getClientInfo(I)Ljava/lang/String;
.end method

.method public abstract getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
.end method

.method public abstract getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract isActivePasswordSufficientForInner(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isResetPasswordTokenActiveForInner(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract resetPasswordWithTokenForInner(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z
.end method

.method public abstract setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
.end method

.method public abstract setPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method

.method public abstract setResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;[B)Z
.end method
