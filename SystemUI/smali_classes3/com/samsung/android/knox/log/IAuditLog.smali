.class public interface abstract Lcom/samsung/android/knox/log/IAuditLog;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/log/IAuditLog$Stub;,
        Lcom/samsung/android/knox/log/IAuditLog$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.log.IAuditLog"


# virtual methods
.method public abstract AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
.end method

.method public abstract enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
.end method

.method public abstract getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I
.end method

.method public abstract isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isAuditServiceRunning()Z
.end method

.method public abstract setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
.end method

.method public abstract setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method

.method public abstract setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method
