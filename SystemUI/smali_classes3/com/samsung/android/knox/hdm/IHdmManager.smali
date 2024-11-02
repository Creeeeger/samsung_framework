.class public interface abstract Lcom/samsung/android/knox/hdm/IHdmManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/hdm/IHdmManager$Stub;,
        Lcom/samsung/android/knox/hdm/IHdmManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.hdm.IHdmManager"


# virtual methods
.method public abstract getHdmId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isNFCBlockedByHDM(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isSwBlockEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract setHdmPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setHdmTaCmd(Lcom/samsung/android/knox/ContextInfo;I)I
.end method

.method public abstract setSwBlock(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract syncSwBlockFromBoot()I
.end method
