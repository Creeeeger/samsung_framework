.class public interface abstract Lcom/samsung/android/knox/kpcc/IKPCCManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/kpcc/IKPCCManager$Stub;,
        Lcom/samsung/android/knox/kpcc/IKPCCManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.kpcc.IKPCCManager"


# virtual methods
.method public abstract getDrxValue(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getPackagesAllowedOnRestrictedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
.end method

.method public abstract getTelephonyDrxValue()I
.end method

.method public abstract setDrxValue(Lcom/samsung/android/knox/ContextInfo;I)I
.end method

.method public abstract setPackageOnRestrictedNetworks(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I
.end method
