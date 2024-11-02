.class public interface abstract Lcom/samsung/android/knox/container/IRCPPolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/container/IRCPPolicy$Stub;,
        Lcom/samsung/android/knox/container/IRCPPolicy$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.container.IRCPPolicy"


# virtual methods
.method public abstract allowMoveAppsToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowMoveFilesToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowMoveFilesToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowShareClipboardDataToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract allowShareClipboardDataToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
.end method

.method public abstract getAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getListFromAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPackagesFromNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMoveAppsToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isMoveFilesToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isMoveFilesToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isShareClipboardDataToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isShareClipboardDataToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract sendRCPPolicyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract sendRCPPolicyChangedBroadcast(I)V
.end method

.method public abstract sendRCPPolicyChangedBroadcastToGearManager(Ljava/lang/String;I)V
.end method

.method public abstract setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation
.end method

.method public abstract setNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method
