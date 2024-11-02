.class public interface abstract Lcom/samsung/android/knox/dex/IDexPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dex/IDexPolicy$Stub;,
        Lcom/samsung/android/knox/dex/IDexPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.dex.IDexPolicy"


# virtual methods
.method public abstract addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
.end method

.method public abstract allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVirtualMacAddress()Ljava/lang/String;
.end method

.method public abstract isDexActivated()Z
.end method

.method public abstract isDexDisabled()Z
.end method

.method public abstract isEthernetOnlyEnforced()Z
.end method

.method public abstract isScreenTimeoutChangeAllowed()Z
.end method

.method public abstract isVirtualMacAddressEnforced()Z
.end method

.method public abstract removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
.end method

.method public abstract setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method
