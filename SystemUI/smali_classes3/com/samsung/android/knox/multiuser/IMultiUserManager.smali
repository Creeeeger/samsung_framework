.class public interface abstract Lcom/samsung/android/knox/multiuser/IMultiUserManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/multiuser/IMultiUserManager$Stub;,
        Lcom/samsung/android/knox/multiuser/IMultiUserManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.multiuser.IMultiUserManager"


# virtual methods
.method public abstract allowMultipleUsers(Lcom/samsung/android/knox/ContextInfo;Z)I
.end method

.method public abstract allowUserCreation(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowUserRemoval(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract createUser(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
.end method

.method public abstract getUsers(Lcom/samsung/android/knox/ContextInfo;)[I
.end method

.method public abstract isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I
.end method

.method public abstract multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract removeUser(Lcom/samsung/android/knox/ContextInfo;I)Z
.end method
