.class public interface abstract Lcom/samsung/android/knox/restriction/IRoamingPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/IRoamingPolicy$Stub;,
        Lcom/samsung/android/knox/restriction/IRoamingPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.restriction.IRoamingPolicy"


# virtual methods
.method public abstract isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract setRoamingData(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setRoamingPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setRoamingSync(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setRoamingVoiceCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method
