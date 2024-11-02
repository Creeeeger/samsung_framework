.class public final Lcom/samsung/android/knox/profile/ProfilePolicy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final KNOX_PROFILE_POLICY_UPDATE:Ljava/lang/String; = "com.samsung.android.knox.profilepolicy.intent.action.update"

.field public static final RESTRICTION_PROPERTY_CALENDAR_SHARE_TO_OWNER:Ljava/lang/String; = "restriction_property_calendar_share_to_owner"

.field public static final RESTRICTION_PROPERTY_MOVE_FILES_TO_OWNER:Ljava/lang/String; = "restriction_property_move_files_to_owner"

.field public static final RESTRICTION_PROPERTY_MOVE_FILES_TO_PROFILE:Ljava/lang/String; = "restriction_property_move_files_to_profile"

.field public static final RESTRICTION_PROPERTY_SCREENCAPTURE_SAVE_TO_OWNER:Ljava/lang/String; = "restriction_property_screencapture_save_to_owner"

.field public static final USER_ID_WORK_PROFILE:I = -0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

.field public mUserId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProfilePolicy"

    .line 2
    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    .line 4
    iget-object v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getService()Lcom/samsung/android/knox/profile/IProfilePolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 7
    iput v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProfilePolicy"

    .line 9
    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    .line 11
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getService()Lcom/samsung/android/knox/profile/IProfilePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 14
    iput p2, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    return-void
.end method


# virtual methods
.method public final getRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.getPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 15
    invoke-static {p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    const-string v0, "ProfilePolicy"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string p0, " Profile policy is not yet ready!!! false"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 18
    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/profile/IProfilePolicy;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public final getRestriction(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.getPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    const-string v1, "ProfilePolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, " Profile policy is not yet ready!!!"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/profile/IProfilePolicy;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public final getService()Lcom/samsung/android/knox/profile/IProfilePolicy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "profilepolicy"

    .line 6
    .line 7
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/samsung/android/knox/profile/IProfilePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/profile/IProfilePolicy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    .line 18
    .line 19
    return-object p0
.end method

.method public final setRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.setPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRestriction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const-string v2, "ProfilePolicy"

    .line 34
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    return v3

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez p0, :cond_1

    const-string p0, " Profile policy is not yet ready!!!"

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 38
    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/profile/IProfilePolicy;->setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method public final setRestriction(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ProfilePolicy.setPORestrictionPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRestriction "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const-string v2, "ProfilePolicy"

    .line 3
    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mUserId:I

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    return v3

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mProfilePolicy:Lcom/samsung/android/knox/profile/IProfilePolicy;

    if-nez v0, :cond_1

    const-string p0, " Profile policy is not yet ready!!!"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 7
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/profile/ProfilePolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/profile/IProfilePolicy;->setRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed talking with ProfilePolicy service: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p1, v2}, Lcom/samsung/android/knox/container/RCPPolicy$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return v3
.end method
