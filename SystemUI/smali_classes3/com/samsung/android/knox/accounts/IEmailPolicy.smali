.class public interface abstract Lcom/samsung/android/knox/accounts/IEmailPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;,
        Lcom/samsung/android/knox/accounts/IEmailPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.accounts.IEmailPolicy"


# virtual methods
.method public abstract allowAccountAddition(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract allowPopImapEmail(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method

.method public abstract isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method

.method public abstract isPopImapEmailAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract setAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
.end method

.method public abstract setAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
.end method

.method public abstract setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method
