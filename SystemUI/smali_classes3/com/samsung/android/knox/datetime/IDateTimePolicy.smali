.class public interface abstract Lcom/samsung/android/knox/datetime/IDateTimePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;,
        Lcom/samsung/android/knox/datetime/IDateTimePolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.datetime.IDateTimePolicy"


# virtual methods
.method public abstract getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract getDateFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getDateTime(Lcom/samsung/android/knox/ContextInfo;)J
.end method

.method public abstract getDaylightSavingTime(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract getNtpInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/datetime/NtpInfo;
.end method

.method public abstract getNtpServer()Ljava/lang/String;
.end method

.method public abstract getNtpTimeout()J
.end method

.method public abstract getTimeFormat(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract getTimeZone(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract setAutomaticTime(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setDateFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract setDateTime(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method

.method public abstract setDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract setNtpInfo(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/datetime/NtpInfo;)Z
.end method

.method public abstract setTimeFormat(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract setTimeZone(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method
