.class public interface abstract Lcom/samsung/android/knox/restriction/ISimPinPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/restriction/ISimPinPolicy$Stub;,
        Lcom/samsung/android/knox/restriction/ISimPinPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.restriction.ISimPinPolicy"


# virtual methods
.method public abstract changeSimPinCode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract isSimLocked(I)Z
.end method

.method public abstract setSubIdLockEnabled(IZLjava/lang/String;)I
.end method

.method public abstract supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z
.end method
