.class public interface abstract Lcom/samsung/android/knox/kpm/IKnoxPushService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpm/IKnoxPushService$Stub;,
        Lcom/samsung/android/knox/kpm/IKnoxPushService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.kpm.IKnoxPushService"


# virtual methods
.method public abstract isRegistered(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V
.end method

.method public abstract registerDevice(ZLcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V
.end method

.method public abstract unRegisterDevice(Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback;)V
.end method
