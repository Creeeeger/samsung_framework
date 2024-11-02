.class public interface abstract Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;,
        Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.net.apn.IApnSettingsPolicy"


# virtual methods
.method public abstract addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
.end method

.method public abstract deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method

.method public abstract getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/net/apn/ApnSettings;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
.end method

.method public abstract getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
.end method

.method public abstract setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method
