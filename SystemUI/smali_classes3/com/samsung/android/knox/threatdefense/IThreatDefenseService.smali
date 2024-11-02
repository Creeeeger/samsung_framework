.class public interface abstract Lcom/samsung/android/knox/threatdefense/IThreatDefenseService;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Stub;,
        Lcom/samsung/android/knox/threatdefense/IThreatDefenseService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.threatdefense.IThreatDefenseService"


# virtual methods
.method public abstract getProcessId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[I
.end method

.method public abstract hasPackageRules(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract procReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract processProcReader(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract setPackageRules(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
.end method
