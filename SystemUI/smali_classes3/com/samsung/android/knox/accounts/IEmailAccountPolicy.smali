.class public interface abstract Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;,
        Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.accounts.IEmailAccountPolicy"


# virtual methods
.method public abstract addNewAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract addNewAccount_ex(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
.end method

.method public abstract addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J
.end method

.method public abstract deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method

.method public abstract getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;
.end method

.method public abstract getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public abstract getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;
.end method

.method public abstract getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
.end method

.method public abstract getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;
.end method

.method public abstract removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
.end method

.method public abstract setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z
.end method

.method public abstract setEmailAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
.end method

.method public abstract setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
.end method

.method public abstract setInComingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
.end method

.method public abstract setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setInComingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
.end method

.method public abstract setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract setOutGoingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
.end method

.method public abstract setOutGoingServerLogin(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J
.end method

.method public abstract setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setOutGoingServerPathPrefix(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z
.end method

.method public abstract setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
.end method

.method public abstract setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J
.end method

.method public abstract setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z
.end method

.method public abstract setSilentVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z
.end method

.method public abstract setSyncInterval(Lcom/samsung/android/knox/ContextInfo;IJ)Z
.end method
