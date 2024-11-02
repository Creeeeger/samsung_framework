.class public interface abstract Lcom/samsung/android/knox/IEnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;,
        Lcom/samsung/android/knox/IEnterpriseDeviceManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.IEnterpriseDeviceManager"


# virtual methods
.method public abstract activateDevicePermissions(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract addAuthorizedUid(II)Z
.end method

.method public abstract addPseudoAdminForParent(I)I
.end method

.method public abstract captureUmcLogs(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation
.end method

.method public abstract disableConstrainedState(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract enableConstrainedState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract enforceActiveAdminPermission(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation
.end method

.method public abstract enforceComponentCheck(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)V
.end method

.method public abstract enforceContainerOwnerShipPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation
.end method

.method public abstract enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation
.end method

.method public abstract enforceKnoxV2Permission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceKnoxV2VerifyCaller(I)Z
.end method

.method public abstract enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation
.end method

.method public abstract enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation
.end method

.method public abstract enforceWpcod(IZ)V
.end method

.method public abstract getActiveAdminComponent()Landroid/content/ComponentName;
.end method

.method public abstract getActiveAdmins(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveAdminsInfo(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdminContextIfCallerInCertWhiteList(Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation
.end method

.method public abstract getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method

.method public abstract getAdminUidForAuthorizedUid(I)I
.end method

.method public abstract getAuthorizedUidForAdminUid(I)I
.end method

.method public abstract getConstrainedState()I
.end method

.method public abstract getKPUPackageName()Ljava/lang/String;
.end method

.method public abstract getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
.end method

.method public abstract getUserStatus(I)I
.end method

.method public abstract hasAnyActiveAdmin()Z
.end method

.method public abstract hasDelegatedPermission(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public abstract hasGrantedPolicy(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isAdminActive(Landroid/content/ComponentName;)Z
.end method

.method public abstract isAdminRemovable(Landroid/content/ComponentName;)Z
.end method

.method public abstract isAdminRemovableInternal(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isCameraEnabledNative(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract isEmailAdminPkg(Ljava/lang/String;)Z
.end method

.method public abstract isKPUPlatformSigned(Ljava/lang/String;I)Z
.end method

.method public abstract isMdmAdminPresent()Z
.end method

.method public abstract isMdmAdminPresentAsUser(I)Z
.end method

.method public abstract isPossibleTransferOwenerShip(Landroid/content/ComponentName;)Z
.end method

.method public abstract isRestrictedByConstrainedState(I)Z
.end method

.method public abstract isUserSelectable(Ljava/lang/String;)Z
.end method

.method public abstract keychainMarkedReset(Lcom/samsung/android/knox/ContextInfo;)Z
.end method

.method public abstract migrateKnoxPoliciesForWpcod(I)Z
.end method

.method public abstract packageHasActiveAdmins(Ljava/lang/String;)Z
.end method

.method public abstract packageHasActiveAdminsAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract readUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
.end method

.method public abstract reconcileAdmin(Landroid/content/ComponentName;I)V
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;)V
.end method

.method public abstract removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
.end method

.method public abstract removeAuthorizedUid(II)Z
.end method

.method public abstract sendIntent(I)V
.end method

.method public abstract setActiveAdmin(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setActiveAdminSilent(Landroid/content/ComponentName;)V
.end method

.method public abstract setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z
.end method

.method public abstract setB2BMode(Z)I
.end method

.method public abstract setUserSelectable(ILjava/lang/String;Z)V
.end method

.method public abstract startDualDARServices()V
.end method

.method public abstract transferOwnerShip(Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
.end method

.method public abstract updateNotificationExemption(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
.end method

.method public abstract writeUmcEnrollmentData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
.end method
